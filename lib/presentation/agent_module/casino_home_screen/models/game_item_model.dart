import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class GameItemModel {
  Rx<String>? imagePath;
  Rx<String>? overlayImagePath;
  Rx<String>? frameImagePath;
  Rx<String>? gameName;
  Rx<bool>? hasOverlay;
  Rx<bool>? hasCustomBackground;

  GameItemModel({
    this.imagePath,
    this.overlayImagePath,
    this.frameImagePath,
    this.gameName,
    this.hasOverlay,
    this.hasCustomBackground,
  });
}
