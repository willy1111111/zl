import 'package:get/get.dart';

import '../../../core/app_export.dart';

class GameCardItemModel {
  Rx<String>? gameImage;
  Rx<String>? overlayImage;
  Rx<String>? overlayIcon;
  Rx<String>? gameTitle;
  Rx<bool>? hasNotification;
  Rx<bool>? hasOverlay;
  Rx<bool>? hasCustomBackground;

  GameCardItemModel({
    this.gameImage,
    this.overlayImage,
    this.overlayIcon,
    this.gameTitle,
    this.hasNotification,
    this.hasOverlay,
    this.hasCustomBackground,
  });
}
