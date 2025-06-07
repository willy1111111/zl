import '../../../core/app_export.dart';
import '../models/bonus_item_model.dart';
import '../models/income_dashboard_screen_two_model.dart';

class IncomeDashboardScreenTwoController extends GetxController {
  Rx<IncomeDashboardScreenTwoModel> incomeDashboardScreenTwoModel =
      IncomeDashboardScreenTwoModel().obs;
  RxList<BonusItemModel> bonusItems = <BonusItemModel>[].obs;
  RxInt selectedFilterTab = 0.obs;

  @override
  void onInit() {
    super.onInit();
    initializeBonusItems();
  }

  void initializeBonusItems() {
    bonusItems.value = [
      BonusItemModel(
        iconPath: ImageConstant.imgGroup1321314713.obs,
        title: 'Registration Bonus:'.obs,
        amount: '₱ 92.00'.obs,
        subtitle: 'Registers: 3'.obs,
        hasInfo: true.obs,
      ),
      BonusItemModel(
        iconPath: ImageConstant.imgGroup1321314714.obs,
        title: 'Deposit Bonus:'.obs,
        amount: '₱ 92.00'.obs,
        subtitle: 'Depositors: 3'.obs,
        hasInfo: true.obs,
      ),
      BonusItemModel(
        iconPath: ImageConstant.imgGroup1321314715.obs,
        title: 'Qualified Bonus：'.obs,
        amount: '₱ 1292.00'.obs,
        subtitle: 'Qualified Users: 3'.obs,
        hasInfo: true.obs,
      ),
      BonusItemModel(
        iconPath: ImageConstant.imgGroup1321314716.obs,
        title: 'Betting Rebates Bonus:'.obs,
        amount: '₱ 1292.00'.obs,
        hasInfo: false.obs,
      ),
      BonusItemModel(
        iconPath: ImageConstant.imgGroup1321314717.obs,
        title: 'Achievement Rewards:'.obs,
        amount: '₱ 333,333.00'.obs,
        hasInfo: false.obs,
      ),
      BonusItemModel(
        iconPath: ImageConstant.imgGroup1321314716Green40001.obs,
        title: 'Deposit Rebate Bonus:'.obs,
        amount: '₱ 333,333.00'.obs,
        hasInfo: false.obs,
      ),
      BonusItemModel(
        isRankingBonus: true.obs,
        title: 'ranking Bonus:'.obs,
        amount: '₱ 333,333.00'.obs,
        hasInfo: false.obs,
      ),
    ];
  }

  void selectFilterTab(int index) {
    selectedFilterTab.value = index;
  }

  @override
  void onClose() {
    super.onClose();
  }
}
