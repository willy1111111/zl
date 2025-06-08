import 'package:get/get.dart';
import '../controller/lucky_wheel_spin_controller.dart';
import '../../../core/app_export.dart';

class LuckyWheelSpinBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LuckyWheelSpinController>(
      () => LuckyWheelSpinController(),
    );
  }
}
