import 'package:get/get.dart';
import '../../../core/app_export.dart';

class CasinoHomeModel {
  Rx<String>? balanceAmount;
  Rx<bool>? isPromotionalBannerVisible;
  Rx<String>? jackpotAmount;
  Rx<int>? activityNotificationCount;

  CasinoHomeModel({
    this.balanceAmount,
    this.isPromotionalBannerVisible,
    this.jackpotAmount,
    this.activityNotificationCount,
  });
}
