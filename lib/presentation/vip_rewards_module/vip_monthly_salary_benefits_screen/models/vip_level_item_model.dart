import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class VipLevelItemModel {
  Rx<String>? iconPath;
  Rx<String>? level;
  Rx<String>? depositAmount;
  Rx<String>? betAmount;
  Rx<String>? upgradeBonus;
  Rx<String>? weeklyCashback;

  VipLevelItemModel({
    this.iconPath,
    this.level,
    this.depositAmount,
    this.betAmount,
    this.upgradeBonus,
    this.weeklyCashback,
  });
}
