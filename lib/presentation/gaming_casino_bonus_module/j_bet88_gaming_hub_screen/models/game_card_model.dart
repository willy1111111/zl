import 'package:get/get.dart';

import '../../../core/app_export.dart';

class GameCardModel {
  Rx<String>? gameImagePath;
  Rx<String>? overlayImagePath;
  Rx<String>? overlayIconPath;
  Rx<String>? gameTitle;
  Rx<bool>? hasCustomBackground;
  Rx<bool>? hasNotificationBadge;

  GameCardModel({
    this.gameImagePath,
    this.overlayImagePath,
    this.overlayIconPath,
    this.gameTitle,
    this.hasCustomBackground,
    this.hasNotificationBadge,
  });
}
