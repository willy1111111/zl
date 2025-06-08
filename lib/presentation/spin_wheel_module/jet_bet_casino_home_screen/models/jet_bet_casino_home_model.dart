import 'package:get/get.dart';

import '../../../core/app_export.dart';

class JetBetCasinoHomeModel {
  Rx<String>? logoPath;
  Rx<String>? balance;
  Rx<String>? jackpotAmount;
  Rx<String>? promotionalText;

  JetBetCasinoHomeModel({
    this.logoPath,
    this.balance,
    this.jackpotAmount,
    this.promotionalText,
  });
}
