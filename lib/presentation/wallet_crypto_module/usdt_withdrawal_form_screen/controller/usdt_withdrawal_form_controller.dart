import 'package:flutter/material.dart';
import '../models/usdt_withdrawal_form_model.dart';
import '../../../core/app_export.dart';

class UsdtWithdrawalFormController extends GetxController {
  final selectedTabIndex = 2.obs;
  final paymentQuantity = '2000'.obs;
  final isPasswordHidden = true.obs;
  final usdtWithdrawalFormModel = Rx<UsdtWithdrawalFormModel?>(null);

  late TextEditingController amountController;
  late TextEditingController passwordController;

  @override
  void onInit() {
    super.onInit();
    amountController = TextEditingController(text: '2000');
    passwordController = TextEditingController();
    usdtWithdrawalFormModel.value = UsdtWithdrawalFormModel();
  }

  @override
  void onClose() {
    amountController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void selectTab(int index) {
    selectedTabIndex.value = index;
  }

  void updateAmount(String value) {
    paymentQuantity.value = value;
    amountController.text = value;
  }

  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  void onBetNowTap() {
    // Navigate to betting section
    print('Navigate to betting section');
  }

  void onSubmitPressed() {
    final amount = amountController.text;
    final password = passwordController.text;

    if (amount.isEmpty || password.isEmpty) {
      Get.snackbar(
        'Error',
        'Please fill in all required fields',
        backgroundColor: appTheme.redCustom,
        colorText: appTheme.whiteCustom,
      );
      return;
    }

    // Simulate withdrawal processing
    Get.snackbar(
      'Success',
      'Withdrawal request submitted successfully!',
      backgroundColor: appTheme.colorFF85D4,
      colorText: appTheme.whiteCustom,
    );
  }

  void onWithdrawalRecordTap() {
    // Navigate to withdrawal history
    print('Navigate to withdrawal history');
  }

  void onFabPressed() {
    // Handle floating action button press
    print('FAB pressed');
  }
}
