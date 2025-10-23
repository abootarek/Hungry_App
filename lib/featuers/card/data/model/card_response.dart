// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_response.g.dart';

@JsonSerializable()
class CardResponse {
  final int? code;
  final String? message;
  final DataProduct? data;

  CardResponse({
    this.code,
    this.message,
    this.data,
  });

  factory CardResponse.fromJson(Map<String, dynamic> json) =>
      _$CardResponseFromJson(json);
}

@JsonSerializable()
class DataProduct {
  final int? id;
  @JsonKey(name: 'total_price')
  final String? totalPrice;
  final List<Product>? items;

  DataProduct({
    this.id,
    this.totalPrice,
    this.items,
  });

  factory DataProduct.fromJson(Map<String, dynamic> json) =>
      _$DataProductFromJson(json);
}

@JsonSerializable()
class Product {
  @JsonKey(name: 'item_id')
  final int? itemId;
  @JsonKey(name: 'product_id')
  final int? productId;
  final String? name;
  final String? image;
  final int? quantity;
  final String? price;
  final dynamic spicy;

  final List<Topping>? toppings;
  @JsonKey(name: 'side_options')
  final List<SideOption>? sideOptions;

  Product({
    this.itemId,
    this.productId,
    this.name,
    this.image,
    this.quantity,
    this.price,
    this.spicy,
    this.toppings,
    this.sideOptions,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@JsonSerializable()
class Topping {
  final int? id;
  final String? name;
  final String? image;

  Topping({
    this.id,
    this.name,
    this.image,
  });

  factory Topping.fromJson(Map<String, dynamic> json) =>
      _$ToppingFromJson(json);
}

@JsonSerializable()
class SideOption {
  final int? id;
  final String? name;
  final String? image;

  SideOption({
    this.id,
    this.name,
    this.image,
  });

  factory SideOption.fromJson(Map<String, dynamic> json) =>
      _$SideOptionFromJson(json);
}
