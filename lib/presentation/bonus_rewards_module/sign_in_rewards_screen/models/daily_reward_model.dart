import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class DailyRewardModel {
  int? day;
  String? amount;
  Rx<bool>? isCompleted;
  Rx<bool>? isCurrent;
  Rx<String>? coinImagePath;
  Rx<String>? checkImagePath;
  Rx<String>? arrowImagePath;
  Rx<String>? bonusText;

  DailyRewardModel({
    this.day,
    this.amount,
    this.isCompleted,
    this.isCurrent,
    this.coinImagePath,
    this.checkImagePath,
    this.arrowImagePath,
    this.bonusText,
  });
}
