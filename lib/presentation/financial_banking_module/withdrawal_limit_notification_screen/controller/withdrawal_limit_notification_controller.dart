import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/withdrawal_limit_notification_model.dart';

class WithdrawalLimitNotificationController extends GetxController {
  late TextEditingController passwordController;

  RxBool isModalVisible = true.obs;
  Rx<WithdrawalLimitNotificationModel> withdrawalModel =
      WithdrawalLimitNotificationModel().obs;

  @override
  void onInit() {
    super.onInit();
    passwordController = TextEditingController();
    withdrawalModel.value = WithdrawalLimitNotificationModel();
  }

  @override
  void onClose() {
    passwordController.dispose();
    super.onClose();
  }

  void onSubmitPressed() {
    // Handle withdrawal submission
    Get.snackbar(
      'Withdrawal',
      'Withdrawal request submitted',
      backgroundColor: appTheme.colorFF85D4,
      colorText: appTheme.whiteCustom,
    );
  }

  void onWithdrawalRecordPressed() {
    // Navigate to withdrawal record screen
    // Get.toNamed(AppRoutes.withdrawalRecordScreen);
  }

  void closeModal() {
    isModalVisible.value = false;
  }

  void showModal() {
    isModalVisible.value = true;
  }
}
