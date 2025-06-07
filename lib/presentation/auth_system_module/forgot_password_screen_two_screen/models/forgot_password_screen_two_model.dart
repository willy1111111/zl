import '../../../../core/app_export.dart';

/// This class is used in the [ForgotPasswordScreenTwo] screen with GetX.

class ForgotPasswordScreenTwoModel {
  Rx<String> headerImagePath = ImageConstant.imgImage4.obs;
  Rx<String> backButtonIcon = ImageConstant.img22.obs;
  Rx<String> backButtonText = 'Forgot password'.obs;
  Rx<String> pandaImagePath = ImageConstant.img21181x302.obs;
  Rx<String> sendButtonIcon = ImageConstant.imgGroup12450.obs;
  Rx<String> emailPlaceholder = 'Enter email or username'.obs;

  ForgotPasswordScreenTwoModel();
}
