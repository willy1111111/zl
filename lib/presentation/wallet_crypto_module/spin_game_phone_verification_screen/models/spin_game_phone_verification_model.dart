import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [SpinGamePhoneVerificationScreen] screen with GetX.

class SpinGamePhoneVerificationModel {
  Rx<String> confirmationTitle = "Confirmation".obs;
  Rx<String> verificationMessage =
      "You need to complete the phone numberverification before withdrawing"
          .obs;
  Rx<String> verifyButtonText = "Verify Now".obs;

  SpinGamePhoneVerificationModel();
}
