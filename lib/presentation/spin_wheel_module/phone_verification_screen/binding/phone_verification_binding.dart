import 'package:get/get.dart';
import '../controller/phone_verification_controller.dart';
import '../../../core/app_export.dart';

class PhoneVerificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PhoneVerificationController>(
      () => PhoneVerificationController(),
    );
  }
}
