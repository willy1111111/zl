import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used for payment method items in the [WalletDepositPaymentScreen] screen with GetX.

class PaymentMethodModel {
  Rx<String>? iconPath;
  Rx<String>? name;
  Rx<bool>? isSelected;
  Rx<bool>? hasWhiteBackground;

  PaymentMethodModel({
    this.iconPath,
    this.name,
    this.isSelected,
    this.hasWhiteBackground,
  });
}
