part of '../profile_screen.dart';

class _ProfileContent extends StatelessWidget {
  final UserEntity user;
  final Function() onLogoutClicked;

  const _ProfileContent({required this.user, required this.onLogoutClicked});

  @override
  Widget build(BuildContext context) {
    final colorFilter = ColorFilter.mode(context.theme.textMain, BlendMode.srcIn);

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: AppSpaces.p16,
          child: Row(
            children: [
              NetworkImageWithShimmer(
                url: user.avatar,
                width: AppSizes.avatarSizeXL,
                height: AppSizes.avatarSizeXL,
                borderRadius: AppDecoration.brAvatarL,
              ),
              const SizedBox(
                width: AppSpaces.sp16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.name,
                    style: ThemeProvider.bodyMedium.copyWith(color: context.theme.textMain),
                  ),
                  Text(
                    user.email,
                    style: ThemeProvider.labelLarge.copyWith(color: context.theme.textSignatures),
                  ),
                ],
              )
            ],
          ),
        ),
        CellColumn(
          withSeparator: true,
          children: [
            TextCell(
              titleText: S.current.editProfile,
              icon: SvgPicture.asset(
                AppAssets.iconEdit,
                colorFilter: colorFilter,
              ),
              subtitle: Icon(
                Icons.chevron_right,
                size: 24.0,
                color: context.theme.textMain,
              ),
            ),
            TextCell(
              titleText: S.current.changePassword,
              icon: SvgPicture.asset(
                AppAssets.iconKeyboard,
                colorFilter: colorFilter,
              ),
              subtitle: Icon(
                Icons.chevron_right,
                size: 24.0,
                color: context.theme.textMain,
              ),
            ),
            TextCell(
              titleText: S.current.notifications,
              icon: SvgPicture.asset(
                AppAssets.iconNotification,
                colorFilter: colorFilter,
              ),
              subtitle: Icon(
                Icons.chevron_right,
                size: 24.0,
                color: context.theme.textMain,
              ),
            ),
            TextCell(
              titleText: S.current.privacyPolicy,
              icon: SvgPicture.asset(
                AppAssets.iconLegal,
                colorFilter: colorFilter,
              ),
              subtitle: Icon(
                Icons.chevron_right,
                size: 24.0,
                color: context.theme.textMain,
              ),
            ),
            TextCell(
              titleText: S.current.termsAndConditions,
              icon: SvgPicture.asset(
                AppAssets.iconLegal,
                colorFilter: colorFilter,
              ),
              subtitle: Icon(
                Icons.chevron_right,
                size: 24.0,
                color: context.theme.textMain,
              ),
            ),
          ],
        ),
        const Spacer(),
        AppButton(
          padding: AppSpaces.ph16,
          title: S.current.logoutButton,
          style: AppButtonStyle.outlineSemiround,
          leading: SvgPicture.asset(
            AppAssets.iconLogout,
            colorFilter: ColorFilter.mode(context.theme.primary, BlendMode.srcIn),
          ),
          onPressed: onLogoutClicked,
        ),
        const SizedBox(
          height: AppSpaces.sp16,
        )
      ],
    );
  }
}
