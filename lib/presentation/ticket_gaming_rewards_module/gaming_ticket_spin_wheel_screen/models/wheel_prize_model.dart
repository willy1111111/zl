import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class WheelPrizeModel {
  Rx<String>? imagePath;
  Rx<String>? prizeValue;
  Rx<double>? top;
  Rx<double>? left;
  Rx<double>? imageWidth;
  Rx<double>? imageHeight;

  WheelPrizeModel({
    this.imagePath,
    this.prizeValue,
    this.top,
    this.left,
    this.imageWidth,
    this.imageHeight,
  });
}
