import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class PromotionalFeatureItemModel {
  Rx<String>? icon;
  Rx<String>? title;
  Rx<String>? subtitle;
  Rx<String>? highlightText;
  Rx<bool>? showBorder;

  PromotionalFeatureItemModel({
    this.icon,
    this.title,
    this.subtitle,
    this.highlightText,
    this.showBorder,
  });
}
