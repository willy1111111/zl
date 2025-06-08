import 'package:get/get.dart';
import '../../../../core/app_export.dart';

/// This class is used for sidebar navigation items.

class SidebarItemModel {
  Rx<String>? iconPath;
  Rx<String>? label;
  Rx<String>? routeName;
  Rx<bool>? isSelected;

  SidebarItemModel({
    this.iconPath,
    this.label,
    this.routeName,
    this.isSelected,
  });
}
