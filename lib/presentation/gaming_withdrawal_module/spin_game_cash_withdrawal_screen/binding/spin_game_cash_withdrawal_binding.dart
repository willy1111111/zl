import 'package:get/get.dart';
import '../controller/spin_game_cash_withdrawal_controller.dart';
import '../../../core/app_export.dart';

class SpinGameCashWithdrawalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SpinGameCashWithdrawalController());
  }
}
