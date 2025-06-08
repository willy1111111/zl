import 'package:get/get.dart';
import '../../../core/app_export.dart';

class PromotionalCardModel {
  Rx<String>? backgroundImage;
  Rx<String>? overlayImage;
  Rx<String>? contentImage;
  Rx<String>? rainEffectImage;
  Rx<String>? buttonImage;
  Rx<String>? buttonText;
  Rx<int>? badgeCount;
  Rx<bool>? showBadge;
  Rx<String>? timerText;

  PromotionalCardModel({
    this.backgroundImage,
    this.overlayImage,
    this.contentImage,
    this.rainEffectImage,
    this.buttonImage,
    this.buttonText,
    this.badgeCount,
    this.showBadge,
    this.timerText,
  });
}
