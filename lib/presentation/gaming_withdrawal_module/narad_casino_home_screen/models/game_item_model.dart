import 'package:get/get.dart';
import '../../../core/app_export.dart';

class GameItemModel {
  Rx<String>? gameImage;
  Rx<String>? overlayIcon;
  Rx<String>? overlayImage;
  Rx<String>? title;
  Rx<bool>? hasCustomBackground;
  Rx<bool>? hasOverlay;

  GameItemModel({
    this.gameImage,
    this.overlayIcon,
    this.overlayImage,
    this.title,
    this.hasCustomBackground,
    this.hasOverlay,
  });
}
