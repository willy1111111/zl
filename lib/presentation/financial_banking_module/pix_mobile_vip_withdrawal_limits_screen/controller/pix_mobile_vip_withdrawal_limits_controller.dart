import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/pix_mobile_vip_withdrawal_limits_model.dart';
import '../models/vip_level_model.dart';

class PixMobileVipWithdrawalLimitsController extends GetxController {
  // Observable variables
  final isVipModalVisible = false.obs;
  final withdrawalFee = Rx<String?>(null);
  final pixMobileVipWithdrawalLimitsModel =
      Rx<PixMobileVipWithdrawalLimitsModel?>(null);

  // Controllers
  late TextEditingController amountController;
  late TextEditingController passwordController;

  // VIP levels list
  final RxList<VipLevelModel> vipLevels = <VipLevelModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    amountController = TextEditingController(text: '999');
    passwordController = TextEditingController();
    pixMobileVipWithdrawalLimitsModel.value =
        PixMobileVipWithdrawalLimitsModel();
    withdrawalFee.value = '₱0';
    _initializeVipLevels();
  }

  @override
  void onClose() {
    amountController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void _initializeVipLevels() {
    vipLevels.value = [
      VipLevelModel(
        level: 'Lv.0'.obs,
        iconPath: ImageConstant.imgIconvip0.obs,
        withdrawalFee: '3%'.obs,
        numberOfWithdrawals: '1'.obs,
        withdrawalLimit: '1-200'.obs,
      ),
      VipLevelModel(
        level: 'Lv.1'.obs,
        iconPath: ImageConstant.imgIconvip1.obs,
        withdrawalFee: '3%'.obs,
        numberOfWithdrawals: '1'.obs,
        withdrawalLimit: '1-200'.obs,
      ),
      VipLevelModel(
        level: 'Lv.2'.obs,
        iconPath: ImageConstant.imgIconvip2.obs,
        withdrawalFee: '3%'.obs,
        numberOfWithdrawals: '1'.obs,
        withdrawalLimit: '1-200'.obs,
      ),
      VipLevelModel(
        level: 'Lv.3'.obs,
        iconPath: ImageConstant.imgIconvip3.obs,
        withdrawalFee: '3%'.obs,
        numberOfWithdrawals: '1'.obs,
        withdrawalLimit: '1-200'.obs,
      ),
      VipLevelModel(
        level: 'Lv.4'.obs,
        iconPath: ImageConstant.imgIconvip4.obs,
        withdrawalFee: '3%'.obs,
        numberOfWithdrawals: '1'.obs,
        withdrawalLimit: '1-200'.obs,
      ),
      VipLevelModel(
        level: 'Lv.5'.obs,
        iconPath: ImageConstant.imgIconvip5.obs,
        withdrawalFee: '--'.obs,
        numberOfWithdrawals: '1'.obs,
        withdrawalLimit: '1-200'.obs,
      ),
      VipLevelModel(
        level: 'Lv.6'.obs,
        iconPath: ImageConstant.imgIconvip6.obs,
        withdrawalFee: '3%'.obs,
        numberOfWithdrawals: '1'.obs,
        withdrawalLimit: '1-200'.obs,
      ),
      VipLevelModel(
        level: 'Lv.7'.obs,
        iconPath: ImageConstant.imgIconvip7.obs,
        withdrawalFee: '3%'.obs,
        numberOfWithdrawals: '1'.obs,
        withdrawalLimit: '1-200'.obs,
      ),
      VipLevelModel(
        level: 'Lv.8'.obs,
        iconPath: ImageConstant.imgIconvip8.obs,
        withdrawalFee: '3%'.obs,
        numberOfWithdrawals: '2'.obs,
        withdrawalLimit: '1-200'.obs,
      ),
      VipLevelModel(
        level: 'Lv.9'.obs,
        iconPath: ImageConstant.imgIconvip9.obs,
        withdrawalFee: '--'.obs,
        numberOfWithdrawals: '3'.obs,
        withdrawalLimit: '1-200'.obs,
      ),
      VipLevelModel(
        level: 'Lv.10'.obs,
        iconPath: ImageConstant.imgIconvip10.obs,
        withdrawalFee: '--'.obs,
        numberOfWithdrawals: 'unlimited'.obs,
        withdrawalLimit: 'unlimited'.obs,
      ),
    ];
  }

  void onAmountChanged(String value) {
    // Calculate withdrawal fee based on amount
    if (value.isNotEmpty) {
      double amount = double.tryParse(value) ?? 0;
      double fee = amount * 0.03; // 3% fee
      withdrawalFee.value = '₱${fee.toStringAsFixed(2)}';
    } else {
      withdrawalFee.value = '₱0';
    }
  }

  void clearAmount() {
    amountController.clear();
    withdrawalFee.value = '₱0';
  }

  void onSubmitPressed() {
    if (amountController.text.isEmpty) {
      Get.snackbar('Error', 'Please enter withdrawal amount');
      return;
    }

    if (passwordController.text.isEmpty) {
      Get.snackbar('Error', 'Please enter transaction password');
      return;
    }

    // Process withdrawal submission
    Get.snackbar('Success', 'Withdrawal request submitted');
  }

  void onWithdrawalRecordPressed() {
    // Navigate to withdrawal record screen
    // Implementation depends on available routes
  }

  void showVipModal() {
    isVipModalVisible.value = true;
  }

  void hideVipModal() {
    isVipModalVisible.value = false;
  }
}
