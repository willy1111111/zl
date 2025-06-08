import 'package:get/get.dart';
import '../controller/spin_game_phone_verification_controller.dart';
import '../../../core/app_export.dart';

class SpinGamePhoneVerificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SpinGamePhoneVerificationController());
  }
}
