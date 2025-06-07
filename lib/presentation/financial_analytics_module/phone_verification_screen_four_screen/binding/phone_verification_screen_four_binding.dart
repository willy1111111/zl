import 'package:get/get.dart';
import '../controller/phone_verification_screen_four_controller.dart';
import '../../../core/app_export.dart';

class PhoneVerificationScreenFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PhoneVerificationScreenFourController());
  }
}
