import 'package:get/get.dart';
import '../controller/narad_gaming_dashboard_controller.dart';
import '../../../../../core/app_export.dart';

class NaradGamingDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NaradGamingDashboardController());
  }
}
