import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class NaradGamingDashboardModel {
  Rx<String>? userName;
  Rx<String>? userNumber;
  Rx<String>? totalBalance;
  Rx<String>? totalBonusClaimed;
  Rx<String>? vipLevel;

  NaradGamingDashboardModel({
    this.userName,
    this.userNumber,
    this.totalBalance,
    this.totalBonusClaimed,
    this.vipLevel,
  });
}
