import 'package:flutter/material.dart';

import 'middle_bar_item.dart';
import 'models/middle_bar_item_data.dart';
import 'models/middle_bar_item_model.dart';

class MiddleBar extends StatelessWidget {
  final MiddleBarItemData itemData = MiddleBarItemData();

  ValueNotifier<List<MiddleBarItemModel>> itembarNotifier = ValueNotifier([]);

  @override
  Widget build(BuildContext context) {
    itembarNotifier = itemData.middlebarLists;
    return ValueListenableBuilder(
      valueListenable: itembarNotifier,
      builder: (context, itemLists, _) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final MiddleBarItemModel item = itemLists[index];
            return MiddleBarItem(
                title: item.title,
                isSelected: item.isSelected,
                item: item,
                onPressedButton: (item) {
                  itemData.enableMiddlebarLists(item);
                }
            );
          },
          itemCount: itemData.itemLength,
        );
      },
    );
  }
}
