import 'package:get/get.dart';
import '../../../core/app_export.dart';

class SidebarItemModel {
  Rx<String>? icon;
  Rx<String>? title;
  Rx<bool>? isSelected;

  SidebarItemModel({
    this.icon,
    this.title,
    this.isSelected,
  });
}
