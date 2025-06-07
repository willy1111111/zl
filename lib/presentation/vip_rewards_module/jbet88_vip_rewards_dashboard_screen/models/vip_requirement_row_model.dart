import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class VipRequirementRowModel {
  Rx<String>? iconPath;
  Rx<String>? level;
  Rx<String>? depositAmount;
  Rx<String>? betAmount;
  Rx<String>? upgradeBonus;
  Rx<String>? weeklyCashback;

  VipRequirementRowModel({
    this.iconPath,
    this.level,
    this.depositAmount,
    this.betAmount,
    this.upgradeBonus,
    this.weeklyCashback,
  });
}
