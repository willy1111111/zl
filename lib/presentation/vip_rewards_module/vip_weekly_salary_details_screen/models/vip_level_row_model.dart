import 'package:get/get.dart';
import '../../../../core/app_export.dart';

/// This class represents a VIP level row in the weekly salary details table.

class VipLevelRowModel {
  Rx<String>? iconPath;
  Rx<String>? levelText;
  Rx<String>? bettingRequirement;
  Rx<String>? depositRequirement;
  Rx<String>? weeklySalary;

  VipLevelRowModel({
    this.iconPath,
    this.levelText,
    this.bettingRequirement,
    this.depositRequirement,
    this.weeklySalary,
  });
}
