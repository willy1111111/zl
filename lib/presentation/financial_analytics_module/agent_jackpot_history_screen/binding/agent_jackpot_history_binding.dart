import 'package:get/get.dart';
import '../controller/agent_jackpot_history_controller.dart';
import '../../../core/app_export.dart';

class AgentJackpotHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AgentJackpotHistoryController());
  }
}
