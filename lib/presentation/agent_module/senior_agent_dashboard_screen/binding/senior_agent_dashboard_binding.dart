import 'package:get/get.dart';
import '../controller/senior_agent_dashboard_controller.dart';
import '../../../../core/app_export.dart';

class SeniorAgentDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SeniorAgentDashboardController());
  }
}
