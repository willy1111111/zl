import 'package:get/get.dart';
import '../controller/forgot_password_screen_two_controller.dart';
import '../../../../core/app_export.dart';

class ForgotPasswordScreenTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotPasswordScreenTwoController>(
      () => ForgotPasswordScreenTwoController(),
    );
  }
}
