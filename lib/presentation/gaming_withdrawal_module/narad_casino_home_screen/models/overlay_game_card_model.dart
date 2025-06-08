import 'package:get/get.dart';
import '../../../core/app_export.dart';

class OverlayGameCardModel {
  Rx<String>? backgroundImage;
  Rx<String>? overlayImage;
  Rx<String>? gameIcon;
  Rx<String>? moneyRainImage;
  Rx<String>? buttonImage;
  Rx<String>? timerBackgroundImage;
  Rx<String>? timerIcon;

  OverlayGameCardModel({
    this.backgroundImage,
    this.overlayImage,
    this.gameIcon,
    this.moneyRainImage,
    this.buttonImage,
    this.timerBackgroundImage,
    this.timerIcon,
  });
}
