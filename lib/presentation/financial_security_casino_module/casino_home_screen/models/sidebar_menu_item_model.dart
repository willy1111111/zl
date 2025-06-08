import 'package:get/get.dart';
import '../../../core/app_export.dart';

class SidebarMenuItemModel {
  Rx<String>? title;
  Rx<String>? icon;
  Rx<bool>? isSelected;
  Rx<bool>? isHotItem;

  SidebarMenuItemModel({
    this.title,
    this.icon,
    this.isSelected,
    this.isHotItem,
  });
}
