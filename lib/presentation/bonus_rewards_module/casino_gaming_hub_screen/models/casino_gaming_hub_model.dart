import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class CasinoGamingHubModel {
  Rx<String>? balance;
  Rx<String>? jackpotAmount;
  Rx<bool>? isPromoBannerVisible;
  Rx<bool>? isInstallPromptVisible;

  CasinoGamingHubModel({
    this.balance,
    this.jackpotAmount,
    this.isPromoBannerVisible,
    this.isInstallPromptVisible,
  });

  CasinoGamingHubModel.defaultValues() {
    balance = 'R\$1980.00'.obs;
    jackpotAmount = '14,091,688.88'.obs;
    isPromoBannerVisible = true.obs;
    isInstallPromptVisible = true.obs;
  }
}
