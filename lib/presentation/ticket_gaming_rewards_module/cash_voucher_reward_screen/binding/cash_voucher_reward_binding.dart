import 'package:get/get.dart';
import '../controller/cash_voucher_reward_controller.dart';
import '../../../core/app_export.dart';

class CashVoucherRewardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CashVoucherRewardController());
  }
}
