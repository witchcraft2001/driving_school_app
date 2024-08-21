// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:

class AppRoutes {
  AppRoutes._();

  static const selectSchool = '/auth/schools/select';
  static const login = '/auth/login';

  static Map<String, WidgetBuilder> routes = {
    // AppRoutes.selectSchool: (_) => const AuthorizeScreen(),
  };

  static Route<dynamic>? onGenerateRoute(RouteSettings setting) {
    return null;
  }
}
