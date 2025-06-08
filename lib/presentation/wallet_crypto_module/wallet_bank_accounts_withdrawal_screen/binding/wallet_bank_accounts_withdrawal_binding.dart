import 'package:get/get.dart';
import '../controller/wallet_bank_accounts_withdrawal_controller.dart';
import '../../../core/app_export.dart';

class WalletBankAccountsWithdrawalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WalletBankAccountsWithdrawalController());
  }
}
