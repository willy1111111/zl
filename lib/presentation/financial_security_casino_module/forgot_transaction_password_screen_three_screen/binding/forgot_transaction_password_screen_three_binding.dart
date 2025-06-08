import 'package:get/get.dart';
import '../controller/forgot_transaction_password_screen_three_controller.dart';
import '../../../core/app_export.dart';

class ForgotTransactionPasswordScreenThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotTransactionPasswordScreenThreeController());
  }
}
