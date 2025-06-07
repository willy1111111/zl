import 'package:get/get.dart';
import '../controller/agent_invite_dashboard_controller.dart';
import '../../../../core/app_export.dart';

class AgentInviteDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AgentInviteDashboardController());
  }
}
