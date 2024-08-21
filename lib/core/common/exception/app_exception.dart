// Package imports:
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

abstract class AppException extends Equatable implements Exception {
  final AppExceptionType type;

  const AppException({required this.type});

  @override
  bool get stringify => true;
}

enum AppExceptionType {
  unauthorized,
  connection,
  externalServer,
  httpMethod,
  httpSome,
  repoUnknownField,
  repoLoading,
  repoChatNotFound,
  repoDbInsert,
  repoDbDelete,
  dioCancel,
  dioConnectTimeout,
  dioReceiveTimeout,
  dioResponse,
  dioSendTimeout,
  dioOther,
  format,
  other,
  repoLikesYourself,
}

Map<DioErrorType, AppExceptionType> exceptionDio = {
  DioErrorType.cancel: AppExceptionType.dioCancel,
  DioErrorType.connectTimeout: AppExceptionType.dioConnectTimeout,
  DioErrorType.receiveTimeout: AppExceptionType.dioReceiveTimeout,
  DioErrorType.response: AppExceptionType.dioResponse,
  DioErrorType.sendTimeout: AppExceptionType.dioSendTimeout,
  DioErrorType.other: AppExceptionType.dioOther,
};
