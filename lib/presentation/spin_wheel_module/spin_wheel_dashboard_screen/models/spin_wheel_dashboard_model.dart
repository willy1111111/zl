import 'package:get/get.dart';

import '../../../core/app_export.dart';

class SpinWheelDashboardModel {
  Rx<String>? balance;
  Rx<String>? withdrawalRequirement;
  Rx<int>? progressPercentage;
  Rx<String>? spinBonusTotal;
  Rx<String>? userName;
  Rx<String>? userWinAmount;

  SpinWheelDashboardModel({
    this.balance,
    this.withdrawalRequirement,
    this.progressPercentage,
    this.spinBonusTotal,
    this.userName,
    this.userWinAmount,
  });
}
