import 'package:get/get.dart';

import '../../../core/app_export.dart';
import '../models/spin_game_phone_verification_model.dart';

class SpinGamePhoneVerificationController extends GetxController {
  Rx<SpinGamePhoneVerificationModel> spinGamePhoneVerificationModelObj =
      SpinGamePhoneVerificationModel().obs;

  RxDouble buttonScale = 1.0.obs;

  void onVerifyNowTap() {
    // Navigate to phone verification screen
    // This would typically navigate to a phone verification form
    print('Verify Now clicked - navigating to phone verification');

    // Example navigation (uncomment when the route is available):
    // Get.toNamed(AppRoutes.phoneVerificationScreen);

    // For now, we'll just close the modal
    Get.back();
  }

  void onButtonPress() {
    buttonScale.value = 0.98;
  }

  void onButtonRelease() {
    buttonScale.value = 1.0;
  }

  @override
  void onInit() {
    super.onInit();
    spinGamePhoneVerificationModelObj.value = SpinGamePhoneVerificationModel();
  }
}
