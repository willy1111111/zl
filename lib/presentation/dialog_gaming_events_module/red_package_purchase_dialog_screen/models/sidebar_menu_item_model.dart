import 'package:get/get.dart';

import '../../../core/app_export.dart';

class SidebarMenuItemModel {
  Rx<String>? iconPath;
  Rx<String>? label;
  Rx<bool>? isSelected;

  SidebarMenuItemModel({
    this.iconPath,
    this.label,
    this.isSelected,
  });
}
