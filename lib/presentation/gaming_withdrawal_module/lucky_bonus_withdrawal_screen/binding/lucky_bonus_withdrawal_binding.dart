import 'package:get/get.dart';
import '../controller/lucky_bonus_withdrawal_controller.dart';
import '../../../core/app_export.dart';

class LuckyBonusWithdrawalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LuckyBonusWithdrawalController());
  }
}
