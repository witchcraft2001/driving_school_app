// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../instructor_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InstructorResponse _$InstructorResponseFromJson(Map<String, dynamic> json) =>
    InstructorResponse(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      avatar: json['media_url'] as String,
    );

Map<String, dynamic> _$InstructorResponseToJson(InstructorResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'media_url': instance.avatar,
    };
