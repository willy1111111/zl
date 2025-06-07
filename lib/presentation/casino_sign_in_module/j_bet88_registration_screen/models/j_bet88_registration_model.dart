import '../../../../../core/app_export.dart';

/// This class is used in the [JBet88RegistrationScreen] screen with GetX.

class JBet88RegistrationModel {
  // Observable variables for reactive state management
  Rx<String>? phoneNumber = '1234567890'.obs;
  Rx<String>? countryCode = '+55'.obs;
  Rx<String>? flagImage =
      ImageConstant.imgD62a6059252dd42a1fed252c093b5bb5c8eab8541.obs;
  Rx<String>? password = ''.obs;
  Rx<String>? referralCode = ''.obs;
  Rx<bool>? isUserAgreementAccepted = true.obs;
  Rx<bool>? isMarketingAgreementAccepted = true.obs;

  // Simple constructor with no parameters
  JBet88RegistrationModel();
}
