import 'package:get/get.dart';

import '../../../core/app_export.dart';

class GameItemModel {
  Rx<String>? gameImagePath;
  Rx<String>? overlayImagePath;
  Rx<String>? badgeImagePath;
  Rx<String>? gameTitle;
  Rx<bool>? isSpecial;
  Rx<bool>? hasNotification;

  GameItemModel({
    this.gameImagePath,
    this.overlayImagePath,
    this.badgeImagePath,
    this.gameTitle,
    this.isSpecial,
    this.hasNotification,
  });
}
