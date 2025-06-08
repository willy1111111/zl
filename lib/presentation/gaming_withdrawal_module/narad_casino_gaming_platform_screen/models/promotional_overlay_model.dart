import 'package:get/get.dart';
import '../../../core/app_export.dart';

class PromotionalOverlayModel {
  Rx<double>? topPosition;
  Rx<double>? leftPosition;
  Rx<double>? rightPosition;
  Rx<String>? backgroundImage;
  Rx<String>? overlayImage;
  Rx<String>? characterImage;
  Rx<int>? badgeCount;
  Rx<String>? timerText;
  Rx<String>? buttonText;
  Rx<String>? moneyRainImage;
  Rx<String>? buttonBackgroundImage;
  Rx<bool>? showBadge;

  PromotionalOverlayModel({
    this.topPosition,
    this.leftPosition,
    this.rightPosition,
    this.backgroundImage,
    this.overlayImage,
    this.characterImage,
    this.badgeCount,
    this.timerText,
    this.buttonText,
    this.moneyRainImage,
    this.buttonBackgroundImage,
    this.showBadge,
  });
}
