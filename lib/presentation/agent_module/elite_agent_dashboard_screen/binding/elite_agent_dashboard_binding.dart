import 'package:get/get.dart';
import '../controller/elite_agent_dashboard_controller.dart';
import '../../../../core/app_export.dart';

class EliteAgentDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EliteAgentDashboardController());
  }
}
