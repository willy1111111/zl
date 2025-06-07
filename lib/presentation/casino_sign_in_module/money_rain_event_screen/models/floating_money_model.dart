import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class FloatingMoneyModel {
  Rx<String>? imagePath;
  Rx<int>? top;
  Rx<int>? left;
  Rx<int>? width;
  Rx<int>? height;

  FloatingMoneyModel({
    String? imagePath,
    int? top,
    int? left,
    int? width,
    int? height,
  }) {
    this.imagePath = (imagePath ?? '').obs;
    this.top = (top ?? 0).obs;
    this.left = (left ?? 0).obs;
    this.width = (width ?? 50).obs;
    this.height = (height ?? 50).obs;
  }
}
