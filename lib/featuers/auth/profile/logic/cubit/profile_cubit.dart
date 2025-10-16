// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hungry/core/cache/constans_cached.dart';
import 'package:hungry/core/cache/sherd_prefrance.dart';

import 'package:hungry/featuers/auth/profile/data/repo/profile_repo.dart';
import 'package:hungry/featuers/auth/profile/logic/cubit/profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileRepo profileRepo;
  ProfileCubit(
    this.profileRepo,
  ) : super(ProfileState.initial());
  void getProfile() async {
    final token =
        await SharedPrefHelper.getSecuredString(key: SharedPrefKeys.token);

    emit(ProfileState.profileLoading());

    final result = await profileRepo.getProfile(token: 'Bearer $token');
    if (isClosed) return;

    result.when(
      success: (data) => emit(ProfileState.profileSuccess(data)),
      failure: (error) => emit(ProfileState.profileError(error)),
    );
  }
}
