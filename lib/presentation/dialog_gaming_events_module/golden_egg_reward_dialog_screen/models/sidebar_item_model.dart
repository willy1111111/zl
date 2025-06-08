import 'package:get/get.dart';
import '../../../core/app_export.dart';

class SidebarItemModel {
  Rx<String>? iconPath;
  Rx<String>? label;
  Rx<String>? routeName;
  Rx<bool>? isSelected;
  Rx<double>? iconHeight;
  Rx<double>? iconWidth;

  SidebarItemModel({
    this.iconPath,
    this.label,
    this.routeName,
    this.isSelected,
    this.iconHeight,
    this.iconWidth,
  });
}
