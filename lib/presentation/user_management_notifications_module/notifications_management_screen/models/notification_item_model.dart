import 'package:get/get.dart';
import '../../../core/app_export.dart';
import '../widgets/notification_item_widget.dart';

/// This class is used in the [NotificationItemWidget] component with GetX.

class NotificationItemModel {
  Rx<String>? id;
  Rx<String>? title;
  Rx<String>? subtitle;
  Rx<String>? categoryLabel;
  Rx<String>? date;
  Rx<String>? iconPath;
  Rx<bool>? hasRedDot;
  Rx<bool>? isSelected;
  Rx<bool>? hasIconBackground;

  NotificationItemModel({
    this.id,
    this.title,
    this.subtitle,
    this.categoryLabel,
    this.date,
    this.iconPath,
    this.hasRedDot,
    this.isSelected,
    this.hasIconBackground,
  });
}
