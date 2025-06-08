import 'package:get/get.dart';
import '../../../core/app_export.dart';

class CategoryItemModel {
  Rx<String>? icon;
  Rx<String>? title;
  Rx<bool>? isSelected;

  CategoryItemModel({
    this.icon,
    this.title,
    this.isSelected,
  });
}
