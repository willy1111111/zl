import 'package:get/get.dart';
import '../controller/crypto_wallet_setup_password_controller.dart';
import '../../../core/app_export.dart';

class CryptoWalletSetupPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CryptoWalletSetupPasswordController());
  }
}
