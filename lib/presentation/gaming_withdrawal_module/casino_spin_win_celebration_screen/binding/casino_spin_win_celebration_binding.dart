import 'package:get/get.dart';
import '../controller/casino_spin_win_celebration_controller.dart';
import '../../../core/app_export.dart';

class CasinoSpinWinCelebrationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CasinoSpinWinCelebrationController());
  }
}
