import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class JetBetCasinoModel {
  Rx<String>? balance;
  Rx<String>? currency;
  Rx<String>? jackpotAmount;

  JetBetCasinoModel({
    this.balance,
    this.currency,
    this.jackpotAmount,
  });
}
