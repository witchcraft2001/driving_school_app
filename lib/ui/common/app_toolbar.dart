// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:planny/ui/common/theme/app_sizes.dart';
import 'package:planny/ui/common/theme/theme_provider.dart';

class AppToolbar extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isCloseButtonVisible;
  final double? elevation;
  final Color? background;

  const AppToolbar(
      {super.key,
      required this.text,
      this.onPressed,
      this.isCloseButtonVisible = false,
      this.elevation = 0.0,
      this.background});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0.0),
      color: background ?? context.theme.backgroundPopupWidget,
      borderOnForeground: false,
      elevation: elevation,
      shadowColor: const Color(0xFF29304D1F),
      shape: const BeveledRectangleBorder(borderRadius: BorderRadius.zero),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [_getBackButton(context), _getCloseButton(context)],
        ),
      ),
    );
  }

  Widget _getBackButton(BuildContext context) {
    return GestureDetector(
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/images/ic_chevron_left.svg',
            color: context.theme.textMain,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Text(
              text,
              maxLines: 1,
              style: ThemeProvider.labelLarge.copyWith(color: context.theme.textMain),
            ),
          )
        ],
      ),
      onTap: () => {if (onPressed != null) onPressed!()},
    );
  }

  Widget _getCloseButton(BuildContext context) {
    if (isCloseButtonVisible) {
      return GestureDetector(
        child: SvgPicture.asset('assets/images/ic_close.svg'),
        onTap: () => {if (onPressed != null) onPressed!()},
      );
    } else {
      return Container();
    }
  }

  @override
  Size get preferredSize => const Size.fromHeight(AppSizes.toolbarHeight);
}
