import 'package:get/get.dart';
import '../../../core/app_export.dart';

class UserDashboardModel {
  Rx<String>? userName;
  Rx<String>? userId;
  Rx<String>? totalBalance;
  Rx<String>? totalBonusClaimed;

  UserDashboardModel({
    this.userName,
    this.userId,
    this.totalBalance,
    this.totalBonusClaimed,
  });
}
