import 'package:get/get.dart';
import '../controller/wallet_withdrawal_type_selection_controller.dart';
import '../../../core/app_export.dart';

class WalletWithdrawalTypeSelectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WalletWithdrawalTypeSelectionController());
  }
}
