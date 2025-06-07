import '../models/phone_verification_screen_four_model.dart';
import '../../../core/app_export.dart';

class PhoneVerificationScreenFourController extends GetxController {
  final phoneVerificationModel = Rx<PhoneVerificationScreenFourModel?>(null);

  @override
  void onInit() {
    super.onInit();
    phoneVerificationModel.value = PhoneVerificationScreenFourModel();
  }

  void onGetCodePressed() {
    // Handle get code button press
    Get.snackbar(
      'SMS Code',
      'Verification code has been sent to your phone number',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: appTheme.colorFF85D4,
      colorText: appTheme.whiteCustom,
    );
  }

  void onCompleteVerificationPressed() {
    // Handle complete verification button press
    Get.snackbar(
      'Verification',
      'Phone verification completed successfully',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: appTheme.colorFF85D4,
      colorText: appTheme.whiteCustom,
    );
  }
}
