import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used for bank option items in the [WalletDepositPaymentScreen] screen with GetX.

class BankOptionModel {
  Rx<String>? name;
  Rx<bool>? isSelected;

  BankOptionModel({
    this.name,
    this.isSelected,
  });
}
