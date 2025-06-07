import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class JBetAgentDashboardModel {
  Rx<String>? shareLink;
  Rx<String>? todaysIncome;
  Rx<String>? agentRankingBonusTitle;
  Rx<String>? agentRankingBonusAmount;

  JBetAgentDashboardModel({
    this.shareLink,
    this.todaysIncome,
    this.agentRankingBonusTitle,
    this.agentRankingBonusAmount,
  }) {
    shareLink = shareLink ?? 'http://www.jbet88.co?reCode?=arrre...'.obs;
    todaysIncome = todaysIncome ?? '₱70,577,000.00'.obs;
    agentRankingBonusTitle =
        agentRankingBonusTitle ?? 'Agent Ranking Bonus'.obs;
    agentRankingBonusAmount = agentRankingBonusAmount ?? '₱ 100,000.00'.obs;
  }
}
