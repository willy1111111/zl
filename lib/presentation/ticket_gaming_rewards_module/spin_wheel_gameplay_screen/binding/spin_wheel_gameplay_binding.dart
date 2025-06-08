import 'package:get/get.dart';
import '../controller/spin_wheel_gameplay_controller.dart';
import '../../../core/app_export.dart';

class SpinWheelGameplayBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SpinWheelGameplayController>(
      () => SpinWheelGameplayController(),
    );
  }
}
