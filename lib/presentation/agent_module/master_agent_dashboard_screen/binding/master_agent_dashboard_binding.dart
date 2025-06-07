import 'package:get/get.dart';
import '../controller/master_agent_dashboard_controller.dart';
import '../../../../core/app_export.dart';

class MasterAgentDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MasterAgentDashboardController());
  }
}
