import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

/// This class is used in the [AccountSetupCompletionScreen] screen with GetX.

class AccountSetupCompletionModel {
  Rx<String>? userEmail;
  Rx<String>? phoneNumber;
  Rx<String>? password;
  Rx<String>? referralCode;
  Rx<String>? countryCode;
  Rx<bool>? isPasswordVisible;
  Rx<bool>? hasExistingAccount;

  AccountSetupCompletionModel({
    this.userEmail,
    this.phoneNumber,
    this.password,
    this.referralCode,
    this.countryCode,
    this.isPasswordVisible,
    this.hasExistingAccount,
  }) {
    userEmail = userEmail ?? '123@gmail.com'.obs;
    phoneNumber = phoneNumber ?? ''.obs;
    password = password ?? ''.obs;
    referralCode = referralCode ?? ''.obs;
    countryCode = countryCode ?? '+55'.obs;
    isPasswordVisible = isPasswordVisible ?? false.obs;
    hasExistingAccount = hasExistingAccount ?? true.obs;
  }
}
