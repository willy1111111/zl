import 'package:get/get.dart';
import '../controller/wallet_deposit_payment_controller.dart';
import '../../../core/app_export.dart';

class WalletDepositPaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WalletDepositPaymentController());
  }
}
