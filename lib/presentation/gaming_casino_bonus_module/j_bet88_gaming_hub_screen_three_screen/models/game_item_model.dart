import 'package:get/get.dart';

import '../../../core/app_export.dart';

class GameItemModel {
  Rx<String>? backgroundImage;
  Rx<String>? overlayImage;
  Rx<String>? playIcon;
  Rx<String>? title;
  Rx<bool>? hasNotificationBadge;
  Rx<String>? notificationCount;
  Rx<bool>? isSpecialBackground;

  GameItemModel({
    this.backgroundImage,
    this.overlayImage,
    this.playIcon,
    this.title,
    this.hasNotificationBadge,
    this.notificationCount,
    this.isSpecialBackground,
  });
}
