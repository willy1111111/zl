import 'package:get/get.dart';
import 'package:flutter/services.dart';
import '../models/payment_status_model.dart';
import '../../../core/app_export.dart';

class PaymentStatusController extends GetxController {
  Rx<PaymentStatusModel> paymentStatusModel = PaymentStatusModel().obs;

  @override
  void onInit() {
    super.onInit();
    paymentStatusModel.value = PaymentStatusModel(
      depositAmount: '150.00'.obs,
      transactionDate: '2023-04-23  11:16:32'.obs,
      paymentChannel: 'GCash'.obs,
      paymentChannelDetail: 'GCash-xxxx'.obs,
      depositAccount: 'h709394'.obs,
      depositAmountFormatted: '5,000'.obs,
    );
  }

  void copyAmount() {
    String amount = paymentStatusModel.value.depositAmount?.value ?? '150.00';
    Clipboard.setData(ClipboardData(text: amount));
    Get.snackbar(
      'Copied',
      'Amount copied to clipboard',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void copyDepositAccount() {
    String account =
        paymentStatusModel.value.depositAccount?.value ?? 'h709394';
    Clipboard.setData(ClipboardData(text: account));
    Get.snackbar(
      'Copied',
      'Deposit account copied to clipboard',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void copyDepositAmount() {
    String amount =
        paymentStatusModel.value.depositAmountFormatted?.value ?? '5,000';
    Clipboard.setData(ClipboardData(text: amount));
    Get.snackbar(
      'Copied',
      'Deposit amount copied to clipboard',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void reportPaymentProblem() {
    Get.snackbar(
      'Report Problem',
      'Payment problem report initiated',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void confirmPayment() {
    Get.snackbar(
      'Payment Confirmed',
      'Payment has been confirmed successfully',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void contactCustomerService() {
    Get.snackbar(
      'Customer Service',
      'Contacting customer service...',
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
