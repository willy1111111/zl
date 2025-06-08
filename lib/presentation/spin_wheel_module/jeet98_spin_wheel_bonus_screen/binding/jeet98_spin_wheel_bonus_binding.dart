import 'package:get/get.dart';
import '../controller/jeet98_spin_wheel_bonus_controller.dart';
import '../../../core/app_export.dart';

class Jeet98SpinWheelBonusBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Jeet98SpinWheelBonusController());
  }
}
