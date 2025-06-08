import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [notifications_screen] screen with GetX.

class NotificationItemModel {
  Rx<String>? icon;
  Rx<String>? title;
  Rx<String>? subtitle;
  Rx<String>? source;
  Rx<String>? date;
  Rx<bool>? hasRedDot;
  Rx<bool>? hasCustomBackground;

  NotificationItemModel({
    this.icon,
    this.title,
    this.subtitle,
    this.source,
    this.date,
    this.hasRedDot,
    this.hasCustomBackground,
  });
}
