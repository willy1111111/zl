import 'package:get/get.dart';
import '../../../core/app_export.dart';

class NaradCasinoGamingPlatformModel {
  Rx<String>? logoImage;
  Rx<String>? currentBalance;
  Rx<String>? mainBannerImage;
  Rx<String>? notificationText;
  Rx<String>? jackpotAmount;

  NaradCasinoGamingPlatformModel({
    this.logoImage,
    this.currentBalance,
    this.mainBannerImage,
    this.notificationText,
    this.jackpotAmount,
  });
}
