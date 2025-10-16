// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hungry/core/cache/constans_cached.dart';
import 'package:hungry/core/cache/sherd_prefrance.dart';
import 'package:hungry/core/helper/extensions.dart';
import 'package:hungry/core/routing/routing.dart';
import 'package:hungry/featuers/auth/sign_in/data/model/login_request.dart';
import 'package:hungry/featuers/auth/sign_in/data/model/login_response.dart';
import 'package:hungry/featuers/auth/sign_in/data/repo/login_repo.dart';
import 'package:hungry/featuers/auth/sign_in/logic/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;

  LoginCubit(this.loginRepo) : super(LoginState.initial());

  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordConfirmController = TextEditingController();

  /// تسجيل الدخول
  Future<void> emitLogin(BuildContext context) async {
    if (!formKey.currentState!.validate()) return;

    emit(LoginState.loading());

    final response = await loginRepo.login(
      LoginRequest(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      ),
    );

    response.when(
      success: (loginData) async {
        await _saveUserData(loginData);

        emit(LoginState.success(loginData));

        if (context.mounted) {
          context.pushNamed(Routes.layoutScreen);
        }
      },
      failure: (error) {
        emit(LoginState.failure(error));
      },
    );
  }

  /// ✅ حفظ بيانات المستخدم بعد تسجيل الدخول
  Future<void> _saveUserData(LoginResponse loginResponse) async {
    try {
      // ✅ نحفظ التوكن بشكل آمن باستخدام SecureStorage
      await SharedPrefHelper.saveSecuredString(
        key: SharedPrefKeys.token,
        value: loginResponse.data.token ?? '',
      );

      // 🧠 باقي البيانات نحفظها في SharedPreferences عادي
      await SharedPrefHelper.saveData(
        key: SharedPrefKeys.name,
        value: loginResponse.data.name,
      );

      await SharedPrefHelper.saveData(
        key: SharedPrefKeys.email,
        value: loginResponse.data.email,
      );

      await SharedPrefHelper.saveData(
        key: SharedPrefKeys.image,
        value: loginResponse.data.image ?? '',
      );

      await SharedPrefHelper.saveData(
        key: SharedPrefKeys.isLoggedInUser,
        value: true,
      );

      log('✅ User data saved successfully (with secure token).');
    } catch (e) {
      log('❌ Error saving user data: $e');
    }
  }
}
