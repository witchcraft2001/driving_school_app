// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:shimmer/shimmer.dart';

// Project imports:
import 'package:planny/ui/common/theme/theme_provider.dart';

class AppShimmer extends StatelessWidget {
  final Widget child;
  final Color? baseColor, highlightColor;

  const AppShimmer({
    super.key,
    required this.child,
    this.baseColor,
    this.highlightColor,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.theme;

    return Shimmer.fromColors(
      baseColor: baseColor ?? colors.color4,
      highlightColor: highlightColor ?? colors.color1,
      child: child,
    );
  }
}
