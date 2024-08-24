// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../school_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SchoolResponse _$SchoolResponseFromJson(Map<String, dynamic> json) =>
    SchoolResponse(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      domain: json['domain'] as String,
      url: json['url'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$SchoolResponseToJson(SchoolResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'domain': instance.domain,
      'url': instance.url,
      'status': instance.status,
    };
