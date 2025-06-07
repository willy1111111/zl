import 'package:get/get.dart';
import '../controller/bet88_agent_jackpot_ranking_controller.dart';
import '../../../../../core/app_export.dart';

class Bet88AgentJackpotRankingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Bet88AgentJackpotRankingController());
  }
}
