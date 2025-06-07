import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class DailySignInItemModel {
  Rx<String>? day;
  Rx<String>? amount;
  Rx<String>? coinImage;
  Rx<bool>? isCompleted;
  Rx<bool>? isActive;
  Rx<int>? amountColor;
  Rx<int>? backgroundColor;
  Rx<int>? borderColor;
  Rx<bool>? showBonusText;
  Rx<String>? bonusText;

  DailySignInItemModel({
    this.day,
    this.amount,
    this.coinImage,
    this.isCompleted,
    this.isActive,
    this.amountColor,
    this.backgroundColor,
    this.borderColor,
    this.showBonusText,
    this.bonusText,
  }) {
    day = day ?? ''.obs;
    amount = amount ?? ''.obs;
    coinImage = coinImage ?? ''.obs;
    isCompleted = isCompleted ?? false.obs;
    isActive = isActive ?? false.obs;
    amountColor = amountColor ?? 0xFFC0C8D2.obs;
    backgroundColor = backgroundColor ?? 0xFF25282D.obs;
    borderColor = borderColor ?? 0xFF292F36.obs;
    showBonusText = showBonusText ?? false.obs;
    bonusText = bonusText ?? ''.obs;
  }
}
