import 'package:get/get.dart';
import '../models/jackpot_history_model.dart';
import '../../../core/app_export.dart';

class JackpotHistoryController extends GetxController {
  Rx<JackpotHistoryModel> jackpotHistoryModel = JackpotHistoryModel().obs;

  // Observable variables for dynamic content
  Rx<String>? dateFilter1 = 'Date:2024.03.09-2024.03.116'.obs;
  Rx<String>? dateFilter2 = 'Date:2024.03.09-2024.03.116'.obs;
  Rx<String>? progressText = 'Please waitrankings in progress.'.obs;

  @override
  void onInit() {
    super.onInit();
    initializeData();
  }

  void initializeData() {
    jackpotHistoryModel.value = JackpotHistoryModel(
      title: 'History'.obs,
      jackpotAmount: '₱15,666,523.70'.obs,
      jackpotTitle: 'AGENT JACKPOT'.obs,
      isLoading: true.obs,
    );
  }

  void onClosePressed() {
    Get.back();
  }

  void updateDateFilters() {
    // Method to update date filters if needed
    dateFilter1?.value = 'Date:2024.03.09-2024.03.116';
    dateFilter2?.value = 'Date:2024.03.09-2024.03.116';
  }

  @override
  void onClose() {
    super.onClose();
  }
}
