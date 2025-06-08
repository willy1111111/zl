import 'package:get/get.dart';
import '../controller/wallet_deposit_controller.dart';
import '../../../core/app_export.dart';

class WalletDepositBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WalletDepositController());
  }
}
