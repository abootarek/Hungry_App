// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpResponse _$SignUpResponseFromJson(Map<String, dynamic> json) =>
    SignUpResponse(
      message: json['message'] as String,
      code: json['code'] as String,
      data: json['data'] == null
          ? null
          : DataSignUp.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignUpResponseToJson(SignUpResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'data': instance.data,
    };

DataSignUp _$DataSignUpFromJson(Map<String, dynamic> json) => DataSignUp(
      name: json['name'] as String?,
      email: json['email'] as String?,
      token: json['token'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$DataSignUpToJson(DataSignUp instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'token': instance.token,
      'image': instance.image,
    };
