import 'package:get/get.dart';
import '../controller/vip_daily_cumulative_deposit_benefits_controller.dart';
import '../../../core/app_export.dart';

class VipDailyCumulativeDepositBenefitsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VipDailyCumulativeDepositBenefitsController());
  }
}
