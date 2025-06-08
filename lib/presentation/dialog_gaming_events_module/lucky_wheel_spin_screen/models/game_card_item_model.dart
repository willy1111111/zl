import 'package:get/get.dart';
import '../../../core/app_export.dart';

class GameCardItemModel {
  Rx<String>? gameImagePath;
  Rx<String>? title;
  Rx<String>? overlayImagePath;
  Rx<double>? overlayWidth;
  Rx<double>? overlayHeight;
  Rx<bool>? showNotificationDot;
  Rx<String>? notificationText;
  Rx<bool>? showBadge;
  Rx<String>? badgeImagePath;
  Rx<String>? badgeText;
  Rx<bool>? isLogoCard;
  Rx<bool>? hasSpecialOverlay;
  Rx<String>? specialOverlayPath;
  Rx<String>? secondaryOverlayPath;

  GameCardItemModel({
    this.gameImagePath,
    this.title,
    this.overlayImagePath,
    this.overlayWidth,
    this.overlayHeight,
    this.showNotificationDot,
    this.notificationText,
    this.showBadge,
    this.badgeImagePath,
    this.badgeText,
    this.isLogoCard,
    this.hasSpecialOverlay,
    this.specialOverlayPath,
    this.secondaryOverlayPath,
  });
}
