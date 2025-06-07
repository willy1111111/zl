import 'package:get/get.dart';
import '../../../../core/app_export.dart';

/// This class is used in the [MaxTierAgentDashboardScreen] screen with GetX.

class MaxTierAgentDashboardModel {
  // Agent tier information
  Rx<String>? agentTier = "Master Agent I".obs;
  Rx<String>? tierStatus = "You have reached the maximum Agent Tier".obs;

  // Benefits information
  Rx<String>? betRebatePercentage = "1.0%".obs;
  Rx<String>? depositRebatePercentage = "1.1%".obs;
  Rx<String>? qualifiedBonusAmount = "₱88".obs;

  // Share information
  Rx<String>? shareUrl = "http://www.jbet88.co?reCode?=arrre...".obs;

  // Today's income
  Rx<String>? todaysIncome = "₱70,577,000.00".obs;
  Rx<String>? incomeLabel = "today's income".obs;

  // Simple constructor with no parameters
  MaxTierAgentDashboardModel();
}
