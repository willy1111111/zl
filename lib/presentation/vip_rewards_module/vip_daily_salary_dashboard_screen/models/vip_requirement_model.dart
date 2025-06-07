import 'package:get/get.dart';
import '../../../../core/app_export.dart';

/// This class is used for VIP requirement table rows in the [VipDailySalaryDashboardScreen] screen with GetX.

class VipRequirementModel {
  Rx<String>? level;
  Rx<String>? vipIcon;
  Rx<String>? depositAmount;
  Rx<String>? betAmount;
  Rx<String>? upgradeBonus;
  Rx<String>? weeklyCashback;
  Rx<String>? dailySalary;

  VipRequirementModel({
    this.level,
    this.vipIcon,
    this.depositAmount,
    this.betAmount,
    this.upgradeBonus,
    this.weeklyCashback,
    this.dailySalary,
  });
}
