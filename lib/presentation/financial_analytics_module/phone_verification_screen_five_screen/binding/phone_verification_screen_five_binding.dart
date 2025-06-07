import 'package:get/get.dart';
import '../controller/phone_verification_screen_five_controller.dart';
import '../../../core/app_export.dart';

class PhoneVerificationScreenFiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PhoneVerificationScreenFiveController());
  }
}
