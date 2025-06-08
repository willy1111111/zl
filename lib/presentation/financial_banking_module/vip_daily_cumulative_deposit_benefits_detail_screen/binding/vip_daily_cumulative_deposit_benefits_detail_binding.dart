import 'package:get/get.dart';
import '../controller/vip_daily_cumulative_deposit_benefits_detail_controller.dart';
import '../../../core/app_export.dart';

class VipDailyCumulativeDepositBenefitsDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VipDailyCumulativeDepositBenefitsDetailController());
  }
}
