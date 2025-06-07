import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class SidebarMenuItemModel {
  Rx<String>? iconPath;
  Rx<String>? title;
  Rx<bool>? isActive;
  Rx<String>? gradient;

  SidebarMenuItemModel({
    this.iconPath,
    this.title,
    this.isActive,
    this.gradient,
  });
}
