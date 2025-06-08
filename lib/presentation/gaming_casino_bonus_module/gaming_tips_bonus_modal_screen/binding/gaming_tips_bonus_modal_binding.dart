import 'package:get/get.dart';
import '../controller/gaming_tips_bonus_modal_controller.dart';
import '../../../core/app_export.dart';

class GamingTipsBonusModalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GamingTipsBonusModalController());
  }
}
