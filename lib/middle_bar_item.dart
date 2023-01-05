import 'package:flutter/material.dart';
import 'package:has_creative/models/middle_bar_item_model.dart';

class MiddleBarItem extends StatelessWidget {
  MiddleBarItem({required this.title, this.isSelected, required this.item, required this.onPressedButton});

  final String title;
  bool? isSelected = false;
  MiddleBarItemModel item;
  void Function(MiddleBarItemModel) onPressedButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 12),
      decoration: BoxDecoration(
        border: Border(
            bottom: isSelected! ? BorderSide(color: Colors.white, width: 4) : BorderSide.none
        ),
      ),
      child: TextButton(
        onPressed: () {
          onPressedButton(item);
        },
        child: Text(
          title,
          style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: isSelected! ? Colors.white : Colors.grey
          ),
        ),
      )
    );
  }
}
