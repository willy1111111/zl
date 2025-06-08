import 'package:get/get.dart';
import '../../../core/app_export.dart';

class GameGridItemModel {
  Rx<String>? gameImagePath;
  Rx<String>? overlayIconPath;
  Rx<String>? baccaratImagePath;
  Rx<String>? specialEffectImagePath;
  Rx<String>? title;
  RxBool? showTextShadow;
  RxBool? isPlaceholder;
  RxInt? badgeCount;
  RxBool? hasProgressBar;
  RxBool? hasRedDot;

  GameGridItemModel({
    this.gameImagePath,
    this.overlayIconPath,
    this.baccaratImagePath,
    this.specialEffectImagePath,
    this.title,
    this.showTextShadow,
    this.isPlaceholder,
    this.badgeCount,
    this.hasProgressBar,
    this.hasRedDot,
  });
}
