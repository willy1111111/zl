import 'package:get/get.dart';
import '../../../core/app_export.dart';

class GameCardItemModel {
  Rx<String>? gameImagePath;
  Rx<String>? overlayImagePath;
  Rx<String>? backgroundOverlayPath;
  Rx<String>? specialOverlayPath;
  Rx<String>? title;
  Rx<int>? overlayWidth;
  Rx<int>? overlayHeight;
  Rx<bool>? showNotificationDot;
  Rx<String>? notificationNumber;
  Rx<int>? notificationTop;
  Rx<int>? notificationRight;
  Rx<bool>? isLogoCard;
  Rx<bool>? hasSpecialLine;

  GameCardItemModel({
    this.gameImagePath,
    this.overlayImagePath,
    this.backgroundOverlayPath,
    this.specialOverlayPath,
    this.title,
    this.overlayWidth,
    this.overlayHeight,
    this.showNotificationDot,
    this.notificationNumber,
    this.notificationTop,
    this.notificationRight,
    this.isLogoCard,
    this.hasSpecialLine,
  });
}
