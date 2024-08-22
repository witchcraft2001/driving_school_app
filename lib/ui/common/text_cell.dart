// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:planny/core/common/app_spaces.dart';
import 'base_text_cell.dart';

class TextCell extends StatelessWidget {
  final Widget? icon;
  final String? titleText;
  final Widget? title;
  final String? subtitleText;
  final Widget? subtitle;
  final String? middleText;
  final VoidCallback? onClick;
  final Color? foreground;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final TextStyle? middleStyle;
  final bool isMultilineTitle;
  final EdgeInsets? padding;

  const TextCell({
    super.key,
    this.icon,
    this.titleText,
    this.title,
    this.subtitleText,
    this.subtitle,
    this.middleText,
    this.onClick,
    this.foreground,
    this.titleStyle,
    this.subtitleStyle,
    this.middleStyle,
    this.isMultilineTitle = true,
    this.padding,
  });

  Widget _getBody() {
    return Padding(
      padding: padding ?? AppSpaces.ph16v16,
      child: BaseTextCell(
        icon: icon,
        titleText: titleText,
        title: title,
        subtitleText: subtitleText,
        subtitle: subtitle,
        middleText: middleText,
        foreground: foreground,
        titleStyle: titleStyle,
        subtitleStyle: subtitleStyle,
        middleStyle: middleStyle,
        isMultilineTitle: isMultilineTitle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return onClick != null
        ? GestureDetector(behavior: HitTestBehavior.opaque, onTap: onClick, child: _getBody())
        : _getBody();
  }
}
