// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:planny/ui/features/home/home_screen.dart';
import 'package:planny/ui/features/login/login_screen.dart';
import 'package:planny/ui/features/schools/schools_screen.dart';

// Project imports:

class AppRoutes {
  AppRoutes._();

  static const selectSchool = '/auth/schools/select';
  static const login = '/auth/login';
  static const home = '/home';

  static Map<String, WidgetBuilder> routes = {
    AppRoutes.selectSchool: (_) => SchoolsScreen(),
    AppRoutes.login: (_) => LoginScreen(),
    AppRoutes.home: (_) => HomeScreen(),
  };

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    return null;
  }

  static Future<Object?> pushLogin(BuildContext context) async {
    return await Navigator.of(context).pushNamed(login);
  }

  static Future<Object?> navigateToHome(BuildContext context) async {
    return await Navigator.of(context).pushNamedAndRemoveUntil(home, (e) => false);
  }
}
