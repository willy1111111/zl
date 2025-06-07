import 'package:get/get.dart';
import '../controller/phone_verification_screen_two_controller.dart';
import '../../../core/app_export.dart';

class PhoneVerificationScreenTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PhoneVerificationScreenTwoController());
  }
}
