import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [ForgotTransactionPasswordScreenTwo] screen with GetX.

class ForgotTransactionPasswordScreenTwoModel {
  Rx<String> phoneNumber = '+55 123456789'.obs;
  Rx<String> newPassword = ''.obs;
  Rx<String> confirmPassword = ''.obs;
  Rx<bool> isNewPasswordVisible = false.obs;
  Rx<bool> isConfirmPasswordVisible = false.obs;
  Rx<String> smsStatus = 'SMS'.obs;

  ForgotTransactionPasswordScreenTwoModel();
}
