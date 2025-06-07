import 'package:get/get.dart';
import '../controller/betting_bonus_controller.dart';
import '../../../../../core/app_export.dart';

class BettingBonusBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BettingBonusController());
  }
}
