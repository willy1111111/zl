import 'package:get/get.dart';
import '../models/phone_verification_screen_three_model.dart';
import '../../../core/app_export.dart';

class PhoneVerificationScreenThreeController extends GetxController {
  Rx<PhoneVerificationScreenThreeModel> phoneVerificationModel =
      PhoneVerificationScreenThreeModel().obs;
  RxBool isLoading = false.obs;
  RxBool isSmsLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    phoneVerificationModel.value = PhoneVerificationScreenThreeModel();
  }

  void onEditPhoneNumber() {
    // Handle phone number editing
    print('Edit phone number tapped');
  }

  void onSmsButtonTapped() {
    if (isSmsLoading.value) return;

    isSmsLoading.value = true;

    // Simulate SMS sending
    Future.delayed(Duration(seconds: 2), () {
      isSmsLoading.value = false;
      Get.snackbar(
        'SMS Sent',
        'Verification code has been sent to your phone number',
        snackPosition: SnackPosition.TOP,
      );
    });
  }

  void onCompleteVerification() {
    if (isLoading.value) return;

    isLoading.value = true;

    // Simulate verification process
    Future.delayed(Duration(seconds: 2), () {
      isLoading.value = false;
      Get.snackbar(
        'Success',
        'Phone verification completed successfully',
        snackPosition: SnackPosition.TOP,
      );
    });
  }
}
