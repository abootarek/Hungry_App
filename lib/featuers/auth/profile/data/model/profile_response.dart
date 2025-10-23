// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_response.g.dart';

@JsonSerializable()
class ProfileResponse {
  final String? message;
  final int? code;
  DataUser? data;

  ProfileResponse({
    this.message,
    this.code,
    this.data,
  });

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);
}

@JsonSerializable()
class DataUser {
  final String? name;
  final String? email;
  final String? image;
  final String? address;

  DataUser({
    this.name,
    this.email,
    this.image,
    this.address,
  });

  factory DataUser.fromJson(Map<String, dynamic> json) =>
      _$DataUserFromJson(json);
}
