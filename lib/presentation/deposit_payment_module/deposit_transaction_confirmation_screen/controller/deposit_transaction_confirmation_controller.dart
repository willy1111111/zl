import 'package:flutter/services.dart';
import '../models/deposit_transaction_confirmation_model.dart';
import '../../../core/app_export.dart';

class DepositTransactionConfirmationController extends GetxController {
  Rx<DepositTransactionConfirmationModel?> depositTransactionConfirmationModel =
      Rx<DepositTransactionConfirmationModel?>(null);

  @override
  void onInit() {
    super.onInit();
    depositTransactionConfirmationModel.value =
        DepositTransactionConfirmationModel();
  }

  void copyAmount() {
    final amount =
        depositTransactionConfirmationModel.value?.amount?.value ?? '150.00';
    Clipboard.setData(ClipboardData(text: amount));
    Get.snackbar(
      'Copied',
      'Amount copied to clipboard',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: appTheme.colorFF33C3,
      colorText: appTheme.whiteCustom,
      duration: Duration(seconds: 2),
    );
  }

  void copyToClipboard(String text) {
    Clipboard.setData(ClipboardData(text: text));
    Get.snackbar(
      'Copied',
      'Text copied to clipboard',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: appTheme.colorFF33C3,
      colorText: appTheme.whiteCustom,
      duration: Duration(seconds: 2),
    );
  }

  void uploadCertificate() {
    Get.snackbar(
      'Upload',
      'Certificate upload functionality',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: appTheme.colorFF478A,
      colorText: appTheme.whiteCustom,
      duration: Duration(seconds: 2),
    );
  }

  void contactCustomerService() {
    Get.snackbar(
      'Customer Service',
      'Contacting customer service...',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: appTheme.colorFF478A,
      colorText: appTheme.whiteCustom,
      duration: Duration(seconds: 2),
    );
  }

  void handleBottomAction(int index) {
    if (index == 0) {
      // Problem encountered in payment
      Get.snackbar(
        'Support',
        'Problem reported, customer service will contact you',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: appTheme.colorFF2528,
        colorText: appTheme.whiteCustom,
        duration: Duration(seconds: 3),
      );
    } else if (index == 1) {
      // Paid
      Get.snackbar(
        'Payment Confirmed',
        'Payment has been marked as paid',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: appTheme.colorFF33C3,
        colorText: appTheme.whiteCustom,
        duration: Duration(seconds: 3),
      );
    }
  }
}
