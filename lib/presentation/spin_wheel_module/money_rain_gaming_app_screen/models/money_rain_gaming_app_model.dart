import 'package:get/get.dart';

import '../../../core/app_export.dart';

class MoneyRainGamingAppModel {
  Rx<String>? userBalance;
  Rx<String>? jackpotAmount;
  Rx<bool>? isMoneyRainModalVisible;
  Rx<int>? selectedBottomNavIndex;

  MoneyRainGamingAppModel({
    this.userBalance,
    this.jackpotAmount,
    this.isMoneyRainModalVisible,
    this.selectedBottomNavIndex,
  });
}
