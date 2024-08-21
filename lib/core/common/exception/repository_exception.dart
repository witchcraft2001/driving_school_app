// Project imports:
import 'app_exception.dart';

class RepositoryException extends AppException {
  final String? message;
  final int? statusCode;

  const RepositoryException({
    super.type = AppExceptionType.repoLoading,
    this.message,
    this.statusCode,
  });

  @override
  List<Object?> get props => [message, type, statusCode];
}
