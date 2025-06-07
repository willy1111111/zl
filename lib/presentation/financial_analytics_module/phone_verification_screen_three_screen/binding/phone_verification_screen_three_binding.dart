import 'package:get/get.dart';
import '../controller/phone_verification_screen_three_controller.dart';
import '../../../core/app_export.dart';

class PhoneVerificationScreenThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PhoneVerificationScreenThreeController());
  }
}
