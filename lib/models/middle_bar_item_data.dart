import 'package:flutter/foundation.dart';
import 'package:has_creative/models/middle_bar_item_model.dart';

class MiddleBarItemData extends ChangeNotifier {
  ValueNotifier<List<MiddleBarItemModel>> middlebarLists = ValueNotifier([
    MiddleBarItemModel(title: 'HOME', isSelected: true,),
    MiddleBarItemModel(title: 'VIDEOS', isSelected: false),
    MiddleBarItemModel(title: 'SHORTS', isSelected: false),
    MiddleBarItemModel(title: 'LIVE', isSelected: false),
    MiddleBarItemModel(title: 'PLAYLISTS', isSelected: false),
    MiddleBarItemModel(title: 'COMMUNITY', isSelected: false),
    MiddleBarItemModel(title: 'ABOUT', isSelected: false),
  ]);

  void enableMiddlebarLists(MiddleBarItemModel itembar) {
    List<MiddleBarItemModel> newMiddlebarLists = [];
    for(var middlebar in middlebarLists.value) {
      if(middlebar == itembar) {
        newMiddlebarLists.add(MiddleBarItemModel(title: middlebar.title, isSelected: true));
      } else {
        newMiddlebarLists.add(MiddleBarItemModel(title: middlebar.title, isSelected: false));
      }
    }
    middlebarLists.value =  newMiddlebarLists;
  }

  int get itemLength => middlebarLists.value.length;
}
