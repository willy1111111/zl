import 'package:get/get.dart';
import '../controller/crypto_wallet_transaction_setup_controller.dart';
import '../../../core/app_export.dart';

class CryptoWalletTransactionSetupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CryptoWalletTransactionSetupController>(
      () => CryptoWalletTransactionSetupController(),
    );
  }
}
