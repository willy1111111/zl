import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

/// This class is used in the [JBet88RegistrationScreenTwo] screen with GetX.

class JBet88RegistrationScreenTwoModel {
  Rx<String>? phoneNumber = '1234567890'.obs;
  Rx<String>? password = ''.obs;
  Rx<String>? referralCode = ''.obs;
  Rx<bool>? agreeToTerms = true.obs;
  Rx<bool>? agreeToMarketing = true.obs;
  Rx<bool>? isPasswordVisible = false.obs;

  JBet88RegistrationScreenTwoModel();
}
