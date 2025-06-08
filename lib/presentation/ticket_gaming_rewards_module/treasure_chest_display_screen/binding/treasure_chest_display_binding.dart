import 'package:get/get.dart';
import '../controller/treasure_chest_display_controller.dart';
import '../../../core/app_export.dart';

class TreasureChestDisplayBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TreasureChestDisplayController());
  }
}
