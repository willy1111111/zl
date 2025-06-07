import 'package:get/get.dart';
import '../controller/registration_bonus_controller.dart';
import '../../../../../core/app_export.dart';

class RegistrationBonusBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrationBonusController());
  }
}
