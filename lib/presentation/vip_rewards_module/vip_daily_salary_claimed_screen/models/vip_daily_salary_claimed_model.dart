import 'package:get/get.dart';
import '../../../../core/app_export.dart';

/// This class is used in the [VipDailySalaryClaimedScreen] screen with GetX.

class VipDailySalaryClaimedModel {
  Rx<String>? totalValidBets;
  Rx<String>? estimatedSalary;
  Rx<String>? yesterdaySalary;
  Rx<bool>? isReceived;

  VipDailySalaryClaimedModel({
    this.totalValidBets,
    this.estimatedSalary,
    this.yesterdaySalary,
    this.isReceived,
  });
}
