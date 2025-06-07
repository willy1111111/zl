import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [PhoneVerificationScreenFour] screen with GetX.

class PhoneVerificationScreenFourModel {
  // Observable variables for reactive state management
  Rx<String>? headerText =
      "Receive rewards after completing mobilephone verification".obs;
  Rx<String>? countryCode = "+55".obs;
  Rx<String>? phoneNumber = "1234".obs;
  Rx<String>? smsText = "SMS".obs;
  Rx<String>? getCodeText = "Get code".obs;
  Rx<String>? verificationCodeText = "verification code".obs;
  Rx<String>? securityText =
      "The mobile number will be used to check that your money is safe when you try to withdraw"
          .obs;
  Rx<String>? completeButtonText = "Complete verification".obs;

  // Simple constructor with no parameters
  PhoneVerificationScreenFourModel();
}
