import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class DailyProgressItemModel {
  Rx<String>? day;
  Rx<String>? amount;
  Rx<String>? coinImage;
  Rx<String>? checkImage;
  Rx<bool>? isCompleted;
  Rx<bool>? isCurrent;
  Rx<String>? bonusText;
  Rx<String>? arrowImage;

  DailyProgressItemModel({
    this.day,
    this.amount,
    this.coinImage,
    this.checkImage,
    this.isCompleted,
    this.isCurrent,
    this.bonusText,
    this.arrowImage,
  });
}
