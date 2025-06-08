import 'package:get/get.dart';
import '../controller/electronic_wallet_withdrawal_controller.dart';
import '../../../core/app_export.dart';

class ElectronicWalletWithdrawalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ElectronicWalletWithdrawalController>(
      () => ElectronicWalletWithdrawalController(),
    );
  }
}
