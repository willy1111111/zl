import '../models/wallet_withdrawal_requirements_model.dart';
import '../../../core/app_export.dart';

class WalletWithdrawalRequirementsController extends GetxController {
  // Observable variables
  final isModalVisible = false.obs;
  final walletWithdrawalRequirementsModel =
      Rx<WalletWithdrawalRequirementsModel?>(null);

  @override
  void onInit() {
    super.onInit();
    walletWithdrawalRequirementsModel.value =
        WalletWithdrawalRequirementsModel();
  }

  @override
  void onClose() {
    super.onClose();
  }

  /// Shows the info modal
  void showInfoModal() {
    isModalVisible.value = true;
  }

  /// Hides the modal
  void hideModal() {
    isModalVisible.value = false;
  }

  /// Handles floating action button tap
  void onFabTap() {
    // Handle FAB action
    Get.snackbar(
      'Action',
      'Floating action button tapped',
      backgroundColor: appTheme.colorFF2528,
      colorText: appTheme.whiteCustom,
    );
  }

  /// Navigates to withdrawal record screen
  void navigateToWithdrawalRecord() {
    // Navigation logic can be added here when the route is available
    Get.snackbar(
      'Navigation',
      'Navigate to withdrawal record',
      backgroundColor: appTheme.colorFF2528,
      colorText: appTheme.whiteCustom,
    );
  }

  /// Handles back button press
  void onBackPressed() {
    Get.back();
  }
}
