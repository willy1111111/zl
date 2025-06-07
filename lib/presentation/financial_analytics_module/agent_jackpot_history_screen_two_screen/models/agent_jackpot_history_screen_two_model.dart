import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [AgentJackpotHistoryScreenTwo] screen with GetX.
class AgentJackpotHistoryScreenTwoModel {
  Rx<String> historyTitle = 'History'.obs;
  Rx<String> dateRange = 'Date:2024.03.09-2024.03.116'.obs;
  Rx<String> jackpotTitle = 'AGENT JACKPOT'.obs;
  Rx<String> jackpotAmount = '₱15,666,523.70'.obs;

  AgentJackpotHistoryScreenTwoModel();
}
