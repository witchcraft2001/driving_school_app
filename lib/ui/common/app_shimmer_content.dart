// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:planny/ui/common/theme/theme_provider.dart';
import 'theme/app_decoration.dart';

class AppShimmerContent extends StatelessWidget {
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final BorderRadius? borderRadius;
  final double? height;
  final double? width;
  final Color? color;

  const AppShimmerContent({
    super.key,
    this.margin,
    this.padding,
    this.borderRadius,
    this.height,
    this.width,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.theme;

    return Container(
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? AppDecoration.brBase,
        color: color ?? colors.color4,
      ),
      height: height,
      width: width,
    );
  }
}
