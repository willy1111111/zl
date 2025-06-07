import 'package:get/get.dart';
import '../controller/intermediate_agent_dashboard_controller.dart';
import '../../../../core/app_export.dart';

class IntermediateAgentDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IntermediateAgentDashboardController());
  }
}
