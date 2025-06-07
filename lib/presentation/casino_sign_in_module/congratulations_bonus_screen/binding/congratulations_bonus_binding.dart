import 'package:get/get.dart';
import '../controller/congratulations_bonus_controller.dart';
import '../../../../../core/app_export.dart';

class CongratulationsBonusBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CongratulationsBonusController());
  }
}
