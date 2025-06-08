import 'package:get/get.dart';
import '../../../core/app_export.dart';

class NaradGamingCasinoHomeModel {
  Rx<String>? currencySymbol;
  Rx<String>? balance;
  Rx<String>? jackpotAmount;
  Rx<int>? vipNotificationCount;

  NaradGamingCasinoHomeModel({
    this.currencySymbol,
    this.balance,
    this.jackpotAmount,
    this.vipNotificationCount,
  });
}
