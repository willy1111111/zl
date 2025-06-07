import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class VipRequirementItemModel {
  Rx<String>? level;
  Rx<String>? iconPath;
  Rx<String>? depositAmount;
  Rx<String>? betAmount;
  Rx<String>? upgradeBonus;
  Rx<String>? weeklyCashback;

  VipRequirementItemModel({
    this.level,
    this.iconPath,
    this.depositAmount,
    this.betAmount,
    this.upgradeBonus,
    this.weeklyCashback,
  });
}
