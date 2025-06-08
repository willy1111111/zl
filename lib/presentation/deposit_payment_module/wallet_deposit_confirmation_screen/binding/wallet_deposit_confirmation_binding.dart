import 'package:get/get.dart';
import '../controller/wallet_deposit_confirmation_controller.dart';
import '../../../core/app_export.dart';

class WalletDepositConfirmationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WalletDepositConfirmationController());
  }
}
