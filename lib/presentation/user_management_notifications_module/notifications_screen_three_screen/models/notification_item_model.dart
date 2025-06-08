import 'package:get/get.dart';
import '../../../core/app_export.dart';

class NotificationItemModel {
  Rx<String>? id;
  Rx<String>? title;
  Rx<String>? message;
  Rx<String>? category;
  Rx<String>? date;
  Rx<String>? iconPath;
  Rx<String>? overlayIconPath;
  Rx<bool>? hasRedBadge;
  Rx<bool>? isSelected;
  Rx<bool>? hasCustomBackground;

  NotificationItemModel({
    this.id,
    this.title,
    this.message,
    this.category,
    this.date,
    this.iconPath,
    this.overlayIconPath,
    this.hasRedBadge,
    this.isSelected,
    this.hasCustomBackground,
  });
}
