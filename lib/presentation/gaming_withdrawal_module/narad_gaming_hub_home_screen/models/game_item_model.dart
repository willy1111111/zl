import 'package:get/get.dart';
import '../../../core/app_export.dart';

class GameItemModel {
  Rx<String>? gameImage;
  Rx<String>? overlayIcon;
  Rx<String>? backgroundOverlay;
  Rx<String>? title;
  Rx<bool>? hasOverlay;
  Rx<bool>? hasBackgroundOverlay;
  Rx<bool>? isCustomBackground;

  GameItemModel({
    this.gameImage,
    this.overlayIcon,
    this.backgroundOverlay,
    this.title,
    this.hasOverlay,
    this.hasBackgroundOverlay,
    this.isCustomBackground,
  });
}
