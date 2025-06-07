import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class AgentDashboardModel {
  Rx<String>? agentTier;
  Rx<String>? teamCount;
  Rx<String>? teamBetting;
  Rx<String>? balanceAmount;
  Rx<String>? todayIncome;
  Rx<String>? shareUrl;

  AgentDashboardModel({
    this.agentTier,
    this.teamCount,
    this.teamBetting,
    this.balanceAmount,
    this.todayIncome,
    this.shareUrl,
  });
}
