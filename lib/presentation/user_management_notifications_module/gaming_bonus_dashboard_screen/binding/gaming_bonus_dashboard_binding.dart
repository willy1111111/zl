import 'package:get/get.dart';
import '../controller/gaming_bonus_dashboard_controller.dart';
import '../../../core/app_export.dart';

class GamingBonusDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GamingBonusDashboardController());
  }
}
