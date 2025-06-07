import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class JBet88LoginScreenTwoModel {
  Rx<String>? phoneNumber = '1234567890'.obs;
  Rx<String>? password = ''.obs;
  Rx<String>? verificationCode = ''.obs;
  Rx<bool>? isRememberPasswordChecked = false.obs;
  Rx<bool>? isPasswordVisible = false.obs;
  Rx<bool>? isLoading = false.obs;

  JBet88LoginScreenTwoModel({
    this.phoneNumber,
    this.password,
    this.verificationCode,
    this.isRememberPasswordChecked,
    this.isPasswordVisible,
    this.isLoading,
  });
}
