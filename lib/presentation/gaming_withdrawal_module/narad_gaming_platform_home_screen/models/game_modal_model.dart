import 'package:get/get.dart';
import '../../../core/app_export.dart';

class GameModalModel {
  Rx<String>? backgroundImage;
  Rx<String>? overlayImage;
  Rx<String>? contentImage;
  Rx<int>? badgeCount;
  Rx<bool>? showBadge;
  Rx<String>? timerText;
  Rx<String>? buttonText;
  Rx<String>? vectorImage;
  Rx<String>? starImage;
  Rx<String>? moneyRainImage;
  Rx<String>? buttonBackgroundImage;

  GameModalModel({
    this.backgroundImage,
    this.overlayImage,
    this.contentImage,
    this.badgeCount,
    this.showBadge,
    this.timerText,
    this.buttonText,
    this.vectorImage,
    this.starImage,
    this.moneyRainImage,
    this.buttonBackgroundImage,
  });
}
