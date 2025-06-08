import 'package:flutter/material.dart';
import '../models/add_bank_account_model.dart';
import '../models/wallet_type_option_model.dart';
import '../../../core/app_export.dart';

class AddBankAccountController extends GetxController {
  // Text controllers
  late TextEditingController payeeNameController;
  late TextEditingController pixKeyController;
  late TextEditingController transactionPasswordController;

  // Observable variables
  RxBool showPasswordError = false.obs;
  RxBool isPasswordVisible = false.obs;
  RxInt selectedWalletTypeIndex = 0.obs;

  // Model instance
  Rx<AddBankAccountModel> addBankAccountModel = AddBankAccountModel().obs;

  // Wallet types list
  RxList<WalletTypeOptionModel> walletTypes = <WalletTypeOptionModel>[].obs;

  @override
  void onInit() {
    super.onInit();

    // Initialize text controllers
    payeeNameController = TextEditingController();
    pixKeyController = TextEditingController();
    transactionPasswordController = TextEditingController();

    // Initialize wallet types
    _initializeWalletTypes();

    // Initialize model
    addBankAccountModel.value = AddBankAccountModel();
  }

  @override
  void onClose() {
    payeeNameController.dispose();
    pixKeyController.dispose();
    transactionPasswordController.dispose();
    super.onClose();
  }

  void _initializeWalletTypes() {
    walletTypes.value = [
      WalletTypeOptionModel(
        type: 'PIX-CPF'.obs,
        isSelected: true.obs,
      ),
      WalletTypeOptionModel(
        type: 'PIX-CNPJ'.obs,
        isSelected: false.obs,
      ),
      WalletTypeOptionModel(
        type: 'PIX-EMAIL'.obs,
        isSelected: false.obs,
      ),
      WalletTypeOptionModel(
        type: 'PIX-MOBILE'.obs,
        isSelected: false.obs,
      ),
    ];
  }

  void updatePayeeName(String value) {
    addBankAccountModel.value.payeeName?.value = value;
  }

  void updatePixKey(String value) {
    addBankAccountModel.value.pixKey?.value = value;
  }

  void updateTransactionPassword(String value) {
    addBankAccountModel.value.transactionPassword?.value = value;

    // Hide error message when user starts typing
    if (showPasswordError.value && value.isNotEmpty) {
      showPasswordError.value = false;
    }
  }

  void selectWalletType(int index) {
    // Reset all selections
    for (int i = 0; i < walletTypes.length; i++) {
      walletTypes[i].isSelected?.value = false;
    }

    // Set selected option
    walletTypes[index].isSelected?.value = true;
    selectedWalletTypeIndex.value = index;

    // Update model
    addBankAccountModel.value.selectedWalletType?.value =
        walletTypes[index].type?.value ?? '';
  }

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  void onEditPayeeName() {
    // Handle edit payee name action
    print('Edit payee name tapped');
  }

  void onSubmitPressed() {
    bool isValid = true;

    // Validate payee name
    if (payeeNameController.text.trim().isEmpty) {
      isValid = false;
    }

    // Validate PIX key
    if (pixKeyController.text.trim().isEmpty) {
      isValid = false;
    }

    // Validate transaction password
    if (transactionPasswordController.text.trim().isEmpty) {
      showPasswordError.value = true;
      isValid = false;
    } else {
      showPasswordError.value = false;
    }

    if (isValid) {
      // Process form submission
      Get.snackbar(
        'Success',
        'Bank account added successfully!',
        backgroundColor: appTheme.colorFF85D4,
        colorText: appTheme.whiteCustom,
      );

      // Navigate back
      Get.back();
    } else {
      Get.snackbar(
        'Error',
        'Please fill in all required fields',
        backgroundColor: appTheme.colorFFF652,
        colorText: appTheme.whiteCustom,
      );
    }
  }
}
