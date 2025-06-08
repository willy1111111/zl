import 'package:get/get.dart';
import '../../../core/app_export.dart';

class PhoneVerificationModel {
  Rx<String>? countryCode;
  Rx<String>? phoneNumber;
  Rx<String>? smsCode;
  Rx<bool>? isVerified;
  Rx<bool>? isPhoneValid;

  PhoneVerificationModel({
    this.countryCode,
    this.phoneNumber,
    this.smsCode,
    this.isVerified,
    this.isPhoneValid,
  }) {
    countryCode = countryCode ?? '+55'.obs;
    phoneNumber = phoneNumber ?? '1234567890'.obs;
    smsCode = smsCode ?? ''.obs;
    isVerified = isVerified ?? false.obs;
    isPhoneValid = isPhoneValid ?? true.obs;
  }
}
