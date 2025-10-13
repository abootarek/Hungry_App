// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_response.g.dart';

@JsonSerializable()
class HomeResponse {
  final int? code;
  final String? message;
  final List<HomeData>? data;
  HomeResponse({
    this.code,
    this.message,
    this.data,
  });

  factory HomeResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseFromJson(json);
}

@JsonSerializable()
class HomeData {
  final int? id;
  final String? name;
  final String? image;
  final String? description;
  final String? rating;
  final String? price;
  @JsonKey(name: 'is_favorite')
  final bool? isFavorite;

  HomeData({
    this.id,
    this.name,
    this.image,
    this.description,
    this.rating,
    this.price,
    this.isFavorite,
  });

  factory HomeData.fromJson(Map<String, dynamic> json) =>
      _$HomeDataFromJson(json);
}
