// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../vehicle_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleResponse _$VehicleResponseFromJson(Map<String, dynamic> json) =>
    VehicleResponse(
      id: (json['id'] as num).toInt(),
      licensePlate: json['license_plate'] as String,
      mediaUrl: json['media_url'] as String,
    );

Map<String, dynamic> _$VehicleResponseToJson(VehicleResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'license_plate': instance.licensePlate,
      'media_url': instance.mediaUrl,
    };
