import 'package:get/get.dart';
import '../controller/agent_jackpot_history_ranking_controller.dart';
import '../../../../../core/app_export.dart';

class AgentJackpotHistoryRankingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AgentJackpotHistoryRankingController());
  }
}
