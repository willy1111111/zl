import 'package:get/get.dart';
import '../../../core/app_export.dart';

class GameItemModel {
  Rx<String>? gameImage;
  Rx<String>? overlayImage;
  Rx<String>? overlayIcon;
  Rx<String>? title;
  Rx<bool>? isRounded;
  Rx<bool>? isCustomBackground;

  GameItemModel({
    this.gameImage,
    this.overlayImage,
    this.overlayIcon,
    this.title,
    this.isRounded,
    this.isCustomBackground,
  });
}
