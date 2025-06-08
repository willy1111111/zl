import 'package:get/get.dart';
import '../controller/pix_mobile_wallet_withdrawal_controller.dart';
import '../../../core/app_export.dart';

class PixMobileWalletWithdrawalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PixMobileWalletWithdrawalController>(
      () => PixMobileWalletWithdrawalController(),
    );
  }
}
