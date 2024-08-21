// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../school_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SchoolResponse _$SchoolResponseFromJson(Map<String, dynamic> json) =>
    SchoolResponse(
      (json['id'] as num).toInt(),
      json['name'] as String,
      json['domain'] as String,
      json['url'] as String,
      json['status'] as String,
    );

Map<String, dynamic> _$SchoolResponseToJson(SchoolResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'domain': instance.domain,
      'url': instance.url,
      'status': instance.status,
    };
