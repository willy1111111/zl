import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class UserHierarchyModel {
  Rx<String>? imagePath;
  Rx<double>? imageHeight;
  Rx<double>? imageWidth;
  Rx<double>? top;
  Rx<double>? left;
  Rx<String>? label;
  Rx<int>? labelBgColor;

  UserHierarchyModel({
    this.imagePath,
    this.imageHeight,
    this.imageWidth,
    this.top,
    this.left,
    this.label,
    this.labelBgColor,
  });
}
