import 'dart:async';
import '../models/phone_verification_screen_five_model.dart';
import '../../../core/app_export.dart';

class PhoneVerificationScreenFiveController extends GetxController {
  Rx<PhoneVerificationScreenFiveModel?> phoneVerificationScreenFiveModel =
      PhoneVerificationScreenFiveModel().obs;
  RxInt countdownTimer = 59.obs;
  RxBool cursorVisible = true.obs;
  Timer? _countdownTimer;
  Timer? _cursorTimer;

  @override
  void onInit() {
    super.onInit();
    phoneVerificationScreenFiveModel.value = PhoneVerificationScreenFiveModel();
    _startCountdownTimer();
    _startCursorBlink();
  }

  @override
  void onClose() {
    _countdownTimer?.cancel();
    _cursorTimer?.cancel();
    super.onClose();
  }

  void _startCountdownTimer() {
    _countdownTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (countdownTimer.value > 0) {
        countdownTimer.value--;
      } else {
        timer.cancel();
        phoneVerificationScreenFiveModel.value?.timerFinished?.value = true;
      }
    });
  }

  void _startCursorBlink() {
    _cursorTimer = Timer.periodic(Duration(milliseconds: 500), (timer) {
      cursorVisible.value = !cursorVisible.value;
    });
  }

  void onEditPhonePressed() {
    phoneVerificationScreenFiveModel.value?.showPhoneError?.value = false;
    // Handle phone number editing logic
  }

  void onCaptchaPressed() {
    // Handle captcha refresh logic
  }

  void onCompleteVerificationPressed() {
    // Validate form fields
    bool isValid = _validateForm();

    if (isValid) {
      // Process verification completion
      _processVerification();
    }
  }

  bool _validateForm() {
    bool isValid = true;

    // Reset all error states
    phoneVerificationScreenFiveModel.value?.showPhoneError?.value = false;
    phoneVerificationScreenFiveModel.value?.showSmsError?.value = false;
    phoneVerificationScreenFiveModel.value?.showCodeError?.value = false;

    // Validate phone number
    if (phoneVerificationScreenFiveModel.value?.phoneNumber?.value.isEmpty ??
        true) {
      phoneVerificationScreenFiveModel.value?.showPhoneError?.value = true;
      phoneVerificationScreenFiveModel.value?.phoneErrorMessage?.value =
          'The mobile num is not yalid';
      isValid = false;
    }

    // Validate verification code
    if (phoneVerificationScreenFiveModel
            .value?.verificationCode?.value.isEmpty ??
        true) {
      phoneVerificationScreenFiveModel.value?.showCodeError?.value = true;
      phoneVerificationScreenFiveModel.value?.codeErrorMessage?.value =
          'Please enter a valid verification code';
      isValid = false;
    }

    return isValid;
  }

  void _processVerification() {
    // Show loading state
    phoneVerificationScreenFiveModel.value?.isLoading?.value = true;

    // Simulate API call
    Future.delayed(Duration(seconds: 2), () {
      phoneVerificationScreenFiveModel.value?.isLoading?.value = false;
      phoneVerificationScreenFiveModel.value?.isVerificationComplete?.value =
          true;

      // Show success message
      Get.snackbar(
        'Success',
        'Phone verification completed successfully',
        backgroundColor: appTheme.colorFF478A,
        colorText: appTheme.whiteCustom,
      );

      // Navigate back or to next screen
      Get.back();
    });
  }

  void resetCountdown() {
    countdownTimer.value = 59;
    phoneVerificationScreenFiveModel.value?.timerFinished?.value = false;
    _startCountdownTimer();
  }
}
