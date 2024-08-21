// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_localizations/flutter_localizations.dart';

// Project imports:
import 'package:planny/core/common/app_routes.dart';
import 'package:planny/ui/common/theme/theme_provider.dart';
import 'package:planny/ui/features/schools/schools_screen.dart';
import 'generated/l10n.dart';
import 'ui/features/splash/splash_screen.dart';

class PlannyApp extends StatelessWidget {
  const PlannyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Planny',
      darkTheme: ThemeProvider.darkThemeData(),
      theme: ThemeProvider.lightThemeData(),
      home: SchoolsScreen(),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      routes: AppRoutes.routes,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
