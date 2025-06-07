import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class GamingHubModel {
  Rx<String>? balanceAmount;
  Rx<String>? jackpotAmount;
  Rx<bool>? isPromoVisible;

  GamingHubModel({
    this.balanceAmount,
    this.jackpotAmount,
    this.isPromoVisible,
  }) {
    balanceAmount = balanceAmount ?? '₱1980.00'.obs;
    jackpotAmount = jackpotAmount ?? '14,091,688.88'.obs;
    isPromoVisible = isPromoVisible ?? true.obs;
  }
}
