// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardResponse _$CardResponseFromJson(Map<String, dynamic> json) => CardResponse(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : DataProduct.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CardResponseToJson(CardResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

DataProduct _$DataProductFromJson(Map<String, dynamic> json) => DataProduct(
      id: (json['id'] as num?)?.toInt(),
      totalPrice: json['total_price'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataProductToJson(DataProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'total_price': instance.totalPrice,
      'items': instance.items,
    };

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      itemId: (json['item_id'] as num?)?.toInt(),
      productId: (json['product_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      price: json['price'] as String?,
      spicy: json['spicy'],
      toppings: (json['toppings'] as List<dynamic>?)
          ?.map((e) => Topping.fromJson(e as Map<String, dynamic>))
          .toList(),
      sideOptions: (json['side_options'] as List<dynamic>?)
          ?.map((e) => SideOption.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'item_id': instance.itemId,
      'product_id': instance.productId,
      'name': instance.name,
      'image': instance.image,
      'quantity': instance.quantity,
      'price': instance.price,
      'spicy': instance.spicy,
      'toppings': instance.toppings,
      'side_options': instance.sideOptions,
    };

Topping _$ToppingFromJson(Map<String, dynamic> json) => Topping(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$ToppingToJson(Topping instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };

SideOption _$SideOptionFromJson(Map<String, dynamic> json) => SideOption(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$SideOptionToJson(SideOption instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };
