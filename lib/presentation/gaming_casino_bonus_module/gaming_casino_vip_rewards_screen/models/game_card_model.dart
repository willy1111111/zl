import 'package:get/get.dart';

import '../../../core/app_export.dart';

class GameCardModel {
  Rx<String>? backgroundImage;
  Rx<String>? overlayImage;
  Rx<String>? title;
  Rx<bool>? hasNotification;

  GameCardModel({
    this.backgroundImage,
    this.overlayImage,
    this.title,
    this.hasNotification,
  });
}
