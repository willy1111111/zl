import 'package:get/get.dart';
import '../models/login_session_expired_model.dart';
import '../../../../core/app_export.dart';

class LoginSessionExpiredController extends GetxController {
  LoginSessionExpiredModel loginSessionExpiredModel =
      LoginSessionExpiredModel();

  @override
  void onInit() {
    super.onInit();
  }

  void onLoginPressed() {
    // Navigate back to login screen or handle login action
    Get.back();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
