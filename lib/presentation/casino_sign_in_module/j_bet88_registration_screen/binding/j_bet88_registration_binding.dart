import 'package:get/get.dart';
import '../controller/j_bet88_registration_controller.dart';
import '../../../../../core/app_export.dart';

class JBet88RegistrationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JBet88RegistrationController());
  }
}
