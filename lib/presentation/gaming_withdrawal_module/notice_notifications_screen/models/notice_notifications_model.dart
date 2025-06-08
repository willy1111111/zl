import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [notice_notifications_screen] screen with GetX.

class NoticeNotificationsModel {
  Rx<String>? id;
  Rx<String>? title;
  Rx<String>? icon;
  Rx<String>? overlayIcon;
  Rx<int>? badgeCount;
  Rx<bool>? hasMultipleBadges;
  Rx<int>? multipleBadgeCount;

  NoticeNotificationsModel({
    this.id,
    this.title,
    this.icon,
    this.overlayIcon,
    this.badgeCount,
    this.hasMultipleBadges,
    this.multipleBadgeCount,
  });
}
