import 'package:get/get.dart';
import '../../../core/app_export.dart';

class PromotionalFeatureItemModel {
  Rx<String>? icon;
  Rx<String>? title;
  Rx<String>? description;
  Rx<String>? highlightText;

  PromotionalFeatureItemModel({
    this.icon,
    this.title,
    this.description,
    this.highlightText,
  });
}
