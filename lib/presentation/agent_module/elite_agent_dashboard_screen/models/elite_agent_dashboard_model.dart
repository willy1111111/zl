import 'package:get/get.dart';
import '../../../../core/app_export.dart';

/// This class is used in the [EliteAgentDashboardScreen] screen with GetX.
class EliteAgentDashboardModel {
  Rx<String> agentTier = "Master Agent I".obs;
  Rx<String> teamCountStatus = "Reached 5".obs;
  Rx<String> teamBettingStatus = "Reached ₱9000".obs;
  Rx<String> todaysIncome = "₱70,577,000.00".obs;
  Rx<String> shareUrl = "http://www.jbet88.co?reCode?=arrre...".obs;

  EliteAgentDashboardModel();
}
