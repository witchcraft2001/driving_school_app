// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../lesson_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LessonResponse _$LessonResponseFromJson(Map<String, dynamic> json) =>
    LessonResponse(
      id: (json['id'] as num).toInt(),
      uuid: json['uuid'] as String,
      date: DateTime.parse(json['date'] as String),
      start: DateTime.parse(json['start'] as String),
      end: DateTime.parse(json['end'] as String),
      startTime: json['start_time'] as String,
      endTime: json['end_time'] as String,
      totalTime: json['total_time'] as String,
      allDay: json['all_day'] as bool,
      icon: json['icon'] as String,
      productCategoryName: json['product_category_name'] as String,
      productCategoryId: (json['product_category_id'] as num).toInt(),
      description: json['description'] as String?,
      note: json['note'] as String?,
      address: json['address'] as String?,
      type: json['type'] as String,
      calendar: (json['calendar'] as num).toInt(),
      backgroundColor: json['background_color'] as String,
      borderColor: json['border_color'] as String,
      instructor: InstructorResponse.fromJson(
          json['instructor'] as Map<String, dynamic>),
      vehicle: json['vehicle'] == null
          ? null
          : VehicleResponse.fromJson(json['vehicle'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LessonResponseToJson(LessonResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'date': instance.date.toIso8601String(),
      'start': instance.start.toIso8601String(),
      'end': instance.end.toIso8601String(),
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'total_time': instance.totalTime,
      'all_day': instance.allDay,
      'icon': instance.icon,
      'product_category_name': instance.productCategoryName,
      'product_category_id': instance.productCategoryId,
      'description': instance.description,
      'note': instance.note,
      'address': instance.address,
      'type': instance.type,
      'calendar': instance.calendar,
      'background_color': instance.backgroundColor,
      'border_color': instance.borderColor,
      'instructor': instance.instructor.toJson(),
      'vehicle': instance.vehicle?.toJson(),
    };
