import '../models/jbet88_referral_bonus_model.dart';
import '../../../core/app_export.dart';

class Jbet88ReferralBonusController extends GetxController {
  Rx<Jbet88ReferralBonusModel> jbet88ReferralBonusModelObj =
      Jbet88ReferralBonusModel().obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  /// Handle referral button press action
  void onReferralButtonPressed() {
    // Handle referral button click action
    // This could navigate to download screen, share app, or open registration
    Get.snackbar(
      'Referral Bonus',
      'Help your friends and get instant cash!',
      backgroundColor: appTheme.colorFF85D4,
      colorText: appTheme.whiteCustom,
      duration: Duration(seconds: 2),
    );
  }
}
