import 'package:get/get.dart';
import '../../../core/app_export.dart';

class NaradCasinoGameHubModel {
  Rx<String>? balance;
  Rx<String>? jackpotAmount;
  Rx<bool>? isLoading;
  Rx<String>? notificationMessage;
  Rx<int>? selectedCategoryIndex;
  Rx<int>? selectedBottomNavIndex;

  NaradCasinoGameHubModel({
    this.balance,
    this.jackpotAmount,
    this.isLoading,
    this.notificationMessage,
    this.selectedCategoryIndex,
    this.selectedBottomNavIndex,
  });
}
