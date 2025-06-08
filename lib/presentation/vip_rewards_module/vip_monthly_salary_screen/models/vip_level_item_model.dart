import 'package:get/get.dart';
import '../../../core/app_export.dart';

class VipLevelItemModel {
  Rx<String>? level;
  Rx<String>? iconPath;
  Rx<String>? bettingRequirement;
  Rx<String>? depositRequirement;
  Rx<String>? monthlySalary;
  Rx<bool>? isRewardEligible;

  VipLevelItemModel({
    this.level,
    this.iconPath,
    this.bettingRequirement,
    this.depositRequirement,
    this.monthlySalary,
    this.isRewardEligible,
  });
}
