import '../../../../core/app_export.dart';

/// This class is used in the [LoginSessionExpiredScreen] screen with GetX.

class LoginSessionExpiredModel {
  Rx<String> title = "Hint".obs;
  Rx<String> message = "Login has expired Please log in again".obs;
  Rx<String> buttonText = "Login".obs;
  Rx<String> backgroundImagePath =
      ImageConstant.imgCardmatkalandingen1812x375.obs;

  LoginSessionExpiredModel();
}
