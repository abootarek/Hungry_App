// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_request.g.dart';

@JsonSerializable()
class ProfileRequest {
  final String? email;
  final String? name;
  final String? phone;
  final String? address;
  final String? image;
  ProfileRequest({
    this.email,
    this.name,
    this.phone,
    this.address,
    this.image,
  });
  Map<String, dynamic> toJson() => _$ProfileRequestToJson(this);
}
