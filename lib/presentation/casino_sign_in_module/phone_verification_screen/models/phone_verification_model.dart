import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class PhoneVerificationModel {
  Rx<String>? userEmail;
  Rx<String>? phoneNumber;
  Rx<String>? countryCode;
  Rx<String>? validationMessage;
  Rx<String>? referralCode;
  Rx<bool>? isPhoneValid;

  PhoneVerificationModel({
    this.userEmail,
    this.phoneNumber,
    this.countryCode,
    this.validationMessage,
    this.referralCode,
    this.isPhoneValid,
  }) {
    userEmail = userEmail ?? '123@gmail.com'.obs;
    phoneNumber = phoneNumber ?? ''.obs;
    countryCode = countryCode ?? '+55'.obs;
    validationMessage = validationMessage ??
        'Please enter 10 characters,only numbers allowed'.obs;
    referralCode = referralCode ?? ''.obs;
    isPhoneValid = isPhoneValid ?? false.obs;
  }
}
