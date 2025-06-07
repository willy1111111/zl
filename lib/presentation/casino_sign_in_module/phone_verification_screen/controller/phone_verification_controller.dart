import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../models/phone_verification_model.dart';

class PhoneVerificationController extends GetxController {
  Rx<PhoneVerificationModel?> phoneVerificationModel =
      Rx<PhoneVerificationModel?>(null);
  late TextEditingController phoneController;
  RxBool isLoading = false.obs;
  RxBool isValidPhone = false.obs;

  @override
  void onInit() {
    super.onInit();
    phoneController = TextEditingController();
    phoneVerificationModel.value = PhoneVerificationModel();
  }

  @override
  void onClose() {
    phoneController.dispose();
    super.onClose();
  }

  void updatePhoneNumber(String value) {
    phoneVerificationModel.value?.phoneNumber?.value = value;
    validatePhoneNumber(value);
  }

  void validatePhoneNumber(String phoneNumber) {
    if (phoneNumber.length >= 10 && RegExp(r'^[0-9]+$').hasMatch(phoneNumber)) {
      isValidPhone.value = true;
      phoneVerificationModel.value?.validationMessage?.value = '';
    } else {
      isValidPhone.value = false;
      phoneVerificationModel.value?.validationMessage?.value =
          'Please enter 10 characters,only numbers allowed';
    }
  }

  void onSignInPressed() {
    if (isValidPhone.value) {
      isLoading.value = true;

      Future.delayed(Duration(seconds: 1), () {
        isLoading.value = false;
        Get.toNamed(AppRoutes.registrationSuccessScreen);
      });
    } else {
      Get.snackbar(
        'Invalid Phone Number',
        'Please enter a valid phone number',
        backgroundColor: appTheme.colorFFF652,
        colorText: appTheme.colorFFFFFF,
      );
    }
  }
}
