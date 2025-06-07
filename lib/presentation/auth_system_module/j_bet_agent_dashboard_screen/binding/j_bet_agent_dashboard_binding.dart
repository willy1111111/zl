import 'package:get/get.dart';
import '../controller/j_bet_agent_dashboard_controller.dart';
import '../../../../core/app_export.dart';

class JBetAgentDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JBetAgentDashboardController());
  }
}
