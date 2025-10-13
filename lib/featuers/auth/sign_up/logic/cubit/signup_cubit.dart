// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:hungry/featuers/auth/sign_up/data/model/sign_up_request.dart';
import 'package:hungry/featuers/auth/sign_up/data/repo/sign_up_repo.dart';
import 'package:hungry/featuers/auth/sign_up/logic/cubit/signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignUpRepo signUpRepo;
  SignupCubit(this.signUpRepo) : super(SignupState.initial());

  var formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  void emitSignUp() async {
    if (!formKey.currentState!.validate()) return;

    emit(SignupState.loading());

    final response = await signUpRepo.signUp(
      SignUpRequest(
        email: emailController.text,
        password: passwordController.text,
        name: nameController.text,
        phone: phoneController.text,
      ),
    );

    response.when(
      success: (signUpData) {
        emit(SignupState.success(signUpData));
      },
      failure: (error) {
        emit(SignupState.failure(error));
      },
    );
  }

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    phoneController.dispose();
  }
}
