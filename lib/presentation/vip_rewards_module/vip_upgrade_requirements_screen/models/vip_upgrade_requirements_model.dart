import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class VipUpgradeRequirementsModel {
  Rx<String>? title;
  Rx<String>? amount;
  Rx<String>? currentLevel;
  Rx<String>? progressPercentage;
  Rx<String>? depositProgress;
  Rx<String>? betProgress;

  VipUpgradeRequirementsModel({
    this.title,
    this.amount,
    this.currentLevel,
    this.progressPercentage,
    this.depositProgress,
    this.betProgress,
  });
}
