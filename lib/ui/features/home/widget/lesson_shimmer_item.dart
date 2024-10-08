part of '../home_screen.dart';

class _LessonShimmerItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const AppShimmer(
      child: AppShimmerContent(
        margin: AppSpaces.ph16v4,
        height: AppSizes.lessonCardHeight,
      ),
    );
  }
}
