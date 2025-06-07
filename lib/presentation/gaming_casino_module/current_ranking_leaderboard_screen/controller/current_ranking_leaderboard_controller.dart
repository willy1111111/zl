import 'package:get/get.dart';
import '../models/current_ranking_leaderboard_model.dart';
import '../models/ranking_item_model.dart';
import '../../../../../core/app_export.dart';

class CurrentRankingLeaderboardController extends GetxController {
  Rx<CurrentRankingLeaderboardModel> currentRankingLeaderboardModel =
      CurrentRankingLeaderboardModel().obs;

  RxList<RankingItemModel> rankingItems = <RankingItemModel>[].obs;
  RxInt userRanking = 11.obs;
  RxInt userInviteCount = 10.obs;
  RxString userCurrentPrize = '₱1500.23'.obs;

  @override
  void onInit() {
    super.onInit();
    currentRankingLeaderboardModel.value = CurrentRankingLeaderboardModel();
    loadRankingData();
  }

  void loadRankingData() {
    rankingItems.value = [
      RankingItemModel(
        rank: 1.obs,
        userId: '103****339'.obs,
        inviteCount: 10.obs,
        prize: '₱1500.23'.obs,
        isTopThree: true.obs,
        hasMedal: true.obs,
        isCurrentUser: false.obs,
      ),
      RankingItemModel(
        rank: 2.obs,
        userId: '103****339'.obs,
        inviteCount: 10.obs,
        prize: '₱1500.23'.obs,
        isTopThree: true.obs,
        hasMedal: true.obs,
        isCurrentUser: false.obs,
      ),
      RankingItemModel(
        rank: 3.obs,
        userId: '103****339'.obs,
        inviteCount: 10.obs,
        prize: '₱1500.23'.obs,
        isTopThree: true.obs,
        hasMedal: true.obs,
        isCurrentUser: false.obs,
      ),
      RankingItemModel(
        rank: 4.obs,
        userId: '103****339'.obs,
        inviteCount: 10.obs,
        prize: '₱1500.23'.obs,
        isTopThree: false.obs,
        hasMedal: false.obs,
        isCurrentUser: false.obs,
      ),
      RankingItemModel(
        rank: 5.obs,
        userId: '103****339'.obs,
        inviteCount: 10.obs,
        prize: '₱1500.23'.obs,
        isTopThree: false.obs,
        hasMedal: false.obs,
        isCurrentUser: false.obs,
      ),
      RankingItemModel(
        rank: 6.obs,
        userId: '103****339'.obs,
        inviteCount: 10.obs,
        prize: '₱1500.23'.obs,
        isTopThree: false.obs,
        hasMedal: false.obs,
        isCurrentUser: false.obs,
      ),
      RankingItemModel(
        rank: 7.obs,
        userId: '103****339'.obs,
        inviteCount: 10.obs,
        prize: '₱1500.23'.obs,
        isTopThree: false.obs,
        hasMedal: false.obs,
        isCurrentUser: false.obs,
      ),
      RankingItemModel(
        rank: 8.obs,
        userId: '103****339'.obs,
        inviteCount: 10.obs,
        prize: '₱1500.23'.obs,
        isTopThree: false.obs,
        hasMedal: false.obs,
        isCurrentUser: false.obs,
      ),
      RankingItemModel(
        rank: 9.obs,
        userId: '103****339'.obs,
        inviteCount: 10.obs,
        prize: '₱1500.23'.obs,
        isTopThree: false.obs,
        hasMedal: false.obs,
        isCurrentUser: false.obs,
      ),
      RankingItemModel(
        rank: 10.obs,
        userId: '103****339'.obs,
        inviteCount: 10.obs,
        prize: '₱1500.23'.obs,
        isTopThree: false.obs,
        hasMedal: false.obs,
        isCurrentUser: false.obs,
      ),
      RankingItemModel(
        rank: 11.obs,
        userId: '103****339'.obs,
        inviteCount: 10.obs,
        prize: '₱1500.23'.obs,
        isTopThree: false.obs,
        hasMedal: false.obs,
        isCurrentUser: true.obs,
      ),
      RankingItemModel(
        rank: 12.obs,
        userId: '103****339'.obs,
        inviteCount: 10.obs,
        prize: '₱1500.23'.obs,
        isTopThree: false.obs,
        hasMedal: false.obs,
        isCurrentUser: false.obs,
      ),
      RankingItemModel(
        rank: 13.obs,
        userId: '103****339'.obs,
        inviteCount: 10.obs,
        prize: '₱1500.23'.obs,
        isTopThree: false.obs,
        hasMedal: false.obs,
        isCurrentUser: false.obs,
      ),
      RankingItemModel(
        rank: 14.obs,
        userId: '103****339'.obs,
        inviteCount: 10.obs,
        prize: '₱1500.23'.obs,
        isTopThree: false.obs,
        hasMedal: false.obs,
        isCurrentUser: false.obs,
      ),
      RankingItemModel(
        rank: 15.obs,
        userId: '103****339'.obs,
        inviteCount: 10.obs,
        prize: '₱1500.23'.obs,
        isTopThree: false.obs,
        hasMedal: false.obs,
        isCurrentUser: false.obs,
      ),
    ];
  }

  void refreshRanking() {
    loadRankingData();
  }
}
