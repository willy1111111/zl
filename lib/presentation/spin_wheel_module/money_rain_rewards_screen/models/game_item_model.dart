import 'package:get/get.dart';

import '../../../core/app_export.dart';

class GameItemModel {
  Rx<String>? gameImage;
  Rx<String>? overlayImage;
  Rx<String>? title;
  Rx<bool>? isSelected;

  GameItemModel({
    this.gameImage,
    this.overlayImage,
    this.title,
    this.isSelected,
  });
}
