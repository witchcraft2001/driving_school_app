// Project imports:
import 'app_exception.dart';

class AppFormatException extends AppException {
  const AppFormatException({
    super.type = AppExceptionType.format,
  });

  @override
  List<Object?> get props => [type];
}
