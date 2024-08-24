part of '../home_screen.dart';

class _LessonItem extends StatelessWidget {
  final LessonEntity item;

  const _LessonItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      // backgroundColor: Color(item.backgroundColor).withAlpha(255),
      // borderColor: Color(item.borderColor).withAlpha(255),
      padding: AppSpaces.ph16v4,
      child: Padding(
        padding: AppSpaces.p8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            item.product.productCategory.iconUrl.toLowerCase().endsWith('svg')
                ? SvgPicture.network(
                    item.product.productCategory.iconUrl,
                    width: AppSizes.avatarSizeL,
                    height: AppSizes.avatarSizeL,
                  )
                : NetworkImageWithShimmer(
                    url: item.product.productCategory.iconUrl,
                    width: AppSizes.avatarSizeL,
                    height: AppSizes.avatarSizeL,
                    borderRadius: AppDecoration.brAvatarL,
                  ),
            const SizedBox(
              width: AppSpaces.sp8,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.product.name,
                    style: ThemeProvider.bodyMedium.copyWith(color: context.theme.textMain),
                  ),
                  Text(
                    item.instructor.name,
                    style: ThemeProvider.titleMedium.copyWith(color: context.theme.textSignatures),
                  ),
                  Text(
                    item.vehicle?.licensePlate ?? '',
                    style: ThemeProvider.labelSmall.copyWith(color: context.theme.textSignatures),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: AppSpaces.sp8,
            ),
            Text(
              '${item.startTime} - ${item.endTime}',
              style: ThemeProvider.labelLarge.copyWith(color: context.theme.textSignatures),
            ),
          ],
        ),
      ),
    );
  }
}
