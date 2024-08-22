// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../pagination_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginationResponse _$PaginationResponseFromJson(Map<String, dynamic> json) =>
    PaginationResponse(
      (json['per_page'] as num?)?.toInt(),
      (json['total'] as num?)?.toInt(),
      (json['current_page'] as num?)?.toInt(),
      (json['last_page'] as num?)?.toInt(),
    );
