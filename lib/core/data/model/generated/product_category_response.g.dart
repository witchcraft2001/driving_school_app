// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../product_category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductCategoryResponse _$ProductCategoryResponseFromJson(
        Map<String, dynamic> json) =>
    ProductCategoryResponse(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      iconUrl: json['icon_url'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$ProductCategoryResponseToJson(
        ProductCategoryResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon_url': instance.iconUrl,
      'description': instance.description,
    };
