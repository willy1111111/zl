import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [side_navigation_item_widget] component with GetX.
class NavigationItemModel {
  Rx<String>? iconPath;
  Rx<String>? label;
  Rx<bool>? isSelected;

  NavigationItemModel({
    this.iconPath,
    this.label,
    this.isSelected,
  });
}
