import '../../../../../core/app_export.dart';

/// This class is used in the [user_agreement_screen] screen with GetX.
class UserAgreementModel {
  Rx<String>? logoPath = ImageConstant.imgLogowj931.obs;
  Rx<String>? headerIcon = ImageConstant.imgFrame.obs;
  Rx<String>? closeIcon = ImageConstant.imgGroup.obs;
  Rx<String>? topButtonIcon = ImageConstant.imgVectorAmber300.obs;
  Rx<String>? termsTitle = '【Terms of Service】'.obs;
  Rx<String>? agreementText = 'By registering and clicking "I Agree" on '.obs;
  Rx<String>? websiteUrl = 'www.jbet88.co'.obs;
  Rx<String>? grantOfLicenseTitle = '1. Grant of License'.obs;
  Rx<bool>? isLoginButtonVisible = true.obs;
  Rx<bool>? isRegisterButtonVisible = true.obs;

  UserAgreementModel();
}
