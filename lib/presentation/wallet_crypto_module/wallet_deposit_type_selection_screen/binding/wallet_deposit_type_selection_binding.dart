import 'package:get/get.dart';
import '../controller/wallet_deposit_type_selection_controller.dart';
import '../../../core/app_export.dart';

class WalletDepositTypeSelectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WalletDepositTypeSelectionController());
  }
}
