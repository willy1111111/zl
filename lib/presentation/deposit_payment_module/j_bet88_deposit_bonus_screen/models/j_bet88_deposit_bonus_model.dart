import 'package:get/get.dart';

import '../../../core/app_export.dart';
import './deposit_bonus_card_model.dart';

class JBet88DepositBonusModel {
  RxList<DepositBonusCardModel>? depositCards;
  Rx<DepositBonusCardModel>? firstDeposit;
  Rx<DepositBonusCardModel>? secondDeposit;
  Rx<DepositBonusCardModel>? thirdDeposit;
  Rx<String>? bonusAmount;
  Rx<String>? currencySymbol;
  Rx<String>? noteText;

  JBet88DepositBonusModel({
    this.depositCards,
    this.firstDeposit,
    this.secondDeposit,
    this.thirdDeposit,
    this.bonusAmount,
    this.currencySymbol,
    this.noteText,
  }) {
    depositCards = depositCards ?? <DepositBonusCardModel>[].obs;
    bonusAmount = bonusAmount ?? '8,888'.obs;
    currencySymbol = currencySymbol ?? '₱'.obs;
    noteText =
        noteText ?? 'Note: Select your desired bonus at deposit page'.obs;
  }
}
