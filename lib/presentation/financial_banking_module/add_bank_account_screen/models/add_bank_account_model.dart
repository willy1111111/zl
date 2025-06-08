import 'package:get/get.dart';
import '../../../core/app_export.dart';

class AddBankAccountModel {
  Rx<String>? payeeName;
  Rx<String>? pixKey;
  Rx<String>? transactionPassword;
  Rx<String>? selectedWalletType;

  AddBankAccountModel({
    this.payeeName,
    this.pixKey,
    this.transactionPassword,
    this.selectedWalletType,
  }) {
    payeeName ??= ''.obs;
    pixKey ??= ''.obs;
    transactionPassword ??= ''.obs;
    selectedWalletType ??= 'PIX-CPF'.obs;
  }
}
