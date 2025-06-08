import 'package:get/get.dart';
import '../../../core/app_export.dart';

class CryptoWalletPasswordSetupModel {
  Rx<String>? withdrawalAmount;
  Rx<String>? password;
  Rx<String>? balanceAmount;
  Rx<bool>? isVerified;

  CryptoWalletPasswordSetupModel({
    this.withdrawalAmount,
    this.password,
    this.balanceAmount,
    this.isVerified,
  });
}
