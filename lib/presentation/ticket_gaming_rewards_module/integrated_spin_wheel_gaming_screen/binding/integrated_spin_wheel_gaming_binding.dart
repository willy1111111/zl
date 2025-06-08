import 'package:get/get.dart';
import '../controller/integrated_spin_wheel_gaming_controller.dart';
import '../../../core/app_export.dart';

class IntegratedSpinWheelGamingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IntegratedSpinWheelGamingController());
  }
}
