import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  final int? code;
  final String? message;
  final LoginData data;

  LoginResponse({
    this.code,
    this.message,
    required this.data,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@JsonSerializable()
class LoginData {
  final String? token;
  final String? name;
  final String? email;
  final String? image;
  LoginData({
    this.token,
    this.name,
    this.email,
    this.image,
  });

  factory LoginData.fromJson(Map<String, dynamic> json) =>
      _$LoginDataFromJson(json);
}
