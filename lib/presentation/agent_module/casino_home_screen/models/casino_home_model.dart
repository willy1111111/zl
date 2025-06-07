import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class CasinoHomeModel {
  Rx<String>? logoImagePath;
  Rx<String>? balanceAmount;
  Rx<String>? jackpotAmount;
  Rx<bool>? showPromotionalBanner;
  Rx<String>? promotionalText;
  Rx<String>? emailAddress;
  Rx<String>? copyrightText;

  CasinoHomeModel({
    this.logoImagePath,
    this.balanceAmount,
    this.jackpotAmount,
    this.showPromotionalBanner,
    this.promotionalText,
    this.emailAddress,
    this.copyrightText,
  });
}
