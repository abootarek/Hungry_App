import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_errer_medol.g.dart';
@JsonSerializable()
class ApiErrorModel {
  final int? code;
  final String message;
  ApiErrorModel({
    this.code,
    required this.message,
  });

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);
}
