import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class TeamMemberModel {
  Rx<String>? imagePath;
  Rx<String>? label;
  Rx<double>? imageWidth;
  Rx<double>? imageHeight;
  Rx<double>? labelContainerWidth;
  Rx<double>? labelContainerHeight;
  RxList<int>? gradientColors;
  Rx<int>? labelTextColor;
  Rx<double>? fontSize;
  Rx<double>? topPosition;
  Rx<double>? leftPosition;

  TeamMemberModel({
    this.imagePath,
    this.label,
    this.imageWidth,
    this.imageHeight,
    this.labelContainerWidth,
    this.labelContainerHeight,
    this.gradientColors,
    this.labelTextColor,
    this.fontSize,
    this.topPosition,
    this.leftPosition,
  });
}
