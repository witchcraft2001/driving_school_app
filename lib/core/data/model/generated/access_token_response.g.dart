// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../access_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccessTokenResponse _$AccessTokenResponseFromJson(Map<String, dynamic> json) =>
    AccessTokenResponse(
      json['access_token'] as String,
      json['refresh_token'] as String,
    );

Map<String, dynamic> _$AccessTokenResponseToJson(
        AccessTokenResponse instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };
