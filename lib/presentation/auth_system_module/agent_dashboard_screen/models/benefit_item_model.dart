import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class BenefitItemModel {
  Rx<String>? backgroundImage;
  Rx<String>? iconImage;
  Rx<String>? overlayImage;
  Rx<String>? badgeImage;
  Rx<String>? title;
  Rx<String>? value;

  BenefitItemModel({
    this.backgroundImage,
    this.iconImage,
    this.overlayImage,
    this.badgeImage,
    this.title,
    this.value,
  });
}
