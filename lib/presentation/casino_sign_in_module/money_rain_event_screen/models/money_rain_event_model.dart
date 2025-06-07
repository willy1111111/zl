import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class MoneyRainEventModel {
  Rx<String>? balanceAmount;
  Rx<String>? jackpotAmount;
  Rx<bool>? isMoneyRainModalVisible;
  Rx<String>? countdownTimer;
  Rx<int>? selectedSidebarIndex;

  MoneyRainEventModel({
    this.balanceAmount,
    this.jackpotAmount,
    this.isMoneyRainModalVisible,
    this.countdownTimer,
    this.selectedSidebarIndex,
  });
}
