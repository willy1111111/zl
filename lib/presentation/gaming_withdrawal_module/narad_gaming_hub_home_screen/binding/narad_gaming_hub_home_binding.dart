import 'package:get/get.dart';
import '../controller/narad_gaming_hub_home_controller.dart';
import '../../../core/app_export.dart';

class NaradGamingHubHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NaradGamingHubHomeController());
  }
}
