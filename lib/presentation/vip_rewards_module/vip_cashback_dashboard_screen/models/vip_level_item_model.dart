import 'package:get/get.dart';
import '../../../../core/app_export.dart';

/// This class is used for VIP level items in the requirements table.

class VipLevelItemModel {
  Rx<String>? vipIcon;
  Rx<String>? levelText;
  Rx<String>? depositAmount;
  Rx<String>? betAmount;
  Rx<String>? upgradeBonus;
  Rx<String>? weeklyCashback;

  VipLevelItemModel({
    this.vipIcon,
    this.levelText,
    this.depositAmount,
    this.betAmount,
    this.upgradeBonus,
    this.weeklyCashback,
  });
}
