import 'package:get/get.dart';
import '../models/forgot_password_model.dart';
import '../../../../core/app_export.dart';

class ForgotPasswordController extends GetxController {
  Rx<ForgotPasswordModel> forgotPasswordModelObj = ForgotPasswordModel().obs;

  @override
  void onInit() {
    super.onInit();
  }

  void onContinuePressed() {
    // Navigate to next step or handle continue action
    print('Continue to next step');
  }

  @override
  void onClose() {
    super.onClose();
  }
}
