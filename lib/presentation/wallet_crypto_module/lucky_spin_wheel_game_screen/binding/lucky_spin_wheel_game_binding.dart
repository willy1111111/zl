import 'package:get/get.dart';
import '../controller/lucky_spin_wheel_game_controller.dart';
import '../../../core/app_export.dart';

class LuckySpinWheelGameBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LuckySpinWheelGameController());
  }
}
