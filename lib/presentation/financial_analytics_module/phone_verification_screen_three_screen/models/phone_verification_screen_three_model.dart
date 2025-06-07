import '../../../core/app_export.dart';

class PhoneVerificationScreenThreeModel {
  Rx<String>? phoneNumber;
  Rx<String>? countryCode;
  Rx<bool>? isVerified;
  Rx<bool>? isSmsCodeSent;

  PhoneVerificationScreenThreeModel({
    this.phoneNumber,
    this.countryCode,
    this.isVerified,
    this.isSmsCodeSent,
  }) {
    phoneNumber = phoneNumber ?? '1234'.obs;
    countryCode = countryCode ?? '+55'.obs;
    isVerified = isVerified ?? false.obs;
    isSmsCodeSent = isSmsCodeSent ?? false.obs;
  }
}
