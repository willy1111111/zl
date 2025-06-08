import 'package:get/get.dart';
import '../../../core/app_export.dart';

class AddBankAccountPixModel {
  Rx<String>? payeeName;
  Rx<String>? pixKey;
  Rx<String>? transactionPassword;
  Rx<String>? confirmPassword;
  Rx<String>? selectedWalletType;

  AddBankAccountPixModel({
    this.payeeName,
    this.pixKey,
    this.transactionPassword,
    this.confirmPassword,
    this.selectedWalletType,
  }) {
    payeeName = payeeName ?? ''.obs;
    pixKey = pixKey ?? ''.obs;
    transactionPassword = transactionPassword ?? ''.obs;
    confirmPassword = confirmPassword ?? ''.obs;
    selectedWalletType = selectedWalletType ?? 'PIX-CPF'.obs;
  }
}
