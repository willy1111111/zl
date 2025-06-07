import 'package:get/get.dart';
import '../controller/gaming_hub_controller.dart';
import '../../../../core/app_export.dart';

class GamingHubBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GamingHubController>(() => GamingHubController());
  }
}
