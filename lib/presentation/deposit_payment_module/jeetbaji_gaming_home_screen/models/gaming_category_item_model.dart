import 'package:get/get.dart';
import '../../../core/app_export.dart';

class GamingCategoryItemModel {
  Rx<String>? icon;
  Rx<String>? label;
  Rx<bool>? isSelected;

  GamingCategoryItemModel({
    this.icon,
    this.label,
    this.isSelected,
  });
}
