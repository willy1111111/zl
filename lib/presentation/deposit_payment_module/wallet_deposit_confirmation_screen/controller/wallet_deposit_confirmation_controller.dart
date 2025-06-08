import '../../../core/app_export.dart';
import '../models/wallet_deposit_confirmation_model.dart';

class WalletDepositConfirmationController extends GetxController {
  WalletDepositConfirmationModel walletDepositConfirmationModel =
      WalletDepositConfirmationModel();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  /// Handles the GO button press action
  void onGoButtonPressed() {
    // Navigate to deposit page
    Get.toNamed(AppRoutes.walletDepositScreen);
  }
}
