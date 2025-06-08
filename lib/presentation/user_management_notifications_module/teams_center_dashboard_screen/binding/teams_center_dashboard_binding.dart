import 'package:get/get.dart';
import '../controller/teams_center_dashboard_controller.dart';
import '../../../core/app_export.dart';

class TeamsCenterDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TeamsCenterDashboardController());
  }
}
