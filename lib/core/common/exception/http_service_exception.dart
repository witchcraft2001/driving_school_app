// Project imports:
import 'app_exception.dart';

sealed class HttpServiceException extends AppException {
  const HttpServiceException({required super.type});
}

class UnauthorizedHttpException extends HttpServiceException {
  const UnauthorizedHttpException({
    super.type = AppExceptionType.unauthorized,
  });

  @override
  bool get stringify => false;

  @override
  List<Object?> get props => [];
}

class ConnectionErrorException extends HttpServiceException {
  const ConnectionErrorException({
    super.type = AppExceptionType.connection,
  });

  @override
  bool get stringify => false;

  @override
  List<Object?> get props => [];
}

class ServerErrorHttpException extends HttpServiceException {
  const ServerErrorHttpException({
    super.type = AppExceptionType.externalServer,
  });

  @override
  bool get stringify => false;

  @override
  List<Object?> get props => [type];
}

class SomeHttpException extends HttpServiceException {
  final int? statusCode;

  const SomeHttpException({
    super.type = AppExceptionType.httpSome,
    this.statusCode,
  });

  @override
  List<Object?> get props => [type, statusCode];
}

class MethodHttpException extends HttpServiceException {
  final String message;

  const MethodHttpException({
    required this.message,
    super.type = AppExceptionType.httpMethod,
  });

  @override
  List<Object?> get props => [type, message];
}

class DioException extends HttpServiceException {
  final int? statusCode;

  const DioException({
    super.type = AppExceptionType.httpSome,
    this.statusCode,
  });

  @override
  List<Object?> get props => [type, statusCode];
}
