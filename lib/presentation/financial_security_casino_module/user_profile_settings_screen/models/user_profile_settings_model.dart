import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [UserProfileSettingsScreen] screen with GetX.

class UserProfileSettingsModel {
  Rx<String>? phoneNumber = '13345688800'.obs;
  Rx<String>? userId = '6755399442622092'.obs;
  Rx<String>? emailPlaceholder = 'Please input your email'.obs;
  Rx<String>? emailError = 'Please enter the correct email format'.obs;
  Rx<String>? passwordPlaceholder = 'Please enter your password'.obs;
  Rx<String>? passwordError =
      'Please enter 6-12 alphanumeric without special character'.obs;
  Rx<String>? countryCode = '+55'.obs;
  Rx<String>? setPasswordText = 'Click to set your login password.'.obs;

  UserProfileSettingsModel();
}
