import 'package:get/get.dart';
import '../../../core/app_export.dart';

class OverlayNotificationModel {
  Rx<String>? backgroundImage;
  Rx<String>? overlayImage;
  Rx<String>? contentImage;
  Rx<String>? buttonText;
  Rx<String>? timerText;
  Rx<int>? badgeCount;
  Rx<int>? positionTop;
  Rx<int>? positionLeft;
  Rx<int>? positionRight;
  Rx<bool>? showBadge;
  Rx<bool>? showTimer;

  OverlayNotificationModel({
    this.backgroundImage,
    this.overlayImage,
    this.contentImage,
    this.buttonText,
    this.timerText,
    this.badgeCount,
    this.positionTop,
    this.positionLeft,
    this.positionRight,
    this.showBadge,
    this.showTimer,
  });
}
