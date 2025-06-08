import 'package:get/get.dart';
import '../../../core/app_export.dart';

class GameItemModel {
  Rx<String>? gameImage;
  Rx<String>? overlayImage;
  Rx<String>? gameName;
  Rx<String>? badgeImage;
  Rx<bool>? hasBadge;
  Rx<bool>? isRounded;
  Rx<bool>? hasSpecialBackground;

  GameItemModel({
    this.gameImage,
    this.overlayImage,
    this.gameName,
    this.badgeImage,
    this.hasBadge,
    this.isRounded,
    this.hasSpecialBackground,
  });
}
