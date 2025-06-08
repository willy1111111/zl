import 'package:get/get.dart';
import '../models/withdrawal_success_model.dart';
import '../../../core/app_export.dart';

class WithdrawalSuccessController extends GetxController {
  WithdrawalSuccessModel withdrawalSuccessModel = WithdrawalSuccessModel();

  @override
  void onInit() {
    super.onInit();
    initializeData();
  }

  void initializeData() {
    withdrawalSuccessModel.amount.value = '₱500.00';
    withdrawalSuccessModel.withdrawalAccount.value = '9409303930';
    withdrawalSuccessModel.withdrawalMethod.value = 'Account wallet';
    withdrawalSuccessModel.isWithdrawalCompleted.value = true;
  }

  void onWithdrawButtonPressed() {
    // Handle withdraw button press
    // Navigate to withdrawal confirmation or process withdrawal
  }

  void onCloseButtonPressed() {
    Get.back();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
