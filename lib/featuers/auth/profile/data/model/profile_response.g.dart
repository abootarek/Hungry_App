// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileResponse _$ProfileResponseFromJson(Map<String, dynamic> json) =>
    ProfileResponse(
      message: json['message'] as String,
      code: (json['code'] as num).toInt(),
      data: json['data'] == null
          ? null
          : DataUser.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProfileResponseToJson(ProfileResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'data': instance.data,
    };

DataUser _$DataUserFromJson(Map<String, dynamic> json) => DataUser(
      name: json['name'] as String?,
      email: json['email'] as String?,
      image: json['image'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$DataUserToJson(DataUser instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'image': instance.image,
      'address': instance.address,
    };
