import 'package:get/get.dart';

import '../../../core/app_export.dart';

class SidebarNavigationItemModel {
  Rx<String>? iconPath;
  Rx<String>? title;
  Rx<bool>? isSelected;

  SidebarNavigationItemModel({
    this.iconPath,
    this.title,
    this.isSelected,
  });
}
