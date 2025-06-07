import 'package:get/get.dart';
import '../../../core/app_export.dart';

class PromotionalItemModel {
  Rx<String>? iconPath;
  Rx<String>? title;
  Rx<String>? description;
  Rx<String>? highlightText;

  PromotionalItemModel({
    this.iconPath,
    this.title,
    this.description,
    this.highlightText,
  });
}
