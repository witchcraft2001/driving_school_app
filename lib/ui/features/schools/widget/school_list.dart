part of '../schools_screen.dart';

class _SchoolList extends StatelessWidget {
  final List<SchoolEntity> items;
  final bool isLoading;
  final ValueChanged<SchoolEntity> onTap;

  const _SchoolList({required this.items, required this.isLoading, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? _SchoolListLoading()
        : _SchoolListLoaded(
            items: items,
            onTap: onTap,
          );
  }
}

class _SchoolListLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 36.0),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 20,
        itemBuilder: (_, __) => const _SchoolShimmerItem(),
        separatorBuilder: (BuildContext context, int index) => Divider(
          color: context.theme.divider,
          height: AppSpaces.sp2,
        ),
      ),
    );
  }
}

class _SchoolListLoaded extends StatelessWidget {
  final List<SchoolEntity> items;
  final ValueChanged<SchoolEntity> onTap;

  const _SchoolListLoaded({super.key, required this.items, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return items.isNotEmpty
        ? CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: AppLabel(
                  text: S.current.selectSchool,
                  padding: AppSpaces.ph16t16b4,
                ),
              ),
              SliverList.separated(
                itemCount: items.length,
                itemBuilder: (ctx, index) {
                  final item = items[index];
                  return _SchoolItem(
                    item: item,
                    onTap: onTap,
                  );
                },
                separatorBuilder: (ctx, index) => Divider(
                  color: context.theme.divider,
                  height: AppSpaces.sp2,
                ),
              ),
            ],
          )
        : Container();
  }
}
