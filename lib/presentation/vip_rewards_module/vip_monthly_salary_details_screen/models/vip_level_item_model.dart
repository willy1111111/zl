import 'package:get/get.dart';
import '../../../../core/app_export.dart';

/// This class is used for VIP level items in the monthly salary table.

class VipLevelItemModel {
  Rx<String>? iconPath;
  Rx<String>? levelText;
  Rx<String>? monthlyBetting;
  Rx<String>? monthlyDeposit;
  Rx<String>? monthlySalary;

  VipLevelItemModel({
    this.iconPath,
    this.levelText,
    this.monthlyBetting,
    this.monthlyDeposit,
    this.monthlySalary,
  });
}
