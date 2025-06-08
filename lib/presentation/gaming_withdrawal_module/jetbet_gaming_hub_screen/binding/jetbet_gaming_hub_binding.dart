import 'package:get/get.dart';
import '../controller/jetbet_gaming_hub_controller.dart';
import '../../../core/app_export.dart';

class JetbetGamingHubBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JetbetGamingHubController());
  }
}
