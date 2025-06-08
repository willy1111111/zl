import 'package:get/get.dart';

import '../../../core/app_export.dart';

class GameCardItemModel {
  Rx<String>? gameImagePath;
  Rx<String>? overlayImagePath;
  Rx<String>? gameTitle;
  Rx<bool>? hasNotificationBadge;

  GameCardItemModel({
    this.gameImagePath,
    this.overlayImagePath,
    this.gameTitle,
    this.hasNotificationBadge,
  });
}
