import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [PhoneVerificationScreenTwo] screen with GetX.

class PhoneVerificationScreenTwoModel {
  Rx<String>? phoneNumber = '1234567890'.obs;
  Rx<String>? getCodeButtonText = 'Get code'.obs;
  Rx<String>? verificationButtonText = 'Complete verification'.obs;
  Rx<bool>? isVerificationComplete = false.obs;

  PhoneVerificationScreenTwoModel();
}
