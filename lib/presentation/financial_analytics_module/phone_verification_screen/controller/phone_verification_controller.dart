import 'package:get/get.dart';
import 'dart:async';
import '../models/phone_verification_model.dart';
import '../../../core/app_export.dart';

class PhoneVerificationController extends GetxController {
  Rx<PhoneVerificationModel?> phoneVerificationModel =
      Rx<PhoneVerificationModel?>(null);
  RxBool isTyping = false.obs;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    phoneVerificationModel.value = PhoneVerificationModel();
    startTypingAnimation();
  }

  void startTypingAnimation() {
    // Modified: Fixed ever function call with proper parameters and removed incorrect interval usage
    ever(isTyping, (_) {
      // This callback will be triggered when isTyping changes
    });

    // Modified: Added proper timer for typing animation
    Timer.periodic(Duration(milliseconds: 800), (timer) {
      isTyping.value = !isTyping.value;
    });
  }

  void onEditPhoneNumber() {
    // Handle phone number editing
  }

  void onSendSms() {
    // Handle SMS sending
  }

  void onCompleteVerification() {
    // Handle complete verification
  }

  @override
  void onClose() {
    super.onClose();
  }
}