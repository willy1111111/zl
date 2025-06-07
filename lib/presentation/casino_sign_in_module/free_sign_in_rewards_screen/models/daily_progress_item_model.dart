import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class DailyProgressItemModel {
  Rx<String>? amount;
  Rx<String>? coinImage;
  Rx<String>? dayNumber;
  Rx<bool>? isCompleted;
  Rx<bool>? isActive;
  Rx<String>? checkIcon;
  Rx<String>? bonusAmount;
  Rx<int>? borderColor;
  Rx<int>? backgroundColor;

  DailyProgressItemModel({
    this.amount,
    this.coinImage,
    this.dayNumber,
    this.isCompleted,
    this.isActive,
    this.checkIcon,
    this.bonusAmount,
    this.borderColor,
    this.backgroundColor,
  });
}
