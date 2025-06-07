import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class SeniorAgentDashboardModel {
  Rx<String>? agentTier;
  Rx<String>? balanceAmount;
  Rx<String>? todaysIncome;
  Rx<String>? shareLink;

  SeniorAgentDashboardModel({
    this.agentTier,
    this.balanceAmount,
    this.todaysIncome,
    this.shareLink,
  });
}
