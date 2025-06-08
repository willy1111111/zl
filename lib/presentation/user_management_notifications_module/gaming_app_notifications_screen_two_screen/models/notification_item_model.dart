import 'package:get/get.dart';
import '../../../core/app_export.dart';

class NotificationItemModel {
  Rx<String>? timestamp;
  Rx<String>? deleteInfo;
  Rx<String>? title;
  Rx<String>? userMessage;
  Rx<bool>? hasNewReply;
  Rx<String>? replyTimestamp;
  Rx<String>? supportReply;
  Rx<bool>? isExpanded;
  Rx<bool>? hasScrollIndicator;
  Rx<bool>? hasReplyBadge;
  Rx<String>? supportIconVariant;

  NotificationItemModel({
    this.timestamp,
    this.deleteInfo,
    this.title,
    this.userMessage,
    this.hasNewReply,
    this.replyTimestamp,
    this.supportReply,
    this.isExpanded,
    this.hasScrollIndicator,
    this.hasReplyBadge,
    this.supportIconVariant,
  });
}
