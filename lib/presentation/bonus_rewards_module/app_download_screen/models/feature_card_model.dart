import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class FeatureCardModel {
  Rx<String>? backgroundImagePath;
  Rx<String>? iconPath;
  Rx<String>? text;
  Rx<double>? cardWidth;
  Rx<double>? cardHeight;
  Rx<double>? iconWidth;
  Rx<double>? iconHeight;

  FeatureCardModel({
    this.backgroundImagePath,
    this.iconPath,
    this.text,
    this.cardWidth,
    this.cardHeight,
    this.iconWidth,
    this.iconHeight,
  });
}
