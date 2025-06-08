import 'package:get/get.dart';
import '../controller/narad_gaming_platform_home_controller.dart';
import '../../../core/app_export.dart';

class NaradGamingPlatformHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NaradGamingPlatformHomeController());
  }
}
