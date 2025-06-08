import 'package:get/get.dart';

import '../../../core/app_export.dart';

class GameCardItemModel {
  Rx<String>? gameImagePath;
  Rx<String>? overlayImagePath;
  Rx<String>? title;
  Rx<double>? overlayWidth;
  Rx<double>? overlayHeight;
  Rx<bool>? showNotificationDot;
  Rx<double>? notificationDotTop;
  Rx<double>? notificationDotRight;

  GameCardItemModel({
    this.gameImagePath,
    this.overlayImagePath,
    this.title,
    this.overlayWidth,
    this.overlayHeight,
    this.showNotificationDot,
    this.notificationDotTop,
    this.notificationDotRight,
  });
}
