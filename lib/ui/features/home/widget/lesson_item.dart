part of '../home_screen.dart';

class _LessonItem extends StatelessWidget {
  final LessonEntity item;

  const _LessonItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      padding: AppSpaces.ph16v4,
      child: Padding(
        padding: AppSpaces.p8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NetworkImageWithShimmer(
              url: item.instructor.avatar,
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
                    item.instructor.name,
                    style: ThemeProvider.bodyMedium.copyWith(color: context.theme.textMain),
                  ),
                  Text(
                    item.vehicle?.licensePlate ?? '',
                    style: ThemeProvider.labelLarge.copyWith(color: context.theme.textSignatures),
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
