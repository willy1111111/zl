import 'package:get/get.dart';
import '../controller/bonus_center_controller.dart';
import '../../../core/app_export.dart';

class BonusCenterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BonusCenterController());
  }
}
