import 'package:get/get.dart';
import '../../../core/app_export.dart';

class NotificationItemModel {
  Rx<String>? timestamp;
  Rx<String>? autoDeleteText;
  Rx<String>? title;
  Rx<String>? content;
  Rx<bool>? hasNewReply;
  Rx<String>? newReplyTimestamp;
  Rx<bool>? isExpanded;
  Rx<String>? expandIcon;
  Rx<String>? notificationIcon;
  Rx<String>? replyIcon;

  NotificationItemModel({
    this.timestamp,
    this.autoDeleteText,
    this.title,
    this.content,
    this.hasNewReply,
    this.newReplyTimestamp,
    this.isExpanded,
    this.expandIcon,
    this.notificationIcon,
    this.replyIcon,
  });
}
