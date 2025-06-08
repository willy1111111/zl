import 'package:get/get.dart';
import '../../../core/app_export.dart';

class PromotionalItemModel {
  Rx<String>? icon;
  Rx<String>? title;
  Rx<String>? description;
  Rx<String>? highlightText;

  PromotionalItemModel({
    this.icon,
    this.title,
    this.description,
    this.highlightText,
  });
}
