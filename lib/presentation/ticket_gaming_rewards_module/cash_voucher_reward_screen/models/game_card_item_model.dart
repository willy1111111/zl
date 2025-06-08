import 'package:get/get.dart';
import '../../../core/app_export.dart';

class GameCardItemModel {
  Rx<String>? gameImagePath;
  Rx<String>? overlayIconPath;
  Rx<String>? title;
  Rx<bool>? hasSpecialEffect;
  Rx<String>? specialEffectImagePath;
  Rx<bool>? isLogoCard;
  Rx<String>? logoImagePath;
  Rx<bool>? hasOverlayImage;
  Rx<String>? overlayImagePath;
  Rx<bool>? hasBadge;
  Rx<int>? badgeCount;
  Rx<bool>? hasProgressBar;

  GameCardItemModel({
    this.gameImagePath,
    this.overlayIconPath,
    this.title,
    this.hasSpecialEffect,
    this.specialEffectImagePath,
    this.isLogoCard,
    this.logoImagePath,
    this.hasOverlayImage,
    this.overlayImagePath,
    this.hasBadge,
    this.badgeCount,
    this.hasProgressBar,
  });
}
