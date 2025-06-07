import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class IntermediateAgentDashboardModel {
  Rx<String>? agentTier;
  Rx<String>? teamCount;
  Rx<String>? teamBetting;
  Rx<String>? todaysIncome;
  Rx<String>? shareLink;

  IntermediateAgentDashboardModel({
    this.agentTier,
    this.teamCount,
    this.teamBetting,
    this.todaysIncome,
    this.shareLink,
  });
}
