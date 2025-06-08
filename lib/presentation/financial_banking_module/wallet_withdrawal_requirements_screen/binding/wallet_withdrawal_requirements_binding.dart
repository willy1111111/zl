import 'package:get/get.dart';
import '../controller/wallet_withdrawal_requirements_controller.dart';
import '../../../core/app_export.dart';

class WalletWithdrawalRequirementsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WalletWithdrawalRequirementsController>(
      () => WalletWithdrawalRequirementsController(),
    );
  }
}
