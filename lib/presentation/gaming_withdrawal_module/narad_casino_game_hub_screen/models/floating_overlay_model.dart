import 'package:get/get.dart';
import '../../../core/app_export.dart';

class FloatingOverlayModel {
  Rx<String>? backgroundImage;
  Rx<String>? overlayImage;
  Rx<String>? iconImage;
  Rx<String>? effectImage;
  Rx<String>? buttonImage;
  Rx<String>? buttonText;
  Rx<int>? badgeCount;
  Rx<bool>? hasBadge;

  FloatingOverlayModel({
    this.backgroundImage,
    this.overlayImage,
    this.iconImage,
    this.effectImage,
    this.buttonImage,
    this.buttonText,
    this.badgeCount,
    this.hasBadge,
  });
}
