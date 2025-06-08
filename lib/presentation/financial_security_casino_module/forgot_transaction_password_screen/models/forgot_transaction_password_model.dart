import '../../../core/app_export.dart';

class ForgotTransactionPasswordModel {
  Rx<String>? phoneNumber;
  Rx<String>? newPassword;
  Rx<String>? confirmPassword;
  Rx<bool>? isNewPasswordVisible;
  Rx<bool>? isConfirmPasswordVisible;

  ForgotTransactionPasswordModel({
    this.phoneNumber,
    this.newPassword,
    this.confirmPassword,
    this.isNewPasswordVisible,
    this.isConfirmPasswordVisible,
  });
}
