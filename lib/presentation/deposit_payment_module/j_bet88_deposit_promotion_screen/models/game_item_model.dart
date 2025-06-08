import 'package:get/get.dart';
import '../../../core/app_export.dart';

class GameItemModel {
  Rx<String>? gameImage;
  Rx<String>? overlayIcon;
  Rx<String>? title;
  Rx<bool>? isSelected;

  GameItemModel({
    this.gameImage,
    this.overlayIcon,
    this.title,
    this.isSelected,
  });
}
