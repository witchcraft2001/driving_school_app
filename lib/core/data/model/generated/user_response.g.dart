// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) => UserResponse(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
      status: json['status'] as String,
      role: json['role'] as String,
      avatar: json['avatar'] as String,
      transmission: json['transmission'] as String,
    );

Map<String, dynamic> _$UserResponseToJson(UserResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'status': instance.status,
      'role': instance.role,
      'avatar': instance.avatar,
      'transmission': instance.transmission,
    };
