import 'package:get/get.dart';
import '../../../core/app_export.dart';

class UserDashboardModel {
  Rx<String>? userName;
  Rx<String>? userPhone;
  Rx<String>? vipLevel;
  Rx<String>? totalBalance;
  Rx<String>? totalBonusClaimed;

  UserDashboardModel({
    this.userName,
    this.userPhone,
    this.vipLevel,
    this.totalBalance,
    this.totalBonusClaimed,
  });
}
