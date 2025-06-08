import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class SidebarItemModel {
  Rx<String>? iconPath;
  Rx<String>? label;
  Rx<bool>? isSelected;

  SidebarItemModel({
    this.iconPath,
    this.label,
    this.isSelected,
  });
}
