import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

/// This class is used in the [VipDailySalaryDashboardScreen] screen with GetX.
class VipDailySalaryDashboardModel {
  Rx<String>? totalValidBetsToday;
  Rx<String>? estimatedSalaryToday;
  Rx<String>? salaryFromYesterday;

  VipDailySalaryDashboardModel({
    this.totalValidBetsToday,
    this.estimatedSalaryToday,
    this.salaryFromYesterday,
  });
}
