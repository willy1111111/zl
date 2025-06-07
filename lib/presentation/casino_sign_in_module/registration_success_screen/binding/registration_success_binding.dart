import 'package:get/get.dart';
import '../controller/registration_success_controller.dart';
import '../../../../../core/app_export.dart';

class RegistrationSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrationSuccessController());
  }
}
