// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:planny/core/common/app_spaces.dart';
import 'package:planny/ui/common/theme/theme_provider.dart';

class AppLabel extends StatelessWidget {
  final String text;
  final EdgeInsets? padding;

  const AppLabel({super.key, required this.text, this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? AppSpaces.pb8,
      child: Text(
        text,
        style: ThemeProvider.labelLarge.copyWith(color: context.theme.textSignatures),
      ),
    );
  }
}
