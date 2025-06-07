import 'package:get/get.dart';
import '../controller/junior_agent_dashboard_controller.dart';
import '../../../../core/app_export.dart';

class JuniorAgentDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JuniorAgentDashboardController());
  }
}
