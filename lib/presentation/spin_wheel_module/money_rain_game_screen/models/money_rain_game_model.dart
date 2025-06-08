import 'package:get/get.dart';

import '../../../core/app_export.dart';

class MoneyRainGameModel {
  Rx<String>? userBalance;
  Rx<String>? jackpotAmount;
  Rx<String>? prizeAmount;
  Rx<bool>? showMoneyRainPopup;
  RxInt? selectedBottomNavIndex;
  RxInt? selectedSidebarIndex;

  MoneyRainGameModel({
    this.userBalance,
    this.jackpotAmount,
    this.prizeAmount,
    this.showMoneyRainPopup,
    this.selectedBottomNavIndex,
    this.selectedSidebarIndex,
  });
}
