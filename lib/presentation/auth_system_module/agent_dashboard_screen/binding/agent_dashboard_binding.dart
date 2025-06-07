import 'package:get/get.dart';
import '../controller/agent_dashboard_controller.dart';
import '../../../../core/app_export.dart';

class AgentDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AgentDashboardController());
  }
}
