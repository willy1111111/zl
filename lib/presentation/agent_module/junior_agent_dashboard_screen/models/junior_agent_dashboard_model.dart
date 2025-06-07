import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class JuniorAgentDashboardModel {
  Rx<String>? agentTier;
  Rx<String>? teamCountProgress;
  Rx<String>? teamBettingProgress;
  Rx<String>? todayIncome;
  Rx<String>? referralCode;

  JuniorAgentDashboardModel({
    this.agentTier,
    this.teamCountProgress,
    this.teamBettingProgress,
    this.todayIncome,
    this.referralCode,
  }) {
    agentTier = agentTier ?? 'Junior Agent I'.obs;
    teamCountProgress = teamCountProgress ?? '5/10'.obs;
    teamBettingProgress = teamBettingProgress ?? '₱550.00/10000'.obs;
    todayIncome = todayIncome ?? '₱70,577,000.00'.obs;
    referralCode = referralCode ?? 'http://www.jbet88.co?reCode?=arrre...'.obs;
  }
}
