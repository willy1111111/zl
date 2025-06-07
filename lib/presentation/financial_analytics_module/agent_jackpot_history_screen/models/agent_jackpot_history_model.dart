import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [AgentJackpotHistoryScreen] screen with GetX.

class AgentJackpotHistoryModel {
  Rx<String> title = "History".obs;
  Rx<String> dateRange = "Date:2024.03.09-2024.03.116".obs;
  Rx<String> jackpotTitle = "AGENT JACKPOT".obs;
  Rx<String> jackpotAmount = "₱15,666,523.70".obs;
  Rx<String> noDataText = "No data".obs;
  Rx<bool> isModalVisible = true.obs;

  AgentJackpotHistoryModel();
}
