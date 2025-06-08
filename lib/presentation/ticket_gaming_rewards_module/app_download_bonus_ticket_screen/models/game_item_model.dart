import 'package:get/get.dart';
import '../../../../core/app_export.dart';

/// This class is used for game items in the game grid.

class GameItemModel {
  Rx<String>? imagePath;
  Rx<String>? overlayIconPath;
  Rx<String>? title;
  Rx<bool>? hasNotification;
  Rx<String>? specialEffectImage;

  GameItemModel({
    this.imagePath,
    this.overlayIconPath,
    this.title,
    this.hasNotification,
    this.specialEffectImage,
  });
}
