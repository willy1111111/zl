import 'package:get/get.dart';
import '../controller/jbet88_referral_bonus_controller.dart';
import '../../../core/app_export.dart';

class Jbet88ReferralBonusBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Jbet88ReferralBonusController());
  }
}
