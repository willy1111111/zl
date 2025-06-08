import 'package:get/get.dart';
import '../../../core/app_export.dart';

class GameItemModel {
  Rx<String>? gameImagePath;
  Rx<String>? title;
  Rx<String>? overlayImagePath;
  Rx<bool>? showNotificationDot;
  Rx<double>? notificationDotTop;
  Rx<double>? notificationDotRight;

  GameItemModel({
    this.gameImagePath,
    this.title,
    this.overlayImagePath,
    this.showNotificationDot,
    this.notificationDotTop,
    this.notificationDotRight,
  });
}
