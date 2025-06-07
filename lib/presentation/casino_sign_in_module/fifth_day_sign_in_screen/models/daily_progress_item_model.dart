import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class DailyProgressItemModel {
  Rx<String>? day;
  Rx<String>? amount;
  Rx<String>? coinImage;
  Rx<String>? vectorImage;
  Rx<bool>? isCompleted;
  Rx<bool>? isCurrent;
  Rx<bool>? hasBonus;
  Rx<String>? bonusAmount;
  Rx<String>? bonusImage;
  Rx<String>? currentIndicator;

  DailyProgressItemModel({
    this.day,
    this.amount,
    this.coinImage,
    this.vectorImage,
    this.isCompleted,
    this.isCurrent,
    this.hasBonus,
    this.bonusAmount,
    this.bonusImage,
    this.currentIndicator,
  });
}
