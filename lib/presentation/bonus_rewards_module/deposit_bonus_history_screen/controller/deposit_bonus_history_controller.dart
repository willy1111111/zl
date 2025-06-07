import 'package:get/get.dart';
import '../models/bonus_history_item_model.dart';
import '../../../../../core/app_export.dart';

class DepositBonusHistoryController extends GetxController {
  RxList<BonusHistoryItemModel> bonusHistoryItems =
      <BonusHistoryItemModel>[].obs;
  RxString totalDepositBonus = '333,333.00'.obs;
  RxInt totalUsers = 10.obs;
  RxInt selectedTabIndex = 4.obs;
  RxInt selectedBottomNavIndex = 2.obs;

  @override
  void onInit() {
    super.onInit();
    _initializeBonusHistoryItems();
  }

  void _initializeBonusHistoryItems() {
    bonusHistoryItems.value = [
      BonusHistoryItemModel(
        date: '2023-09-09 19:00'.obs,
        teams: '898****33'.obs,
        depositAmount: '300'.obs,
        bonus: '+₱ 9.80'.obs,
      ),
      BonusHistoryItemModel(
        date: '2023-09-09 19:00'.obs,
        teams: '898****33'.obs,
        depositAmount: '300'.obs,
        bonus: '+₱ 9.80'.obs,
      ),
      BonusHistoryItemModel(
        date: '2023-09-09 19:00'.obs,
        teams: '898****33'.obs,
        depositAmount: '300'.obs,
        bonus: '+₱ 9.80'.obs,
      ),
      BonusHistoryItemModel(
        date: '2023-09-09 19:00'.obs,
        teams: '898****33'.obs,
        depositAmount: '300'.obs,
        bonus: '+₱ 9.80'.obs,
      ),
    ];
  }

  void onTabChanged(int index) {
    selectedTabIndex.value = index;
  }

  void onBottomNavChanged(int index) {
    selectedBottomNavIndex.value = index;
  }
}
