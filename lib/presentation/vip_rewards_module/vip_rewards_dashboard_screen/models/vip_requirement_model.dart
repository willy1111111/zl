import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class VipRequirementModel {
  Rx<String>? level;
  Rx<String>? iconPath;
  Rx<String>? depositAmount;
  Rx<String>? betAmount;
  Rx<String>? upgradeBonus;
  Rx<String>? weeklyCashback;

  VipRequirementModel({
    this.level,
    this.iconPath,
    this.depositAmount,
    this.betAmount,
    this.upgradeBonus,
    this.weeklyCashback,
  });
}
