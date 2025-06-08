import 'package:get/get.dart';

import '../../../core/app_export.dart';

class SidebarMenuItemModel {
  Rx<String>? icon;
  Rx<String>? title;
  Rx<bool>? isSelected;

  SidebarMenuItemModel({
    this.icon,
    this.title,
    this.isSelected,
  });
}
