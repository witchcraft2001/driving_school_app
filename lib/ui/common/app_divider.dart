// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:planny/ui/common/theme/theme_provider.dart';

class AppDivider extends StatelessWidget {
  final EdgeInsets? padding;

  const AppDivider({super.key, this.padding});

  @override
  Widget build(BuildContext context) {
    return padding != null
        ? Padding(
            padding: padding!,
            child: const _TranspoDividerInternal(),
          )
        : const _TranspoDividerInternal();
  }
}

class _TranspoDividerInternal extends StatelessWidget {
  const _TranspoDividerInternal();

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 1.0,
      thickness: 1.0,
      color: context.theme.divider,
    );
  }
}
