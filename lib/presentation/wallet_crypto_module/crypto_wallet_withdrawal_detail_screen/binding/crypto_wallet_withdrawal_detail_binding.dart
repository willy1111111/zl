import 'package:get/get.dart';
import '../controller/crypto_wallet_withdrawal_detail_controller.dart';
import '../../../core/app_export.dart';

class CryptoWalletWithdrawalDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CryptoWalletWithdrawalDetailController>(
      () => CryptoWalletWithdrawalDetailController(),
    );
  }
}
