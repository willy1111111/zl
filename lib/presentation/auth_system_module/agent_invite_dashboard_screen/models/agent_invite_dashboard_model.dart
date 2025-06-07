import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class AgentInviteDashboardModel {
  Rx<String>? agentTier = 'Junior Agent I'.obs;
  Rx<String>? tierStatus = 'Already reached this Agent Tier'.obs;
  Rx<String>? shareUrl = 'http://www.jbet88.co?reCode?=arrre...'.obs;
  Rx<String>? todayIncome = '₱10,000,000.00'.obs;
  Rx<bool>? isModalVisible = false.obs;

  AgentInviteDashboardModel({
    this.agentTier,
    this.tierStatus,
    this.shareUrl,
    this.todayIncome,
    this.isModalVisible,
  });
}
