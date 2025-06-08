import 'package:get/get.dart';
import '../../../core/app_export.dart';

class SideNavigationItemModel {
  Rx<String>? icon;
  Rx<String>? title;
  Rx<String>? type;
  Rx<bool>? isSelected;

  SideNavigationItemModel({
    this.icon,
    this.title,
    this.type,
    this.isSelected,
  });
}
