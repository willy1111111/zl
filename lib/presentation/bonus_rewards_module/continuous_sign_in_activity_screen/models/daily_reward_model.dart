import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class DailyRewardModel {
  Rx<int>? day;
  Rx<String>? amount;
  Rx<bool>? isCompleted;
  Rx<bool>? isCurrent;
  Rx<String>? coinImage;
  Rx<String>? checkImage;
  Rx<String>? arrowImage;
  Rx<String>? bonusText;

  DailyRewardModel({
    this.day,
    this.amount,
    this.isCompleted,
    this.isCurrent,
    this.coinImage,
    this.checkImage,
    this.arrowImage,
    this.bonusText,
  });
}
