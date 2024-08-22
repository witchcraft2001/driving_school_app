part of '../home_screen.dart';

class _LessonList extends StatelessWidget {
  final List<LessonEntity> items;
  final bool isLoading;

  const _LessonList({super.key, required this.items, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? _LessonListLoading()
        : _LessonListLoaded(
            items: items,
          );
  }
}

class _LessonListLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      itemBuilder: (_, __) => _LessonShimmerItem(),
    );
  }
}

class _LessonListLoaded extends StatelessWidget {
  final List<LessonEntity> items;

  const _LessonListLoaded({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return items.isNotEmpty
        ? ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: items.length,
            itemBuilder: (ctx, index) {
              final item = items[index];
              return _LessonItem(
                item: item,
              );
            },
          )
        : Container();
  }
}
