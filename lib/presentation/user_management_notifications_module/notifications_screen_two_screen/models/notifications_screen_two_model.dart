import 'package:get/get.dart';
import '../../../core/app_export.dart';

class NotificationModel {
  Rx<String>? timestamp;
  Rx<String>? autoDeleteInfo;
  Rx<String>? title;
  Rx<String>? bonusAmount;
  Rx<String>? description;
  Rx<String>? additionalText;
  Rx<String>? viewEventText;

  NotificationModel({
    this.timestamp,
    this.autoDeleteInfo,
    this.title,
    this.bonusAmount,
    this.description,
    this.additionalText,
    this.viewEventText,
  });
}
