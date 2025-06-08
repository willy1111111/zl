import 'package:get/get.dart';
import '../../../core/app_export.dart';

class GamingBonusDashboardModel {
  Rx<String>? totalBonusAmount;
  Rx<String>? currentBalance;
  Rx<bool>? isNoticesVisible;

  GamingBonusDashboardModel({
    this.totalBonusAmount,
    this.currentBalance,
    this.isNoticesVisible,
  });
}
