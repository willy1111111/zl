import 'package:get/get.dart';
import '../controller/jet_bet_gaming_hub_controller.dart';
import '../../../../../core/app_export.dart';

class JetBetGamingHubBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JetBetGamingHubController());
  }
}
