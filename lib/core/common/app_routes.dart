// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:planny/ui/features/home/home_screen.dart';
import 'package:planny/ui/features/login/login_screen.dart';
import 'package:planny/ui/features/profile/profile_screen.dart';
import 'package:planny/ui/features/schools/schools_screen.dart';

class AppRoutes {
  AppRoutes._();

  static const selectSchool = '/auth/schools/select';
  static const login = '/auth/login';
  static const home = '/home';
  static const profile = '/profile';

  static Map<String, WidgetBuilder> routes = {
    AppRoutes.selectSchool: (_) => SchoolsScreen(),
    AppRoutes.login: (_) => LoginScreen(),
    AppRoutes.home: (_) => HomeScreen(),
    AppRoutes.profile: (_) => ProfileScreen(),
  };

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    return null;
  }

  static Future<Object?> replaceToSelectSchool(BuildContext context) async {
    return await Navigator.of(context).pushNamedAndRemoveUntil(selectSchool, (e) => false);
  }

  static Future<Object?> replaceToLogin(BuildContext context) async {
    return await Navigator.of(context).pushReplacementNamed(login);
  }

  static Future<Object?> pushLogin(BuildContext context) async {
    return await Navigator.of(context).pushNamed(login);
  }

  static Future<Object?> pushProfile(BuildContext context) async {
    return await Navigator.of(context).pushNamed(profile);
  }

  static Future<Object?> replaceToHome(BuildContext context) async {
    return await Navigator.of(context).pushNamedAndRemoveUntil(home, (e) => false);
  }
}
