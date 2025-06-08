import 'package:get/get.dart';
import '../../../core/app_export.dart';

class GameItemModel {
  Rx<String>? backgroundImage;
  Rx<String>? overlayImage;
  Rx<String>? iconImage;
  Rx<String>? title;
  Rx<int>? badgeCount;
  Rx<bool>? showBadge;
  Rx<bool>? isSpecial;
  Rx<bool>? hasProgressBar;
  Rx<bool>? hasRedDot;

  GameItemModel({
    this.backgroundImage,
    this.overlayImage,
    this.iconImage,
    this.title,
    this.badgeCount,
    this.showBadge,
    this.isSpecial,
    this.hasProgressBar,
    this.hasRedDot,
  });
}
