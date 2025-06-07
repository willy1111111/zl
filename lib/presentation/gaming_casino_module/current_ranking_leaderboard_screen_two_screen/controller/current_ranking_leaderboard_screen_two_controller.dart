import '../../../../../core/app_export.dart';
import '../models/current_ranking_leaderboard_screen_two_model.dart';
import '../models/ranking_item_model.dart';
import '../models/user_stats_model.dart';

class CurrentRankingLeaderboardScreenTwoController extends GetxController {
  Rx<CurrentRankingLeaderboardScreenTwoModel>
      currentRankingLeaderboardScreenTwoModel =
      CurrentRankingLeaderboardScreenTwoModel().obs;

  RxList<RankingItemModel> rankingItems = <RankingItemModel>[].obs;
  Rx<UserStatsModel?> userStats = Rx<UserStatsModel?>(null);

  @override
  void onInit() {
    super.onInit();
    currentRankingLeaderboardScreenTwoModel.value =
        CurrentRankingLeaderboardScreenTwoModel();
    initializeRankingData();
    initializeUserStats();
  }

  void initializeRankingData() {
    rankingItems.value = [
      RankingItemModel(
        rank: '1'.obs,
        medalIcon: ImageConstant.imgFrame2131330004.obs,
        userId: '103****339'.obs,
        inviteCount: '10'.obs,
        prize: '₱1500.23'.obs,
        isMedal: true.obs,
      ),
      RankingItemModel(
        rank: '2'.obs,
        medalIcon: ImageConstant.imgFrame2131330004.obs,
        userId: '103****339'.obs,
        inviteCount: '10'.obs,
        prize: '₱1500.23'.obs,
        isMedal: true.obs,
      ),
      RankingItemModel(
        rank: '3'.obs,
        medalIcon: ImageConstant.imgFrame2131330004.obs,
        userId: '103****339'.obs,
        inviteCount: '10'.obs,
        prize: '₱1500.23'.obs,
        isMedal: true.obs,
      ),
      RankingItemModel(
        rank: '4'.obs,
        userId: '103****339'.obs,
        inviteCount: '10'.obs,
        prize: '₱1500.23'.obs,
        isMedal: false.obs,
      ),
      RankingItemModel(
        rank: '5'.obs,
        userId: '103****339'.obs,
        inviteCount: '10'.obs,
        prize: '₱1500.23'.obs,
        isMedal: false.obs,
      ),
      RankingItemModel(
        rank: '6'.obs,
        userId: '103****339'.obs,
        inviteCount: '10'.obs,
        prize: '₱1500.23'.obs,
        isMedal: false.obs,
      ),
      RankingItemModel(
        rank: '7'.obs,
        userId: '103****339'.obs,
        inviteCount: '10'.obs,
        prize: '₱1500.23'.obs,
        isMedal: false.obs,
      ),
      RankingItemModel(
        rank: '8'.obs,
        userId: '103****339'.obs,
        inviteCount: '10'.obs,
        prize: '₱1500.23'.obs,
        isMedal: false.obs,
      ),
      RankingItemModel(
        rank: '9'.obs,
        userId: '103****339'.obs,
        inviteCount: '10'.obs,
        prize: '₱1500.23'.obs,
        isMedal: false.obs,
      ),
      RankingItemModel(
        rank: '10'.obs,
        userId: '103****339'.obs,
        inviteCount: '10'.obs,
        prize: '₱1500.23'.obs,
        isMedal: false.obs,
      ),
      RankingItemModel(
        rank: '11'.obs,
        userId: '103****339'.obs,
        inviteCount: '10'.obs,
        prize: '₱1500.23'.obs,
        isMedal: false.obs,
      ),
      RankingItemModel(
        rank: '12'.obs,
        userId: '103****339'.obs,
        inviteCount: '10'.obs,
        prize: '₱1500.23'.obs,
        isMedal: false.obs,
      ),
      RankingItemModel(
        rank: '13'.obs,
        userId: '103****339'.obs,
        inviteCount: '10'.obs,
        prize: '₱1500.23'.obs,
        isMedal: false.obs,
      ),
      RankingItemModel(
        rank: '14'.obs,
        userId: '103****339'.obs,
        inviteCount: '10'.obs,
        prize: '₱1500.23'.obs,
        isMedal: false.obs,
      ),
      RankingItemModel(
        rank: '15th'.obs,
        userId: '103****339'.obs,
        inviteCount: '10'.obs,
        prize: '₱1500.23'.obs,
        isMedal: false.obs,
      ),
    ];
  }

  void initializeUserStats() {
    userStats.value = UserStatsModel(
      ranking: 'No rank'.obs,
      inviteCount: '0'.obs,
      currentPrize: '₱0'.obs,
    );
  }

  void refreshRankingData() {
    // Simulate refreshing ranking data
    rankingItems.refresh();
  }

  void onRankingItemTap(RankingItemModel item) {
    // Handle ranking item tap if needed
    print('Tapped on user: ${item.userId?.value}');
  }
}
