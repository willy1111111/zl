import 'package:get/get.dart';
import '../../../core/app_export.dart';

class NotificationItemModel {
  Rx<String>? iconPath;
  Rx<String>? overlayIconPath;
  Rx<String>? title;
  Rx<String>? type;
  Rx<String>? message;
  Rx<String>? date;
  Rx<bool>? hasNotificationDot;
  Rx<bool>? hasCustomBackground;

  NotificationItemModel({
    this.iconPath,
    this.overlayIconPath,
    this.title,
    this.type,
    this.message,
    this.date,
    this.hasNotificationDot,
    this.hasCustomBackground,
  });
}
