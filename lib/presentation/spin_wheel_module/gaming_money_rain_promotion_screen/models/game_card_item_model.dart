import 'package:get/get.dart';

import '../../../core/app_export.dart';

class GameCardItemModel {
  Rx<String>? gameImagePath;
  Rx<String>? overlayImagePath;
  Rx<String>? gameTitle;
  Rx<String>? badgeImagePath;
  Rx<String>? notificationCount;
  Rx<bool>? hasTitle;
  Rx<bool>? hasNotificationBadge;
  Rx<bool>? hasCustomOverlay;
  Rx<bool>? isLogoCard;

  GameCardItemModel({
    this.gameImagePath,
    this.overlayImagePath,
    this.gameTitle,
    this.badgeImagePath,
    this.notificationCount,
    this.hasTitle,
    this.hasNotificationBadge,
    this.hasCustomOverlay,
    this.isLogoCard,
  });
}
