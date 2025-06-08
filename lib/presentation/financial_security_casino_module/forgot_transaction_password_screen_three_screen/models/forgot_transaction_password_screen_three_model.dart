import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [forgot_transaction_password_screen_three] screen with GetX.

class ForgotTransactionPasswordScreenThreeModel {
  Rx<String> phoneNumber = "123456789".obs;
  Rx<String> countryCode = "+55".obs;
  Rx<String> smsCode = "".obs;
  Rx<String> newPassword = "".obs;
  Rx<String> confirmPassword = "".obs;
  Rx<bool> isPhoneValid = false.obs;
  Rx<bool> isSmsValid = false.obs;
  Rx<bool> isPasswordValid = false.obs;
  Rx<bool> isConfirmPasswordValid = false.obs;
  Rx<int> timerDuration = 59.obs;

  ForgotTransactionPasswordScreenThreeModel();
}
