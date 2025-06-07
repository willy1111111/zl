import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class DailyProgressItemModel {
  Rx<String>? dayLabel;
  Rx<String>? bonusAmount;
  Rx<String>? coinIcon;
  Rx<String>? checkIcon;
  Rx<String>? bonusIndicator;
  Rx<String>? extraBonus;
  Rx<bool>? isCompleted;
  Rx<bool>? isCurrentDay;

  DailyProgressItemModel({
    this.dayLabel,
    this.bonusAmount,
    this.coinIcon,
    this.checkIcon,
    this.bonusIndicator,
    this.extraBonus,
    this.isCompleted,
    this.isCurrentDay,
  });
}
