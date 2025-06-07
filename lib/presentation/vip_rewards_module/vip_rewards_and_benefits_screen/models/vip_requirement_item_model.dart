import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class VipRequirementItemModel {
  Rx<String>? vipIcon;
  Rx<String>? level;
  Rx<String>? depositAmount;
  Rx<String>? betAmount;
  Rx<String>? upgradeBonus;
  Rx<String>? weeklyCashback;

  VipRequirementItemModel({
    this.vipIcon,
    this.level,
    this.depositAmount,
    this.betAmount,
    this.upgradeBonus,
    this.weeklyCashback,
  });
}
