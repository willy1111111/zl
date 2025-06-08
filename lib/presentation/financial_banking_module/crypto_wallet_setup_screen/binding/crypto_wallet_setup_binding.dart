import 'package:get/get.dart';
import '../controller/crypto_wallet_setup_controller.dart';
import '../../../core/app_export.dart';

class CryptoWalletSetupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CryptoWalletSetupController>(
      () => CryptoWalletSetupController(),
    );
  }
}
