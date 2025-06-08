import 'package:get/get.dart';
import '../controller/narad_casino_game_hub_controller.dart';
import '../../../core/app_export.dart';

class NaradCasinoGameHubBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NaradCasinoGameHubController());
  }
}
