import 'package:get/get.dart';
import '../controller/j_bet88_registration_screen_two_controller.dart';
import '../../../../../core/app_export.dart';

class JBet88RegistrationScreenTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JBet88RegistrationScreenTwoController());
  }
}
