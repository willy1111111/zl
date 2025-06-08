import 'package:get/get.dart';
import '../../../core/app_export.dart';

class TeamsCenterDashboardModel {
  Rx<String>? userName;
  Rx<String>? userNumber;
  Rx<String>? balance;
  Rx<String>? vipLevel;

  TeamsCenterDashboardModel({
    this.userName,
    this.userNumber,
    this.balance,
    this.vipLevel,
  }) {
    userName = userName ?? 'User name'.obs;
    userNumber = userNumber ?? '98955464616'.obs;
    balance = balance ?? '₱ 1324.00'.obs;
    vipLevel = vipLevel ?? 'VIP 4'.obs;
  }
}
