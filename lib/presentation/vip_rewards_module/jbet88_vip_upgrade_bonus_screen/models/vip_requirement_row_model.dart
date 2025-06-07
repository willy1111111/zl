import 'package:get/get.dart';
import '../../../../core/app_export.dart';

/// This class is used for VIP requirement rows in the [Jbet88VipUpgradeBonusScreen] screen with GetX.

class VipRequirementRowModel {
  Rx<String>? vipIcon;
  Rx<String>? vipLevel;
  Rx<String>? depositAmount;
  Rx<String>? betAmount;
  Rx<String>? upgradeBonus;
  Rx<String>? weeklyCashback;

  VipRequirementRowModel({
    this.vipIcon,
    this.vipLevel,
    this.depositAmount,
    this.betAmount,
    this.upgradeBonus,
    this.weeklyCashback,
  });
}
