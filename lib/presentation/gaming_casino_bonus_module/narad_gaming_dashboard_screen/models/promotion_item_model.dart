import 'package:get/get.dart';

import '../../../core/app_export.dart';

class PromotionItemModel {
  Rx<String>? icon;
  Rx<String>? title;
  Rx<String>? description;
  Rx<String>? highlightText;

  PromotionItemModel({
    this.icon,
    this.title,
    this.description,
    this.highlightText,
  });
}
