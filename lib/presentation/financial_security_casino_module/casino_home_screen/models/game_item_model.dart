import 'package:get/get.dart';
import '../../../core/app_export.dart';

class GameItemModel {
  Rx<String>? title;
  Rx<String>? image;
  Rx<String>? overlayImage;
  Rx<String>? baccaratOverlay;
  Rx<bool>? hasSpecialButton;
  Rx<String>? specialButtonText;
  Rx<String>? signInText;
  Rx<bool>? isPlaceholder;
  Rx<bool>? hasAdditionalOverlay;

  GameItemModel({
    this.title,
    this.image,
    this.overlayImage,
    this.baccaratOverlay,
    this.hasSpecialButton,
    this.specialButtonText,
    this.signInText,
    this.isPlaceholder,
    this.hasAdditionalOverlay,
  });
}
