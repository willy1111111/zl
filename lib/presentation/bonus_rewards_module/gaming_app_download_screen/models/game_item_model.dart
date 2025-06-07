import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class GameItemModel {
  Rx<String>? imagePath;
  Rx<String>? overlayImagePath;
  Rx<String>? playButtonImagePath;
  Rx<String>? title;
  Rx<bool>? hasPlayButton;
  Rx<bool>? isSpecial;

  GameItemModel({
    this.imagePath,
    this.overlayImagePath,
    this.playButtonImagePath,
    this.title,
    this.hasPlayButton,
    this.isSpecial,
  });
}
