import 'package:get/get.dart';
import '../controller/j_bet88_deposit_bonus_controller.dart';
import '../../../core/app_export.dart';

class JBet88DepositBonusBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<JBet88DepositBonusController>(
        () => JBet88DepositBonusController());
  }
}
