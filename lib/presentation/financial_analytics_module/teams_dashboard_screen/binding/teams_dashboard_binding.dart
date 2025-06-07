import 'package:get/get.dart';
import '../controller/teams_dashboard_controller.dart';
import '../../../core/app_export.dart';

class TeamsDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TeamsDashboardController());
  }
}
