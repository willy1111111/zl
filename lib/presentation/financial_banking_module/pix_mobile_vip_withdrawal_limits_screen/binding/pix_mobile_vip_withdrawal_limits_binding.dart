import 'package:get/get.dart';
import '../controller/pix_mobile_vip_withdrawal_limits_controller.dart';
import '../../../core/app_export.dart';

class PixMobileVipWithdrawalLimitsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PixMobileVipWithdrawalLimitsController());
  }
}
