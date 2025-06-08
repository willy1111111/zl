import '../../../core/app_export.dart';
import '../models/wallet_deposit_type_selection_model.dart';

class WalletDepositTypeSelectionController extends GetxController {
  WalletDepositTypeSelectionModel walletDepositTypeSelectionModel =
      WalletDepositTypeSelectionModel();

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

  void onElectronicWalletTap() {
    // Add selection logic for electronic wallet
    print('Electronic wallet selected');
    Get.toNamed(AppRoutes.electronicWalletWithdrawalScreen);
  }

  void onBankAccountTap() {
    // Add selection logic for bank account
    print('Bank account selected');
    Get.toNamed(AppRoutes.walletBankAccountsWithdrawalScreen);
  }
}
