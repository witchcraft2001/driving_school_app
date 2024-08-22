// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../student_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudentResponse _$StudentResponseFromJson(Map<String, dynamic> json) =>
    StudentResponse(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      avatar: json['media_url'] as String,
      transmission: json['transmission'] as String,
    );

Map<String, dynamic> _$StudentResponseToJson(StudentResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'media_url': instance.avatar,
      'transmission': instance.transmission,
    };
