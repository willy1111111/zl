import 'package:get/get.dart';
import '../controller/spin_game_victory_controller.dart';
import '../../../core/app_export.dart';

class SpinGameVictoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SpinGameVictoryController>(
      () => SpinGameVictoryController(),
    );
  }
}
