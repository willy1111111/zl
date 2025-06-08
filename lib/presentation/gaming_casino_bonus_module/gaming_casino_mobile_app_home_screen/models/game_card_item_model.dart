import 'package:get/get.dart';

import '../../../core/app_export.dart';

class GameCardItemModel {
  Rx<String>? backgroundImage;
  Rx<String>? overlayImage;
  Rx<String>? playIcon;
  Rx<String>? title;
  Rx<bool>? isSpecial;

  GameCardItemModel({
    this.backgroundImage,
    this.overlayImage,
    this.playIcon,
    this.title,
    this.isSpecial,
  });
}
