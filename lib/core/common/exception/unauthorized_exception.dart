// Project imports:
import 'app_exception.dart';

class UnauthorizedException extends AppException {
  final String message;
  final Object? reason;

  const UnauthorizedException(
    this.message, {
    super.type = AppExceptionType.unauthorized,
    this.reason,
  });

  @override
  List<Object?> get props => [message, type, reason];
}
