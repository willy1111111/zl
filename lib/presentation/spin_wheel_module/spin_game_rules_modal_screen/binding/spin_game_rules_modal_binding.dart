import 'package:get/get.dart';
import '../controller/spin_game_rules_modal_controller.dart';
import '../../../core/app_export.dart';

class SpinGameRulesModalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SpinGameRulesModalController>(
      () => SpinGameRulesModalController(),
    );
  }
}
