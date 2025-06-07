import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class GameItemModel {
  Rx<String>? imagePath;
  Rx<String>? title;
  Rx<String>? overlayImagePath;
  Rx<int>? badgeNumber;
  Rx<bool>? hasCustomBackground;
  Rx<bool>? hasSecondaryOverlay;
  Rx<String>? secondaryOverlayPath;

  GameItemModel({
    this.imagePath,
    this.title,
    this.overlayImagePath,
    this.badgeNumber,
    this.hasCustomBackground,
    this.hasSecondaryOverlay,
    this.secondaryOverlayPath,
  });
}
