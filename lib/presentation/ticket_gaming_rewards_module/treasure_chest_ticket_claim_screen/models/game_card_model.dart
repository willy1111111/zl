import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class GameCardModel {
  Rx<String>? gameImagePath;
  Rx<String>? overlayIconPath;
  Rx<String>? backgroundOverlayPath;
  Rx<String>? specialEffectPath;
  Rx<String>? title;
  Rx<int>? badgeCount;
  Rx<bool>? hasRedDot;
  Rx<bool>? hasProgressBar;
  Rx<bool>? isLogoGame;

  GameCardModel({
    this.gameImagePath,
    this.overlayIconPath,
    this.backgroundOverlayPath,
    this.specialEffectPath,
    this.title,
    this.badgeCount,
    this.hasRedDot,
    this.hasProgressBar,
    this.isLogoGame,
  });
}
