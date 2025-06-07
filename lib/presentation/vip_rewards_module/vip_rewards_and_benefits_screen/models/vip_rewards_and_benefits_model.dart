import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class VipRewardsAndBenefitsModel {
  Rx<String>? currentLevel;
  Rx<String>? currentSalary;
  Rx<String>? collectionTime;
  Rx<bool>? hasRewards;

  VipRewardsAndBenefitsModel({
    this.currentLevel,
    this.currentSalary,
    this.collectionTime,
    this.hasRewards,
  });
}
