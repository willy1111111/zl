import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

/// This class is used in the [ForgotPasswordScreen] screen with GetX.

class ForgotPasswordModel {
  Rx<String> emailOrUsername = ''.obs;
  Rx<bool> isEmailValid = false.obs;
  Rx<bool> isLoading = false.obs;
  Rx<String> errorMessage = ''.obs;
  Rx<String> successMessage = ''.obs;

  ForgotPasswordModel();
}
