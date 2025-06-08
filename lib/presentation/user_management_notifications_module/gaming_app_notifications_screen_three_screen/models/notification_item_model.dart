import 'package:get/get.dart';
import '../../../core/app_export.dart';

class NotificationItemModel {
  RxString? id;
  RxString? date;
  RxString? deleteInfo;
  RxString? title;
  RxString? description;
  RxBool? hasReply;
  RxString? replyDate;
  RxBool? isSelected;

  NotificationItemModel({
    this.id,
    this.date,
    this.deleteInfo,
    this.title,
    this.description,
    this.hasReply,
    this.replyDate,
    this.isSelected,
  });
}
