import 'package:get/get.dart';
import '../models/agent_jackpot_history_model.dart';
import '../../../core/app_export.dart';

class AgentJackpotHistoryController extends GetxController {
  Rx<AgentJackpotHistoryModel> agentJackpotHistoryModel =
      AgentJackpotHistoryModel().obs;

  @override
  void onInit() {
    super.onInit();
    agentJackpotHistoryModel.value = AgentJackpotHistoryModel();
  }

  void closeModal() {
    Get.back();
  }
}
