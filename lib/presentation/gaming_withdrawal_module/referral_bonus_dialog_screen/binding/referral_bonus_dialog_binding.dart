import 'package:get/get.dart';
import '../controller/referral_bonus_dialog_controller.dart';
import '../../../core/app_export.dart';

class ReferralBonusDialogBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReferralBonusDialogController());
  }
}
