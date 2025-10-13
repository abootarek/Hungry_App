// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_request.g.dart';

@JsonSerializable()
class SignUpRequest {
  final String name;
  final String email;
  final String password;
  final String? phone;

  SignUpRequest({
    required this.name,
    required this.email,
    required this.password,
    this.phone,
  });
  Map<String, dynamic> toJson() => _$SignUpRequestToJson(this);
}
