// Package imports:
import 'package:injectable/injectable.dart';

@lazySingleton
class Constants {
  String getAdminApiBaseUrl() => 'admin.planny.nl';
}
