import 'package:get/get.dart';
import '../../../core/app_export.dart';

class VipLevelRowModel {
  Rx<String>? levelIcon;
  Rx<String>? levelText;
  Rx<String>? depositAmount;
  Rx<String>? betAmount;
  Rx<String>? upgradeBonus;
  Rx<String>? weeklyCashback;

  VipLevelRowModel({
    this.levelIcon,
    this.levelText,
    this.depositAmount,
    this.betAmount,
    this.upgradeBonus,
    this.weeklyCashback,
  }) {
    levelIcon = levelIcon ?? ''.obs;
    levelText = levelText ?? ''.obs;
    depositAmount = depositAmount ?? ''.obs;
    betAmount = betAmount ?? ''.obs;
    upgradeBonus = upgradeBonus ?? ''.obs;
    weeklyCashback = weeklyCashback ?? ''.obs;
  }
}
