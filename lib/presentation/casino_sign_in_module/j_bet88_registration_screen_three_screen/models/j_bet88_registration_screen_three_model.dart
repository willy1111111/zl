import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

/// This class is used in the [JBet88RegistrationScreenThree] screen with GetX.

class JBet88RegistrationScreenThreeModel {
  // Observable variables for reactive state management
  Rx<String>? phoneNumber = '1234567890'.obs;
  Rx<String>? password = ''.obs;
  Rx<String>? verificationCode = ''.obs;
  Rx<bool>? isPasswordVisible = false.obs;
  Rx<bool>? isUserAgreementAccepted = false.obs;
  Rx<bool>? isMarketingAgreementAccepted = false.obs;
  Rx<bool>? isLoading = false.obs;

  // Simple constructor with no parameters
  JBet88RegistrationScreenThreeModel();
}
