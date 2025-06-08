import 'package:flutter/material.dart';
import '../models/phone_verification_model.dart';
import '../../../core/app_export.dart';

class PhoneVerificationController extends GetxController
    with GetTickerProviderStateMixin {
  Rx<PhoneVerificationModel?> phoneVerificationModel =
      Rx<PhoneVerificationModel?>(null);
  RxBool showCursor = true.obs;
  RxBool isLoading = false.obs;
  RxBool isSmsEnabled = true.obs;

  late AnimationController cursorAnimationController;

  @override
  void onInit() {
    super.onInit();
    phoneVerificationModel.value = PhoneVerificationModel();
    _initializeCursorAnimation();
  }

  @override
  void onClose() {
    cursorAnimationController.dispose();
    super.onClose();
  }

  void _initializeCursorAnimation() {
    cursorAnimationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

    cursorAnimationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        showCursor.value = false;
        cursorAnimationController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        showCursor.value = true;
        cursorAnimationController.forward();
      }
    });

    cursorAnimationController.forward();
  }

  void onEditPhoneNumber() {
    // Handle phone number editing
    print('Edit phone number tapped');
  }

  void onSendSms() {
    if (isSmsEnabled.value) {
      isLoading.value = true;

      // Simulate SMS sending
      Future.delayed(Duration(seconds: 2), () {
        isLoading.value = false;
        Get.snackbar(
          'SMS Sent',
          'Verification code has been sent to your phone',
          backgroundColor: appTheme.colorFF478A,
          colorText: appTheme.whiteCustom,
          snackPosition: SnackPosition.TOP,
        );
      });
    }
  }

  void onCompleteVerification() {
    isLoading.value = true;

    // Simulate verification process
    Future.delayed(Duration(seconds: 2), () {
      isLoading.value = false;
      Get.snackbar(
        'Success',
        'Phone verification completed successfully',
        backgroundColor: appTheme.colorFF478A,
        colorText: appTheme.whiteCustom,
        snackPosition: SnackPosition.TOP,
      );

      // Navigate back or to next screen
      Get.back();
    });
  }
}
