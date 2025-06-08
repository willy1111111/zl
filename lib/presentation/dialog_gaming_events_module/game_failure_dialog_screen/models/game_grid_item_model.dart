import 'package:get/get.dart';
import '../../../core/app_export.dart';

class GameGridItemModel {
  Rx<String>? gameImagePath;
  Rx<String>? overlayImagePath;
  Rx<String>? specialOverlayPath;
  Rx<String>? baccaratImagePath;
  Rx<String>? badgeImagePath;
  Rx<String>? title;
  Rx<String>? badgeNumber;
  Rx<int>? overlayWidth;
  Rx<int>? overlayHeight;
  Rx<bool>? isLogoCard;
  Rx<bool>? hasNotificationDot;
  Rx<bool>? hasBadge;

  GameGridItemModel({
    this.gameImagePath,
    this.overlayImagePath,
    this.specialOverlayPath,
    this.baccaratImagePath,
    this.badgeImagePath,
    this.title,
    this.badgeNumber,
    this.overlayWidth,
    this.overlayHeight,
    this.isLogoCard,
    this.hasNotificationDot,
    this.hasBadge,
  });
}
