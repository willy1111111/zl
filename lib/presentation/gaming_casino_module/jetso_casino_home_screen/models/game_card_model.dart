import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class GameCardModel {
  Rx<String>? imagePath;
  Rx<String>? title;
  Rx<String>? frameImage;
  Rx<String>? overlayImage;
  Rx<bool>? isCustomBackground;

  GameCardModel({
    this.imagePath,
    this.title,
    this.frameImage,
    this.overlayImage,
    this.isCustomBackground,
  });
}
