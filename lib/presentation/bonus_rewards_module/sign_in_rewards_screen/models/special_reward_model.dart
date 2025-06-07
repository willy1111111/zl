import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class SpecialRewardModel {
  Rx<String>? imagePath;
  Rx<String>? iconPath;
  Rx<double>? width;
  Rx<double>? height;
  Rx<bool>? hasExtraLabel;

  SpecialRewardModel({
    this.imagePath,
    this.iconPath,
    this.width,
    this.height,
    this.hasExtraLabel,
  });
}
