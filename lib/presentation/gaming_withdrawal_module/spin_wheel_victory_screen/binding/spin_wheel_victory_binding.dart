import 'package:get/get.dart';
import '../controller/spin_wheel_victory_controller.dart';
import '../../../core/app_export.dart';

class SpinWheelVictoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SpinWheelVictoryController>(
      () => SpinWheelVictoryController(),
    );
  }
}
