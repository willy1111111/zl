import 'package:flutter/material.dart';
import '../models/add_bank_account_pix_model.dart';
import '../models/wallet_type_model.dart';
import '../../../core/app_export.dart';

class AddBankAccountPixController extends GetxController {
  // Text Controllers
  late TextEditingController payeeNameController;
  late TextEditingController pixKeyController;
  late TextEditingController transactionPasswordController;
  late TextEditingController confirmPasswordController;

  // Observable Variables
  RxList<WalletTypeModel> walletTypes = <WalletTypeModel>[].obs;
  RxInt selectedWalletTypeIndex = 0.obs;
  RxBool isTransactionPasswordVisible = false.obs;
  RxBool isConfirmPasswordVisible = false.obs;
  RxBool showPasswordError = false.obs;
  RxBool isLoading = false.obs;

  // Model
  Rx<AddBankAccountPixModel> addBankAccountPixModel =
      AddBankAccountPixModel().obs;

  @override
  void onInit() {
    super.onInit();
    initializeControllers();
    initializeWalletTypes();
  }

  @override
  void onClose() {
    payeeNameController.dispose();
    pixKeyController.dispose();
    transactionPasswordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }

  void initializeControllers() {
    payeeNameController = TextEditingController();
    pixKeyController = TextEditingController();
    transactionPasswordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  void initializeWalletTypes() {
    walletTypes.value = [
      WalletTypeModel(
        title: 'PIX-CPF'.obs,
        isSelected: true.obs,
      ),
      WalletTypeModel(
        title: 'PIX-CNPJ'.obs,
        isSelected: false.obs,
      ),
      WalletTypeModel(
        title: 'PIX-EMAIL'.obs,
        isSelected: false.obs,
      ),
      WalletTypeModel(
        title: 'PIX-MOBILE'.obs,
        isSelected: false.obs,
      ),
    ];
  }

  void selectWalletType(int index) {
    for (int i = 0; i < walletTypes.length; i++) {
      walletTypes[i].isSelected?.value = i == index;
    }
    selectedWalletTypeIndex.value = index;
    walletTypes.refresh();
  }

  void updatePayeeName(String value) {
    addBankAccountPixModel.value.payeeName?.value = value;
  }

  void updatePixKey(String value) {
    addBankAccountPixModel.value.pixKey?.value = value;
  }

  void updateTransactionPassword(String value) {
    addBankAccountPixModel.value.transactionPassword?.value = value;
    if (value.isNotEmpty) {
      showPasswordError.value = false;
    }
  }

  void updateConfirmPassword(String value) {
    addBankAccountPixModel.value.confirmPassword?.value = value;
  }

  void toggleTransactionPasswordVisibility() {
    isTransactionPasswordVisible.value = !isTransactionPasswordVisible.value;
  }

  void toggleConfirmPasswordVisibility() {
    isConfirmPasswordVisible.value = !isConfirmPasswordVisible.value;
  }

  void onEditPayeeName() {
    // Handle edit payee name action
  }

  void onSubmitPressed() {
    if (validateForm()) {
      submitBankAccount();
    }
  }

  bool validateForm() {
    bool isValid = true;

    if (payeeNameController.text.trim().isEmpty) {
      isValid = false;
    }

    if (pixKeyController.text.trim().isEmpty) {
      isValid = false;
    }

    if (transactionPasswordController.text.trim().isEmpty) {
      showPasswordError.value = true;
      isValid = false;
    }

    if (confirmPasswordController.text.trim().isEmpty) {
      isValid = false;
    }

    if (transactionPasswordController.text != confirmPasswordController.text) {
      isValid = false;
    }

    return isValid;
  }

  void submitBankAccount() {
    isLoading.value = true;

    // Simulate API call
    Future.delayed(Duration(seconds: 2), () {
      isLoading.value = false;
      Get.snackbar(
        'Success',
        'Bank account added successfully!',
        backgroundColor: appTheme.colorFF85D4,
        colorText: appTheme.whiteCustom,
      );
      Get.back();
    });
  }
}
