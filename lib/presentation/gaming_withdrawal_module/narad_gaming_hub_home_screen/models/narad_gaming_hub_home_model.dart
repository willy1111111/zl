import 'package:get/get.dart';
import '../../../core/app_export.dart';

class NaradGamingHubHomeModel {
  Rx<String>? currentBalance;
  Rx<String>? jackpotAmount;
  Rx<bool>? isPromotionalBannerVisible;

  NaradGamingHubHomeModel({
    this.currentBalance,
    this.jackpotAmount,
    this.isPromotionalBannerVisible,
  });
}
