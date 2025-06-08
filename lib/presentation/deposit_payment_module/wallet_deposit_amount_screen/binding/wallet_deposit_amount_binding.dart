import 'package:get/get.dart';
import '../controller/wallet_deposit_amount_controller.dart';
import '../../../core/app_export.dart';

class WalletDepositAmountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WalletDepositAmountController());
  }
}
