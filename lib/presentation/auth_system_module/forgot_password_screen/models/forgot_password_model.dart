import '../../../../core/app_export.dart';

/// This class is used in the [ForgotPasswordScreen] screen with GetX.
class ForgotPasswordModel {
  Rx<String> christmasImagePath = ImageConstant.img21181x302.obs;
  Rx<String> continueIconPath = ImageConstant.imgGroup12450.obs;
  Rx<String> instructionText =
      "Follow the instructions to reset your password".obs;

  ForgotPasswordModel();
}
