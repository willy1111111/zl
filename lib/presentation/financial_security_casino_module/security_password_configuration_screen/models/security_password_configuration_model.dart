import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [SecurityPasswordConfigurationScreen] screen with GetX.

class SecurityPasswordConfigurationModel {
  // Observable variables for reactive state management
  Rx<String>? oldPassword;
  Rx<String>? newPassword;
  Rx<String>? confirmNewPassword;
  Rx<String>? loginNewPassword;
  Rx<String>? loginConfirmPassword;

  // Simple constructor with no parameters
  SecurityPasswordConfigurationModel({
    this.oldPassword,
    this.newPassword,
    this.confirmNewPassword,
    this.loginNewPassword,
    this.loginConfirmPassword,
  });
}
