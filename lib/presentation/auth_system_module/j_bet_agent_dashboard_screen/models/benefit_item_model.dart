import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class BenefitItemModel {
  Rx<String>? backgroundImage;
  Rx<String>? iconPath;
  Rx<String>? overlayImage;
  Rx<String>? badgeImage;
  Rx<String>? title;
  Rx<String>? percentage;

  BenefitItemModel({
    this.backgroundImage,
    this.iconPath,
    this.overlayImage,
    this.badgeImage,
    this.title,
    this.percentage,
  });
}
