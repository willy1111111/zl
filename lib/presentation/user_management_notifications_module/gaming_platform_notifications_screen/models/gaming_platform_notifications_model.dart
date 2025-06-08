import 'package:get/get.dart';
import '../../../core/app_export.dart';

class GamingPlatformNotificationsModel {
  Rx<String>? date;
  Rx<String>? deleteInfo;
  Rx<String>? title;
  Rx<String>? description;
  Rx<bool>? hasNewReply;
  Rx<String>? replyDate;
  Rx<String>? supportResponse;
  Rx<bool>? showStatusIcon;

  GamingPlatformNotificationsModel({
    this.date,
    this.deleteInfo,
    this.title,
    this.description,
    this.hasNewReply,
    this.replyDate,
    this.supportResponse,
    this.showStatusIcon,
  });
}
