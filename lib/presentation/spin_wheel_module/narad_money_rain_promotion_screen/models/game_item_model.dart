import 'package:get/get.dart';

import '../../../core/app_export.dart';

class GameItemModel {
  Rx<String>? gameImagePath;
  Rx<String>? overlayImagePath;
  Rx<String>? gameTitle;
  Rx<String>? badgeImagePath;
  Rx<bool>? hasOverlayBadge;
  Rx<bool>? isSpecial;
  Rx<bool>? hasNotificationBadge;
  Rx<String>? notificationCount;

  GameItemModel({
    this.gameImagePath,
    this.overlayImagePath,
    this.gameTitle,
    this.badgeImagePath,
    this.hasOverlayBadge,
    this.isSpecial,
    this.hasNotificationBadge,
    this.notificationCount,
  });
}
