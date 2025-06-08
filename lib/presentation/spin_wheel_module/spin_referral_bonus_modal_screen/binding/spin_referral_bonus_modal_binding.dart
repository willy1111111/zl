import 'package:get/get.dart';
import '../controller/spin_referral_bonus_modal_controller.dart';
import '../../../core/app_export.dart';

class SpinReferralBonusModalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SpinReferralBonusModalController());
  }
}
