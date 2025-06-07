import 'package:get/get.dart';
import '../controller/agent_ranking_bonus_rules_controller.dart';
import '../../../../../core/app_export.dart';

class AgentRankingBonusRulesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AgentRankingBonusRulesController());
  }
}
