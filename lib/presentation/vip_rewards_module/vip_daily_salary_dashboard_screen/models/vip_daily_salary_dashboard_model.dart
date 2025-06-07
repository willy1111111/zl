import 'package:get/get.dart';
import '../../../../core/app_export.dart';

/// This class is used in the [VipDailySalaryDashboardScreen] screen with GetX.

class VipDailySalaryDashboardModel {
  Rx<String>? totalValidBets;
  Rx<String>? estimatedSalary;
  Rx<String>? yesterdaySalary;
  Rx<String>? userLevel;
  Rx<String>? withdrawalFee;
  Rx<String>? withdrawalTimes;
  Rx<String>? withdrawalLimit;

  VipDailySalaryDashboardModel({
    this.totalValidBets,
    this.estimatedSalary,
    this.yesterdaySalary,
    this.userLevel,
    this.withdrawalFee,
    this.withdrawalTimes,
    this.withdrawalLimit,
  });
}
