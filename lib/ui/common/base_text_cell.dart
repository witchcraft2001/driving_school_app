// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:planny/core/common/app_spaces.dart';
import 'package:planny/ui/common/theme/theme_provider.dart';

class BaseTextCell extends StatelessWidget {
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

  const BaseTextCell({
    super.key,
    this.icon,
    this.titleText,
    this.subtitleText,
    this.middleText,
    this.onClick,
    this.foreground,
    this.title,
    this.subtitle,
    this.titleStyle,
    this.subtitleStyle,
    this.middleStyle,
    this.isMultilineTitle = true,
  });

  Widget _getBody(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          child: Row(
            children: [
              icon != null
                  ? SizedBox(
                      width: 20.0,
                      height: 20.0,
                      child: icon,
                    )
                  : Container(),
              Expanded(
                child: Padding(
                  padding: icon != null ? AppSpaces.ph8 : AppSpaces.pr8,
                  child: title ??
                      Text(
                        titleText ?? '',
                        softWrap: true,
                        maxLines: isMultilineTitle ? 2 : 1,
                        overflow: TextOverflow.ellipsis,
                        style: titleStyle ??
                            Theme.of(context).textTheme.bodyMedium?.copyWith(color: foreground),
                      ),
                ),
              ),
            ],
          ),
        ),
        _getSubtitleText(context, subtitle, subtitleText, middleText),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return onClick != null
        ? GestureDetector(onTap: onClick, child: _getBody(context))
        : _getBody(context);
  }

  Widget _getMiddleText(BuildContext context, String? middleText) {
    return middleText != null
        ? Text(
            middleText,
            style:
                middleStyle ?? ThemeProvider.caption.copyWith(color: context.theme.textSignatures),
          )
        : Container();
  }

  Widget _getSubtitleText(
      BuildContext context, Widget? subtitle, String? subtitleText, String? middleText) {
    return subtitleText != null || subtitle != null || middleText != null
        ? Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _getMiddleText(context, middleText),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: subtitle ??
                    Text(
                      subtitleText ?? "",
                      textAlign: TextAlign.end,
                      style: subtitleStyle ??
                          ThemeProvider.bodyLarge.copyWith(
                            color: foreground ?? context.theme.textSignatures,
                          ),
                    ),
              ),
            ],
          )
        : Container();
  }
}
