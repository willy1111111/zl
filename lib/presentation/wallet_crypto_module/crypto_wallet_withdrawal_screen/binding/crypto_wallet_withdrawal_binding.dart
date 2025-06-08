import 'package:get/get.dart';
import '../controller/crypto_wallet_withdrawal_controller.dart';
import '../../../core/app_export.dart';

class CryptoWalletWithdrawalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CryptoWalletWithdrawalController>(
      () => CryptoWalletWithdrawalController(),
    );
  }
}
