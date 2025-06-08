import 'package:get/get.dart';

import '../../../core/app_export.dart';

class NaradMoneyRainPromotionModel {
  Rx<String> balance;
  Rx<String> jackpotAmount;
  Rx<String> nextRoundTimer;
  Rx<bool> showMoneyRainDialog;

  NaradMoneyRainPromotionModel({
    String? balance,
    String? jackpotAmount,
    String? nextRoundTimer,
    bool? showMoneyRainDialog,
  })  : balance = (balance ?? 'R\$1980.00').obs,
        jackpotAmount = (jackpotAmount ?? '14,091,688.88').obs,
        nextRoundTimer = (nextRoundTimer ?? 'Next Round 18:00:01').obs,
        showMoneyRainDialog = (showMoneyRainDialog ?? true).obs;
}
