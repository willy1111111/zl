import 'package:get/get.dart';
import '../../../core/app_export.dart';

class JetbetGamingHubModel {
  Rx<String>? logoImage;
  Rx<String>? balance;
  Rx<String>? currencyIcon;
  Rx<String>? downloadBannerImage;
  Rx<String>? notificationIcon;
  Rx<String>? notificationText;
  Rx<String>? jackpotAmount;

  JetbetGamingHubModel({
    this.logoImage,
    this.balance,
    this.currencyIcon,
    this.downloadBannerImage,
    this.notificationIcon,
    this.notificationText,
    this.jackpotAmount,
  });
}
