import 'package:get/get.dart';
import '../controller/casino_gaming_hub_controller.dart';
import '../../../../../core/app_export.dart';

class CasinoGamingHubBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CasinoGamingHubController());
  }
}
