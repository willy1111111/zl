import 'package:get/get.dart';
import '../../../core/app_export.dart';

class PromotionalBannerModel {
  Rx<String>? appIconPath;
  Rx<String>? title;
  Rx<String>? downloadButtonText;
  Rx<bool>? isVisible;

  PromotionalBannerModel({
    this.appIconPath,
    this.title,
    this.downloadButtonText,
    this.isVisible,
  });
}
