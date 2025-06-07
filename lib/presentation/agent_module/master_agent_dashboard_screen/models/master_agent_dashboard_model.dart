import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class MasterAgentDashboardModel {
  Rx<String>? agentTier;
  Rx<String>? teamCountProgress;
  Rx<String>? teamBettingProgress;
  Rx<String>? teamDepositProgress;
  Rx<String>? shareUrl;
  Rx<String>? todaysIncome;

  MasterAgentDashboardModel({
    this.agentTier,
    this.teamCountProgress,
    this.teamBettingProgress,
    this.teamDepositProgress,
    this.shareUrl,
    this.todaysIncome,
  });
}
