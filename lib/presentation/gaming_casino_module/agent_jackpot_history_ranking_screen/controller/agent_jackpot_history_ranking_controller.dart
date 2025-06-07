import '../../../../../core/app_export.dart';
import '../models/agent_jackpot_history_ranking_model.dart';
import '../models/ranking_item_model.dart';

class AgentJackpotHistoryRankingController extends GetxController {
  Rx<AgentJackpotHistoryRankingModel?> agentJackpotHistoryRankingModel =
      Rx<AgentJackpotHistoryRankingModel?>(null);

  RxList<RankingItemModel> rankingItems = <RankingItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    agentJackpotHistoryRankingModel.value = AgentJackpotHistoryRankingModel();
    loadRankingData();
  }

  void loadRankingData() {
    rankingItems.value = [
      RankingItemModel(
        rank: '1'.obs,
        medalIcon: ImageConstant.imgFrame2131330004.obs,
        username: '103****339'.obs,
        inviteQuantity: '10'.obs,
        prize: '₱1500.23'.obs,
        hasMedal: true.obs,
        hasAlternateBackground: true.obs,
      ),
      RankingItemModel(
        rank: '2'.obs,
        medalIcon: ImageConstant.imgFrame2131330004.obs,
        username: '103****339'.obs,
        inviteQuantity: '10'.obs,
        prize: '₱1500.23'.obs,
        hasMedal: true.obs,
        hasAlternateBackground: false.obs,
      ),
      RankingItemModel(
        rank: '3'.obs,
        medalIcon: ImageConstant.imgFrame2131330004.obs,
        username: '103****339'.obs,
        inviteQuantity: '10'.obs,
        prize: '₱1500.23'.obs,
        hasMedal: true.obs,
        hasAlternateBackground: true.obs,
      ),
      RankingItemModel(
        rank: '4'.obs,
        username: '103****339'.obs,
        inviteQuantity: '10'.obs,
        prize: '₱1500.23'.obs,
        hasMedal: false.obs,
        hasAlternateBackground: false.obs,
      ),
      RankingItemModel(
        rank: '5'.obs,
        username: '103****339'.obs,
        inviteQuantity: '10'.obs,
        prize: '₱1500.23'.obs,
        hasMedal: false.obs,
        hasAlternateBackground: true.obs,
      ),
      RankingItemModel(
        rank: '6'.obs,
        username: '103****339'.obs,
        inviteQuantity: '10'.obs,
        prize: '₱1500.23'.obs,
        hasMedal: false.obs,
        hasAlternateBackground: false.obs,
      ),
      RankingItemModel(
        rank: '7'.obs,
        username: '103****339'.obs,
        inviteQuantity: '10'.obs,
        prize: '₱1500.23'.obs,
        hasMedal: false.obs,
        hasAlternateBackground: true.obs,
      ),
      RankingItemModel(
        rank: '8'.obs,
        username: '103****339'.obs,
        inviteQuantity: '10'.obs,
        prize: '₱1500.23'.obs,
        hasMedal: false.obs,
        hasAlternateBackground: false.obs,
      ),
      RankingItemModel(
        rank: '9'.obs,
        username: '103****339'.obs,
        inviteQuantity: '10'.obs,
        prize: '₱1500.23'.obs,
        hasMedal: false.obs,
        hasAlternateBackground: true.obs,
      ),
      RankingItemModel(
        rank: '10'.obs,
        username: '103****339'.obs,
        inviteQuantity: '10'.obs,
        prize: '₱1500.23'.obs,
        hasMedal: false.obs,
        hasAlternateBackground: false.obs,
      ),
      RankingItemModel(
        rank: '11'.obs,
        username: '103****339'.obs,
        inviteQuantity: '10'.obs,
        prize: '₱1500.23'.obs,
        hasMedal: false.obs,
        hasAlternateBackground: true.obs,
      ),
      RankingItemModel(
        rank: '12'.obs,
        username: '103****339'.obs,
        inviteQuantity: '10'.obs,
        prize: '₱1500.23'.obs,
        hasMedal: false.obs,
        hasAlternateBackground: false.obs,
      ),
      RankingItemModel(
        rank: '13th'.obs,
        username: '103****339'.obs,
        inviteQuantity: '10'.obs,
        prize: '₱1500.23'.obs,
        hasMedal: false.obs,
        hasAlternateBackground: true.obs,
        hasSpecialIndicator: true.obs,
      ),
      RankingItemModel(
        rank: '14th'.obs,
        username: '103****339'.obs,
        inviteQuantity: '10'.obs,
        prize: '₱1500.23'.obs,
        hasMedal: false.obs,
        hasAlternateBackground: false.obs,
      ),
    ];
  }

  void refreshRankingData() {
    loadRankingData();
  }
}
