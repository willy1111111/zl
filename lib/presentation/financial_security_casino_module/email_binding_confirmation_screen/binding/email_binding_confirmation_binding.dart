import 'package:get/get.dart';
import '../controller/email_binding_confirmation_controller.dart';
import '../../../core/app_export.dart';

class EmailBindingConfirmationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EmailBindingConfirmationController());
  }
}
