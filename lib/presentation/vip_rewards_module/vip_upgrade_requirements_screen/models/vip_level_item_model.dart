import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class VipLevelItemModel {
  Rx<String>? iconPath;
  Rx<String>? levelText;
  Rx<String>? depositAmount;
  Rx<String>? betAmount;
  Rx<String>? upgradeBonus;
  Rx<String>? weeklyCashback;

  VipLevelItemModel({
    this.iconPath,
    this.levelText,
    this.depositAmount,
    this.betAmount,
    this.upgradeBonus,
    this.weeklyCashback,
  });
}
