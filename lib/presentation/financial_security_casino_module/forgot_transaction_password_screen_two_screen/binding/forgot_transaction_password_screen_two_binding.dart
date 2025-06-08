import 'package:get/get.dart';
import '../controller/forgot_transaction_password_screen_two_controller.dart';
import '../../../core/app_export.dart';

class ForgotTransactionPasswordScreenTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotTransactionPasswordScreenTwoController());
  }
}
