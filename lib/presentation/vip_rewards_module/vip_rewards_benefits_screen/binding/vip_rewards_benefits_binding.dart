import 'package:get/get.dart';
import '../controller/vip_rewards_benefits_controller.dart';
import '../../../../core/app_export.dart';

class VipRewardsBenefitsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VipRewardsBenefitsController());
  }
}
