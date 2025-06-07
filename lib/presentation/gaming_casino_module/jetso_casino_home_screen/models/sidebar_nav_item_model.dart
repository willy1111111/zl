import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class SidebarNavItemModel {
  Rx<String>? icon;
  Rx<String>? title;
  Rx<bool>? isSelected;
  Rx<bool>? isGradientHot;

  SidebarNavItemModel({
    this.icon,
    this.title,
    this.isSelected,
    this.isGradientHot,
  });
}
