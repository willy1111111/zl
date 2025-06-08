import 'package:get/get.dart';
import '../../../core/app_export.dart';

class NaradGamingPlatformHomeModel {
  Rx<String>? userBalance;
  Rx<String>? jackpotAmount;
  Rx<bool>? showModals;
  Rx<int>? selectedBottomNavIndex;

  NaradGamingPlatformHomeModel({
    this.userBalance,
    this.jackpotAmount,
    this.showModals,
    this.selectedBottomNavIndex,
  });
}
