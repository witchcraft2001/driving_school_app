// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:planny/core/common/app_spaces.dart';
import 'package:planny/ui/common/svg_icon_button.dart';
import 'package:planny/ui/common/theme/theme_provider.dart';
import '../../core/common/app_assets.dart';

class PlannyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double elevation;
  final String? title;
  final Widget? titleWidget;
  final List<Widget>? actions;
  final double? toolbarHeight;
  final EdgeInsets? titlePadding;
  final VoidCallback? onBackPressed;
  final Widget? backgroundWidget;

  const PlannyAppBar({
    super.key,
    this.elevation = 0.0,
    this.title,
    this.titleWidget,
    this.actions,
    this.toolbarHeight,
    this.onBackPressed,
    this.titlePadding,
    this.backgroundWidget,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: elevation,
      shadowColor: context.theme.shadow,
      toolbarHeight: preferredSize.height,
      centerTitle: true,
      backgroundColor: elevation == 0.0 ? context.theme.backgroundWidgetHeader : Colors.white,
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      title: Stack(
        alignment: Alignment.centerLeft,
        children: [
          backgroundWidget != null ? backgroundWidget! : Container(),
          _getTitle(context),
          _getLeadingButton(context),
          _getActions(context),
        ],
      ),
    );
  }

  Widget _getTitle(BuildContext context) {
    return Padding(
      padding: titlePadding ?? AppSpaces.ph48,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: titleWidget ??
                Text(
                  title ?? '',
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: ThemeProvider.bodyMedium.copyWith(
                    color: context.theme.textMain,
                    fontSize: 20.0,
                  ),
                ),
          ),
        ],
      ),
    );
  }

  Widget _getLeadingButton(BuildContext context) {
    return onBackPressed != null
        ? Padding(
            padding: AppSpaces.pl8,
            child: SvgIconButton(
              asset: AppAssets.iconChevronLeft,
              color: context.theme.primary,
              onClick: onBackPressed!,
            ),
          )
        : Container();
  }

  Widget _getActions(BuildContext context) {
    return actions != null
        ? Padding(
            padding: AppSpaces.pr8,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: actions ?? <Widget>[],
            ),
          )
        : Container();
  }

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight ?? 64.0);
}
