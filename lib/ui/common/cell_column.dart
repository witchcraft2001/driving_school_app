// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'app_divider.dart';

class CellColumn extends StatelessWidget {
  final bool withSeparator;
  final double? padding;
  final List<Widget> children;

  const CellColumn({super.key, this.withSeparator = false, required this.children, this.padding});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: _getChildren(),
    );
  }

  List<Widget> _getChildren() {
    var list = List<Widget>.empty(growable: true);
    for (int i = 0; i < children.length; i++) {
      list.add(children[i]);
      if (withSeparator && i < children.length - 1) {
        list.add(padding != null
            ? Padding(
                padding: EdgeInsets.symmetric(horizontal: padding!),
                child: const AppDivider(),
              )
            : const AppDivider());
      }
    }

    return list;
  }
}
