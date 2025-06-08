import 'package:get/get.dart';
import '../../../core/app_export.dart';

class VipRequirementItemModel {
  Rx<String>? vipLevel;
  Rx<String>? vipIcon;
  Rx<String>? depositAmount;
  Rx<String>? betAmount;
  Rx<String>? upgradeBonus;
  Rx<String>? weeklyCashback;

  VipRequirementItemModel({
    this.vipLevel,
    this.vipIcon,
    this.depositAmount,
    this.betAmount,
    this.upgradeBonus,
    this.weeklyCashback,
  });
}
