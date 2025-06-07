import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class BenefitItemModel {
  Rx<String>? iconPath;
  Rx<String>? overlayPath;
  Rx<String>? badgePath;
  Rx<String>? backgroundPath;
  Rx<String>? mainText;
  Rx<String>? highlightText;

  BenefitItemModel({
    this.iconPath,
    this.overlayPath,
    this.badgePath,
    this.backgroundPath,
    this.mainText,
    this.highlightText,
  });
}
