import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class JBet88LoginModel {
  Rx<String>? phoneNumber;
  Rx<String>? password;
  Rx<String>? verificationCode;
  Rx<String>? currentInput;
  Rx<bool>? isAlphaKeyboard;
  Rx<bool>? isPasswordVisible;

  JBet88LoginModel({
    this.phoneNumber,
    this.password,
    this.verificationCode,
    this.currentInput,
    this.isAlphaKeyboard,
    this.isPasswordVisible,
  }) {
    phoneNumber = phoneNumber ?? '1234567890'.obs;
    password = password ?? ''.obs;
    verificationCode = verificationCode ?? ''.obs;
    currentInput = currentInput ?? ''.obs;
    isAlphaKeyboard = isAlphaKeyboard ?? false.obs;
    isPasswordVisible = isPasswordVisible ?? false.obs;
  }
}
