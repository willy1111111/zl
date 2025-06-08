import 'package:get/get.dart';
import '../controller/crypto_wallet_password_setup_controller.dart';
import '../../../core/app_export.dart';

class CryptoWalletPasswordSetupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CryptoWalletPasswordSetupController());
  }
}
