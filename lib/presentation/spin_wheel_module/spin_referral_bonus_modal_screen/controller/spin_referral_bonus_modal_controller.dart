import '../models/spin_referral_bonus_modal_model.dart';
import '../../../core/app_export.dart';

class SpinReferralBonusModalController extends GetxController {
  SpinReferralBonusModalModel spinReferralBonusModalModel =
      SpinReferralBonusModalModel();

  @override
  void onInit() {
    super.onInit();
  }

  void onGetItButtonPressed() {
    // Handle claim bonus action
    Get.snackbar(
      'Success',
      'Free spin bonus claimed!',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: appTheme.colorFF76CD,
      colorText: appTheme.whiteCustom,
    );

    // Close modal after claiming
    Get.back();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
