import 'package:get/get.dart';
import '../../../core/app_export.dart';

class GameTileModel {
  Rx<String>? imagePathOne;
  Rx<String>? tileText;
  Rx<bool>? isGreenBackground;
  Rx<bool>? isOrangeBackground;
  Rx<bool>? isSelected;

  GameTileModel({
    this.imagePathOne,
    this.tileText,
    this.isGreenBackground,
    this.isOrangeBackground,
    this.isSelected,
  });
}
