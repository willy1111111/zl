import 'package:get/get.dart';
import '../controller/agent_level_system_controller.dart';
import '../../../../../core/app_export.dart';

class AgentLevelSystemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AgentLevelSystemController());
  }
}
