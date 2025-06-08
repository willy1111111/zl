import 'package:get/get.dart';

import '../../../core/app_export.dart';

class BottomNavItemModel {
  Rx<String>? iconPath;
  Rx<String>? title;
  Rx<bool>? isSelected;

  BottomNavItemModel({
    this.iconPath,
    this.title,
    this.isSelected,
  });
}
