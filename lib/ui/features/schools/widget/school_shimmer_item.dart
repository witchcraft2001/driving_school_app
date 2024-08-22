part of '../schools_screen.dart';

class _SchoolShimmerItem extends StatelessWidget {
  const _SchoolShimmerItem();

  @override
  Widget build(BuildContext context) {
    return AppShimmer(
      child: Padding(
        padding: AppSpaces.ph16v8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppShimmerContent(
                  height: AppSizes.shimmerTextM,
                  width: AppSizes.schoolNameBaseWidth + (Random().nextInt(4) * AppSizes.schoolNameIterationWidth),
                ),
                const SizedBox(height: AppSpaces.sp5,),
                AppShimmerContent(
                  height: AppSizes.shimmerTextS,
                  width: AppSizes.schoolUrlBaseWidth + (Random().nextInt(6) * AppSizes.schoolNameIterationWidth),
                ),
              ],
            ),
            const AppShimmerContent(
              height: AppSizes.iconSize,
              width: AppSizes.iconSize,
            ),
          ],
        ),
      ),
    );
  }
}
