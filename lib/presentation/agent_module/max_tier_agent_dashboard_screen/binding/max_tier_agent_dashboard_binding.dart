import 'package:get/get.dart';
import '../controller/max_tier_agent_dashboard_controller.dart';
import '../../../../core/app_export.dart';

class MaxTierAgentDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MaxTierAgentDashboardController());
  }
}
