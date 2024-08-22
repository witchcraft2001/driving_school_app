// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:planny/ui/common/theme/theme_provider.dart';
import 'theme/app_colors.dart';
import 'theme/app_decoration.dart';
import 'theme/app_style.dart';

class AppButton extends StatelessWidget {
  final String? title;
  final bool enabled;
  final VoidCallback? onPressed;
  final AppButtonStyle style;
  final AppButtonType type;
  final AppButtonSize size;
  final bool fillMaxWidth;
  final Widget? leading;
  final Widget? tiled;
  final EdgeInsets? padding;

  const AppButton({
    super.key,
    this.title,
    this.enabled = true,
    this.onPressed,
    this.style = AppButtonStyle.base,
    this.type = AppButtonType.primary,
    this.size = AppButtonSize.normal,
    this.leading,
    this.tiled,
    this.fillMaxWidth = true,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(0.0),
      child: TextButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(_getEdgeSize())),
          backgroundColor: MaterialStateProperty.all<Color>(_getBackgroundColor(context)),
          foregroundColor: MaterialStateProperty.all<Color>(_getForegroundColor(context)),
          overlayColor: MaterialStateProperty.all<Color>(_getOverlayColor()),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(_getRadius()),
              side: BorderSide(color: _getBorderColor(context)),
            ),
          ),
        ),
        onPressed: _getCallback(),
        child: _getChild(context),
      ),
    );
  }

  Color _getOverlayColor() {
    if (enabled) {
      switch (style) {
        case AppButtonStyle.base:
        case AppButtonStyle.semiround:
          return Colors.white12;
        case AppButtonStyle.outline:
        case AppButtonStyle.outlineSemiround:
        case AppButtonStyle.none:
          return AppColors.primary;
      }
    }

    return Colors.transparent;
  }

  VoidCallback? _getCallback() {
    if (enabled) {
      return onPressed;
    }

    return null;
  }

  TextStyle _getTextStyle(BuildContext context) {
    TextStyle textStyle;
    switch (size) {
      case AppButtonSize.small:
        textStyle = _getTextStyleSmall(context);
        break;
      case AppButtonSize.normal:
        textStyle = _getTextStyleNormal(context);
        break;
      case AppButtonSize.large:
        textStyle = _getTextStyleLarge(context);
        break;
    }

    return textStyle;
  }

  TextStyle _getTextStyleSmall(BuildContext context) {
    TextStyle textStyle;
    switch (style) {
      case AppButtonStyle.base:
        textStyle = appFontSemi(14.0, _getForegroundColor(context));
        break;
      case AppButtonStyle.semiround:
        textStyle = appFontRegular(12.0, _getForegroundColor(context));
        break;
      case AppButtonStyle.outline:
        textStyle = appFontSemi(14.0, _getForegroundColor(context));
        break;
      case AppButtonStyle.outlineSemiround:
        textStyle = appFontRegular(12.0, _getForegroundColor(context));
        break;
      case AppButtonStyle.none:
        textStyle = appFontRegular(12.0, _getForegroundColor(context));
        break;
    }

    return textStyle;
  }

  TextStyle _getTextStyleNormal(BuildContext context) {
    return appFontMedium(16.0, _getForegroundColor(context));
  }

  TextStyle _getTextStyleLarge(BuildContext context) {
    return appFontMedium(16.0, _getForegroundColor(context));
  }

  double _getEdgeSize() {
    double edge;
    switch (size) {
      case AppButtonSize.small:
        edge = 10;
        break;
      case AppButtonSize.normal:
        edge = 15;
        break;
      case AppButtonSize.large:
        edge = 20;
        break;
    }

    return edge;
  }

  double _getRadius() {
    if (style == AppButtonStyle.semiround || style == AppButtonStyle.outlineSemiround || style == AppButtonStyle.none) {
      return AppDecoration.brBtnOtherValue;
    }

    if (size == AppButtonSize.small) return AppDecoration.brBtnSmallValue;

    return AppDecoration.brBtnBaseValue;
  }

  Color _getForegroundColor(BuildContext context) {
    if (!enabled) {
      return context.theme.whiteOnColor;
    }
    Color color;
    if (style == AppButtonStyle.outline || style == AppButtonStyle.outlineSemiround) {
      switch (type) {
        case AppButtonType.primary:
          color = context.theme.primary;
          break;
        case AppButtonType.secondary:
          color = context.theme.bordersAndIconsIcons;
          break;
        case AppButtonType.danger:
          color = context.theme.danger;
          break;
        case AppButtonType.info:
          color = context.theme.info;
          break;
        case AppButtonType.warning:
          color = context.theme.warning;
          break;
        case AppButtonType.success:
          color = context.theme.success;
          break;
      }

      return color;
    } else {
      color = context.theme.whiteOnColor;

      return color;
    }
  }

  Color _getBackgroundColor(BuildContext context) {
    if (!enabled) {
      return context.theme.bordersAndIconsIcons;
    }
    Color color;
    if (style == AppButtonStyle.outline || style == AppButtonStyle.outlineSemiround || style == AppButtonStyle.none) {
      color = Colors.transparent;
    } else {
      switch (type) {
        case AppButtonType.primary:
          color = context.theme.primary;
          break;
        case AppButtonType.secondary:
          color = context.theme.second;
          break;
        case AppButtonType.danger:
          color = context.theme.danger;
          break;
        case AppButtonType.info:
          color = context.theme.info;
          break;
        case AppButtonType.warning:
          color = context.theme.warning;
          break;
        case AppButtonType.success:
          color = context.theme.predictors7;
          break;
      }
    }

    return color;
  }

  Color _getBorderColor(BuildContext context) {
    Color color;
    if (enabled && (style == AppButtonStyle.outline || style == AppButtonStyle.outlineSemiround)) {
      switch (type) {
        case AppButtonType.primary:
          color = context.theme.primary;
          break;
        case AppButtonType.secondary:
          color = context.theme.lightGrey;
          break;
        case AppButtonType.danger:
          color = context.theme.danger;
          break;
        case AppButtonType.info:
          color = context.theme.info;
          break;
        case AppButtonType.warning:
          color = context.theme.warning;
          break;
        case AppButtonType.success:
          color = context.theme.predictors7;
          break;
      }
    } else {
      color = Colors.transparent;
    }

    return color;
  }

  Widget _getChild(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        leading != null ? leading! : Container(),
        _getTitleText(context),
        tiled != null ? tiled! : Container(),
      ],
    );
  }

  Widget _getTitleText(BuildContext context) {
    if (title != null) {
      return Padding(
        padding: EdgeInsets.only(
          left: leading != null ? 12.0 : 0.0,
          right: tiled != null ? 12.0 : 0.0,
        ),
        child: Text(
          title != null ? title! : "",
          style: _getTextStyle(context),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          textAlign: TextAlign.center,
        ),
      );
    }

    return Container();
  }
}

enum AppButtonStyle { base, semiround, outline, outlineSemiround, none }

enum AppButtonSize { small, normal, large }

enum AppButtonType { primary, secondary, danger, info, warning, success }
