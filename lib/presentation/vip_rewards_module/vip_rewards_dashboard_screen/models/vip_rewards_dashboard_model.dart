import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class VipRewardsDashboardModel {
  Rx<String>? currentVipLevel;
  Rx<String>? weeklySalary;
  Rx<String>? collectionTime;
  Rx<String>? timeRemaining;
  Rx<bool>? canClaimReward;

  VipRewardsDashboardModel({
    this.currentVipLevel,
    this.weeklySalary,
    this.collectionTime,
    this.timeRemaining,
    this.canClaimReward,
  });
}
