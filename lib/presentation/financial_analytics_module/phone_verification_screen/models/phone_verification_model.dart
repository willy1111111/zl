import 'package:get/get.dart';
import '../../../core/app_export.dart';

class PhoneVerificationModel {
  Rx<String>? phoneNumber;
  Rx<String>? countryCode;
  Rx<String>? countryFlag;
  Rx<bool>? isVerified;
  Rx<bool>? isSmsEnabled;

  PhoneVerificationModel({
    this.phoneNumber,
    this.countryCode,
    this.countryFlag,
    this.isVerified,
    this.isSmsEnabled,
  }) {
    phoneNumber = phoneNumber ?? '1234567890'.obs;
    countryCode = countryCode ?? '+55'.obs;
    countryFlag = countryFlag ??
        'assets/images/img_d62a6059252dd42a1fed252c093b5bb5c8eab854_1.png'.obs;
    isVerified = isVerified ?? false.obs;
    isSmsEnabled = isSmsEnabled ?? true.obs;
  }
}
