// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_response.g.dart';

@JsonSerializable()
class SignUpResponse {
  final String message;
  final String code;
  DataSignUp? data;
  SignUpResponse({
    required this.message,
    required this.code,
    this.data,
  });

  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);
}

@JsonSerializable()
class DataSignUp {
  final String? name;
  final String? email;
  final String? token;
  final String? image;
  final String? phone;
  DataSignUp({
    this.name,
    this.email,
    this.token,
    this.image,
    this.phone,
  });

  factory DataSignUp.fromJson(Map<String, dynamic> json) =>
      _$DataSignUpFromJson(json);
}
