import 'package:get/get.dart';
import '../models/achievement_bonus_model.dart';
import '../models/bonus_record_model.dart';
import '../../../../../core/app_export.dart';

class AchievementBonusController extends GetxController {
  Rx<AchievementBonusModel> achievementBonusModel = AchievementBonusModel().obs;
  RxList<BonusRecordModel> bonusRecords = <BonusRecordModel>[].obs;
  RxInt selectedTabIndex = 4.obs;
  RxString totalDepositRebate = '₱ 333,333.00'.obs;
  RxString selectedFilter = 'Achievement Bonus'.obs;
  RxString selectedDateRange = '08-21 - 08-27'.obs;

  @override
  void onInit() {
    super.onInit();
    achievementBonusModel.value = AchievementBonusModel();
    initializeBonusRecords();
  }

  void initializeBonusRecords() {
    bonusRecords.value = [
      BonusRecordModel(
        date: '2023-09-09 19:00'.obs,
        ranking: '5'.obs,
        bonus: '+₱ 88.80'.obs,
      ),
      BonusRecordModel(
        date: '2023-09-09 19:00'.obs,
        ranking: '10'.obs,
        bonus: '+₱ 188.80'.obs,
      ),
      BonusRecordModel(
        date: '2023-09-09 19:00'.obs,
        ranking: '20'.obs,
        bonus: '+₱ 388.80'.obs,
      ),
      BonusRecordModel(
        date: '2023-09-09 19:00'.obs,
        ranking: '50'.obs,
        bonus: '+₱ 888.80'.obs,
      ),
    ];
  }

  void changeTab(int index) {
    selectedTabIndex.value = index;
  }

  void onFilterChanged(String filter) {
    selectedFilter.value = filter;
  }

  void onDateRangeChanged(String dateRange) {
    selectedDateRange.value = dateRange;
  }

  @override
  void onClose() {
    super.onClose();
  }
}
