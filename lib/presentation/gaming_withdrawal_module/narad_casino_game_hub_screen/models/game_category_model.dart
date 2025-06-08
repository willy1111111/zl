import 'package:get/get.dart';
import '../../../core/app_export.dart';

class GameCategoryModel {
  Rx<String>? icon;
  Rx<String>? title;
  Rx<bool>? isSelected;
  Rx<bool>? hasGradient;

  GameCategoryModel({
    this.icon,
    this.title,
    this.isSelected,
    this.hasGradient,
  });
}
