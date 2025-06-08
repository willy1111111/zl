import '../../../core/app_export.dart';
import '../models/deposit_confirmation_model.dart';

class DepositConfirmationController extends GetxController {
  Rx<DepositConfirmationModel?> depositConfirmationModel =
      Rx<DepositConfirmationModel?>(null);
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    depositConfirmationModel.value = DepositConfirmationModel();
  }

  void onCopyPressed(String value) {
    // Handle copy to clipboard functionality
    Get.snackbar(
      'Copied',
      'Value copied to clipboard',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: appTheme.colorFF85D4,
      colorText: appTheme.whiteCustom,
    );
  }

  void onCustomerServicePressed() {
    // Handle customer service navigation or contact
    Get.snackbar(
      'Customer Service',
      'Redirecting to customer service',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: appTheme.colorFF51A0,
      colorText: appTheme.whiteCustom,
    );
  }

  void onBottomBarPressed(int index) {
    switch (index) {
      case 0:
        Get.toNamed(AppRoutes.depositRecordListScreen);
        break;
      case 1:
        Get.toNamed(AppRoutes.depositTransactionConfirmationScreen);
        break;
      case 2:
        Get.toNamed(AppRoutes.walletDepositScreen);
        break;
    }
  }

  @override
  void onClose() {
    super.onClose();
  }
}
