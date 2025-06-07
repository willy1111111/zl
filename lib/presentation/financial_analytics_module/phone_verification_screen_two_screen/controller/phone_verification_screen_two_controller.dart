import 'package:get/get.dart';
import '../models/phone_verification_screen_two_model.dart';
import '../../../core/app_export.dart';

class PhoneVerificationScreenTwoController extends GetxController {
  PhoneVerificationScreenTwoModel phoneVerificationScreenTwoModel =
      PhoneVerificationScreenTwoModel();

  @override
  void onInit() {
    super.onInit();
  }

  void onEditPhoneNumber() {
    // Handle phone number editing
    print('Edit phone number tapped');
  }

  void onGetCode() async {
    phoneVerificationScreenTwoModel.getCodeButtonText!.value = 'Sent!';

    await Future.delayed(Duration(seconds: 2));

    phoneVerificationScreenTwoModel.getCodeButtonText!.value = 'Get code';
  }

  void onCompleteVerification() async {
    phoneVerificationScreenTwoModel.verificationButtonText!.value =
        'Verifying...';

    await Future.delayed(Duration(seconds: 2));

    phoneVerificationScreenTwoModel.verificationButtonText!.value =
        'Verification Complete!';
    phoneVerificationScreenTwoModel.isVerificationComplete!.value = true;
  }

  Rx<String>? get phoneNumber => phoneVerificationScreenTwoModel.phoneNumber;
  Rx<String>? get getCodeButtonText =>
      phoneVerificationScreenTwoModel.getCodeButtonText;
  Rx<String>? get verificationButtonText =>
      phoneVerificationScreenTwoModel.verificationButtonText;
  Rx<bool>? get isVerificationComplete =>
      phoneVerificationScreenTwoModel.isVerificationComplete;
}
