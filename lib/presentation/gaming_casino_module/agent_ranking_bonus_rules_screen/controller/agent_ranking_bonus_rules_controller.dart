import '../../../../../core/app_export.dart';
import '../models/agent_ranking_bonus_rules_model.dart';
import '../models/ranking_item_model.dart';

class AgentRankingBonusRulesController extends GetxController {
  Rx<AgentRankingBonusRulesModel> agentRankingBonusRulesModelObj =
      AgentRankingBonusRulesModel().obs;

  RxList<RankingItemModel> rankingItems = <RankingItemModel>[].obs;
  RxList<RxString> termsAndConditions = <RxString>[].obs;

  @override
  void onInit() {
    super.onInit();
    _initializeRankingItems();
    _initializeTermsAndConditions();
  }

  void _initializeRankingItems() {
    rankingItems.value = [
      RankingItemModel(
        hasIcon: true.obs,
        iconPath: ImageConstant.imgFrame2131330004.obs,
        bonus: '2%'.obs,
      ),
      RankingItemModel(
        hasIcon: true.obs,
        iconPath: ImageConstant.imgFrame2131330004.obs,
        bonus: '3%'.obs,
      ),
      RankingItemModel(
        hasIcon: true.obs,
        iconPath: ImageConstant.imgFrame2131330004.obs,
        bonus: '5%'.obs,
      ),
      RankingItemModel(
        hasIcon: false.obs,
        rank: '4'.obs,
        bonus: '6%'.obs,
      ),
      RankingItemModel(
        hasIcon: false.obs,
        rank: '5'.obs,
        bonus: '6%'.obs,
      ),
      RankingItemModel(
        hasIcon: false.obs,
        rank: '6'.obs,
        bonus: '2%'.obs,
      ),
      RankingItemModel(
        hasIcon: false.obs,
        rank: '7'.obs,
        bonus: '6%'.obs,
      ),
      RankingItemModel(
        hasIcon: false.obs,
        rank: '8'.obs,
        bonus: '3%'.obs,
      ),
      RankingItemModel(
        hasIcon: false.obs,
        rank: '9'.obs,
        bonus: '5%'.obs,
      ),
      RankingItemModel(
        hasIcon: false.obs,
        rank: '10'.obs,
        bonus: '6%'.obs,
      ),
      RankingItemModel(
        hasIcon: false.obs,
        rank: '11-40'.obs,
        bonus: '6%'.obs,
      ),
      RankingItemModel(
        hasIcon: false.obs,
        rank: '40-60'.obs,
        bonus: '6%'.obs,
      ),
      RankingItemModel(
        hasIcon: false.obs,
        rank: '60-100'.obs,
        bonus: '6%'.obs,
      ),
    ];
  }

  void _initializeTermsAndConditions() {
    termsAndConditions.value = [
      '1. Only directly invited qualified users within a week are counted.'.obs,
      '2. leaderboard rewards are settled every Monday at 0:00.'.obs,
      '3. There may be a delay in rankings; final results are based on actual system settlement.'
          .obs,
      '4. please claim the corresponding rewards before23:59 on Friday, otherwise, they will becleared.'
          .obs,
    ];
  }

  void closeModal() {
    Get.back();
  }
}
