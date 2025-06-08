import 'package:get/get.dart';
import '../controller/forgot_transaction_password_controller.dart';
import '../../../core/app_export.dart';

class ForgotTransactionPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotTransactionPasswordController());
  }
}
