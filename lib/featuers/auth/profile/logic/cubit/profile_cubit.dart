import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:hungry/core/cache/constans_cached.dart';
import 'package:hungry/core/cache/sherd_prefrance.dart';
import 'package:hungry/featuers/auth/profile/data/model/profile_request.dart';
import 'package:hungry/featuers/auth/profile/data/repo/profile_repo.dart';
import 'package:hungry/featuers/auth/profile/logic/cubit/profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepo profileRepo;
  final formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final addressController = TextEditingController();

  String? imagePath; // ✅ الصورة الحالية (ملف أو لينك)
  final picker = ImagePicker();

  ProfileCubit(this.profileRepo) : super(const ProfileState.initial());

  /// =========================
  /// 🔹 Pick Image
  /// =========================
  Future<void> pickImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      imagePath = pickedFile.path;
      emit(ProfileState.imagePickedSuccess());
    }
  }

  /// =========================
  /// 🔹 Get Profile
  /// =========================
  Future<void> getProfile() async {
    emit(const ProfileState.profileLoading());
    final token = await SharedPrefHelper.getSecuredString(
      key: SharedPrefKeys.token,
    );

    final result = await profileRepo.getProfile(token: 'Bearer $token');

    if (isClosed) return;

    result.when(
      success: (data) async {
        nameController.text = data.data?.name ?? '';
        emailController.text = data.data?.email ?? '';
        addressController.text = data.data?.address ?? '';
        imagePath = data.data?.image ?? ''; // ✅ خزن لينك الصورة

        await Future.wait([
          SharedPrefHelper.saveData(
            key: SharedPrefKeys.name,
            value: nameController.text,
          ),
          SharedPrefHelper.saveData(
            key: SharedPrefKeys.email,
            value: emailController.text,
          ),
          SharedPrefHelper.saveData(
            key: SharedPrefKeys.address,
            value: addressController.text,
          ),
        ]);

        emit(ProfileState.profileSuccess(data));
      },
      failure: (error) => emit(ProfileState.profileError(error)),
    );
  }

  /// =========================
  /// 🔹 Update Profile
  /// =========================
  Future<void> updateProfile() async {
    if (!formKey.currentState!.validate()) return;
    emit(const ProfileState.updateProfileLoading());

    final token = await SharedPrefHelper.getSecuredString(
      key: SharedPrefKeys.token,
    );

    File? imageFile;
    if (imagePath != null && !imagePath!.startsWith('http')) {
      imageFile = File(imagePath!);
    }

    final result = await profileRepo.updateProfile(
      token: 'Bearer $token',
      profileRequest: ProfileRequest(
        name: nameController.text,
        email: emailController.text,
        address: addressController.text,
      ),
      imageFile: imageFile,
    );

    if (isClosed) return;

    result.when(
      success: (response) async {
        nameController.text = response.data?.name ?? '';
        addressController.text = response.data?.address ?? '';
        imagePath = response.data?.image ?? imagePath;

        await Future.wait([
          SharedPrefHelper.saveData(
            key: SharedPrefKeys.name,
            value: nameController.text,
          ),
          SharedPrefHelper.saveData(
            key: SharedPrefKeys.address,
            value: addressController.text,
          ),
        ]);

        emit(ProfileState.updateProfileSuccess(response));
      },
      failure: (error) => emit(ProfileState.updateProfileError(error)),
    );
  }

  @override
  Future<void> close() {
    nameController.dispose();
    emailController.dispose();
    addressController.dispose();
    return super.close();
  }
}
