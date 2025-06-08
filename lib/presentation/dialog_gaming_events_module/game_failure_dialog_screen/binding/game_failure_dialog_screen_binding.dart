import 'package:get/get.dart';
import '../controller/game_failure_dialog_screen_controller.dart';
import '../../../core/app_export.dart';

class GameFailureDialogScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GameFailureDialogScreenController());
  }
}
