import '../../../../../core/app_export.dart';
import '../models/bet88_agent_jackpot_ranking_screen_two_model.dart';
import '../models/last_champion_model.dart';
import '../models/ranking_item_model.dart';
import '../models/time_remaining_model.dart';
import '../models/user_ranking_model.dart';

class Bet88AgentJackpotRankingScreenTwoController extends GetxController {
  Rx<Bet88AgentJackpotRankingScreenTwoModel>
      bet88AgentJackpotRankingScreenTwoModelObj =
      Bet88AgentJackpotRankingScreenTwoModel().obs;

  Rx<String> balanceAmount = '₱1980.00'.obs;
  Rx<String> jackpotAmount = '186,665,20'.obs;
  Rx<int> prizeCount = 18.obs;

  Rx<TimeRemainingModel> timeRemaining = TimeRemainingModel(
    days: '06'.obs, // Modified: Wrapped String with .obs
    hours: '11'.obs, // Modified: Wrapped String with .obs
    minutes: '38'.obs, // Modified: Wrapped String with .obs
    seconds: '47'.obs, // Modified: Wrapped String with .obs
  ).obs;

  Rx<LastChampionModel> lastChampion = LastChampionModel(
    userId: '103****839'.obs, // Modified: Wrapped String with .obs
    inviteCount: '1011'.obs, // Modified: Wrapped String with .obs
    prizeAmount: '₱ 66,408.66'.obs, // Modified: Wrapped String with .obs
  ).obs;

  Rx<UserRankingModel> userRanking = UserRankingModel(
    userId: '103****839'.obs, // Modified: Wrapped String with .obs
    inviteAmount: '66,408.66'.obs, // Modified: Wrapped String with .obs
    currentRank: 8.obs, // Modified: Wrapped int with .obs
    inviteUserCount: 20.obs, // Modified: Wrapped int with .obs
  ).obs;

  RxList<RankingItemModel> rankingList = <RankingItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    initializeRankingList();
    startCountdownTimer();
  }

  void initializeRankingList() {
    rankingList.value = [
      RankingItemModel(
        rank: 1.obs,
        userId: '103****339'.obs,
        inviteQuantity: '10'.obs,
        prize: '₱1500.23'.obs,
        hasMedal: true.obs,
        medalImage: ImageConstant.imgFrame2131330004.obs,
      ),
      RankingItemModel(
        rank: 2.obs,
        userId: '103****339'.obs,
        inviteQuantity: '10'.obs,
        prize: '₱1500.23'.obs,
        hasMedal: true.obs,
        medalImage: ImageConstant.imgFrame2131330004.obs,
      ),
      RankingItemModel(
        rank: 3.obs,
        userId: '103****339'.obs,
        inviteQuantity: '10'.obs,
        prize: '₱1500.23'.obs,
        hasMedal: true.obs,
        medalImage: ImageConstant.imgFrame2131330004.obs,
      ),
      RankingItemModel(
        rank: 4.obs,
        userId: '103****339'.obs,
        inviteQuantity: '10'.obs,
        prize: '₱1500.23'.obs,
        hasMedal: false.obs,
      ),
      RankingItemModel(
        rank: 5.obs,
        userId: '103****339'.obs,
        inviteQuantity: '10'.obs,
        prize: '₱1500.23'.obs,
        hasMedal: false.obs,
      ),
      RankingItemModel(
        rank: 6.obs,
        userId: '103****339'.obs,
        inviteQuantity: '10'.obs,
        prize: '₱1500.23'.obs,
        hasMedal: false.obs,
      ),
      RankingItemModel(
        rank: 7.obs,
        userId: '103****339'.obs,
        inviteQuantity: '10'.obs,
        prize: '₱1500.23'.obs,
        hasMedal: false.obs,
      ),
      RankingItemModel(
        rank: 8.obs,
        userId: '103****339'.obs,
        inviteQuantity: '10'.obs,
        prize: '₱1500.23'.obs,
        hasMedal: false.obs,
        isUserRank: true.obs,
      ),
      RankingItemModel(
        rank: 9.obs,
        userId: '103****339'.obs,
        inviteQuantity: '10'.obs,
        prize: '₱1500.23'.obs,
        hasMedal: false.obs,
      ),
      RankingItemModel(
        rank: 10.obs,
        userId: '103****339'.obs,
        inviteQuantity: '10'.obs,
        prize: '₱1500.23'.obs,
        hasMedal: false.obs,
      ),
    ];
  }

  void startCountdownTimer() {
    // This would normally be a real countdown timer
    // For demo purposes, keeping static values
  }

  void onMyPrizesTap() {
    // Handle my prizes navigation
  }

  void onInviteTap() {
    // Handle invite action
  }

  void onViewMoreTap() {
    // Handle view more action
  }

  @override
  void onClose() {
    super.onClose();
  }
}
