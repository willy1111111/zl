import 'package:get/get.dart';
import '../controller/forgot_password_second_controller.dart';
import '../../../../../core/app_export.dart';

class ForgotPasswordSecondBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotPasswordSecondController>(
      () => ForgotPasswordSecondController(),
    );
  }
}
