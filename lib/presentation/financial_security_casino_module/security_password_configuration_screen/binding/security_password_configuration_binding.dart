import 'package:get/get.dart';
import '../controller/security_password_configuration_controller.dart'; // Modified: Fixed import path
import '../../../core/app_export.dart';

class SecurityPasswordConfigurationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SecurityPasswordConfigurationController());
  }
}
