import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class GameGridItemModel {
  Rx<String>? gameImagePath;
  Rx<String>? overlayImagePath;
  Rx<String>? overlayIconPath;
  Rx<String>? specialEffectPath;
  Rx<String>? logoPath;
  Rx<String>? title;
  Rx<int>? badgeCount;
  Rx<bool>? isLogo;

  GameGridItemModel({
    this.gameImagePath,
    this.overlayImagePath,
    this.overlayIconPath,
    this.specialEffectPath,
    this.logoPath,
    this.title,
    this.badgeCount,
    this.isLogo,
  });
}
