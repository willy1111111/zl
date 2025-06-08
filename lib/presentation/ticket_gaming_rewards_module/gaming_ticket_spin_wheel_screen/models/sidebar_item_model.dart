import 'package:get/get.dart';
import '../../../core/app_export.dart';

class SidebarItemModel {
  Rx<String>? iconPath;
  Rx<String>? label;
  Rx<String>? routeName;
  Rx<bool>? isHighlighted;

  SidebarItemModel({
    this.iconPath,
    this.label,
    this.routeName,
    this.isHighlighted,
  });
}
