part of '../schools_screen.dart';

class _SchoolItem extends StatelessWidget {
  final SchoolEntity item;
  final ValueChanged<SchoolEntity> onTap;

  const _SchoolItem({
    super.key,
    required this.item,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(item),
      child: Padding(
        padding: AppSpaces.ph16v8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: ThemeProvider.bodyMedium.copyWith(color: context.theme.textMain),
                ),
                const SizedBox(height: AppSpaces.sp4,),
                Text(
                  item.url,
                  style: ThemeProvider.labelSmall.copyWith(color: context.theme.textOptional),
                ),
              ],
            ),
            Icon(
              Icons.chevron_right,
              color: context.theme.textOptional,
            ),
          ],
        ),
      ),
    );
  }
}
