import 'package:get/get.dart';
import '../controller/narad_casino_gaming_platform_controller.dart';
import '../../../core/app_export.dart';

class NaradCasinoGamingPlatformBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NaradCasinoGamingPlatformController());
  }
}
