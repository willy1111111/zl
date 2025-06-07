import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class Jbet88UserDashboardModel {
  Rx<String>? userName;
  Rx<String>? userId;
  Rx<String>? vipLevel;
  Rx<String>? totalBalance;
  Rx<String>? totalBonusClaimed;

  Jbet88UserDashboardModel({
    this.userName,
    this.userId,
    this.vipLevel,
    this.totalBalance,
    this.totalBonusClaimed,
  });
}
