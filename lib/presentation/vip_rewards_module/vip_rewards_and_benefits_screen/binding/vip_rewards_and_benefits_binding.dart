import 'package:get/get.dart';
import '../controller/vip_rewards_and_benefits_controller.dart';
import '../../../../core/app_export.dart';

class VipRewardsAndBenefitsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VipRewardsAndBenefitsController());
  }
}
