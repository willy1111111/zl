import 'package:get/get.dart';
import '../controller/text_safe_zone_display_controller.dart';
import '../../../core/app_export.dart';

class TextSafeZoneDisplayBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TextSafeZoneDisplayController());
  }
}
