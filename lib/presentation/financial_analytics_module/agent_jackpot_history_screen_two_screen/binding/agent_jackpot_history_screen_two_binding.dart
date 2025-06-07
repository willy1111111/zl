import 'package:get/get.dart';
import '../controller/agent_jackpot_history_screen_two_controller.dart';
import '../../../core/app_export.dart';

class AgentJackpotHistoryScreenTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AgentJackpotHistoryScreenTwoController());
  }
}
