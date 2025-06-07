import '../../../../../core/app_export.dart';
import '../models/bet88_agent_jackpot_ranking_model.dart';
import '../models/ranking_item_model.dart';

class Bet88AgentJackpotRankingController extends GetxController {
  Rx<Bet88AgentJackpotRankingModel> bet88AgentJackpotRankingModel =
      Bet88AgentJackpotRankingModel().obs;

  RxList<RankingItemModel> rankingItems = <RankingItemModel>[].obs;

  RxInt days = 6.obs;
  RxInt hours = 11.obs;
  RxInt minutes = 38.obs;
  RxInt seconds = 47.obs;

  late Worker countdownWorker;

  @override
  void onInit() {
    super.onInit();
    bet88AgentJackpotRankingModel.value = Bet88AgentJackpotRankingModel();
    _initializeRankingItems();
    _startCountdown();
  }

  @override
  void onClose() {
    countdownWorker.dispose();
    super.onClose();
  }

  void _initializeRankingItems() {
    rankingItems.value = [
      RankingItemModel(
        rank: 1.obs,
        username: '103****339'.obs,
        inviteCount: 10.obs,
        prize: '₱1500.23'.obs,
        hasMedal: true.obs,
        medalImage: ImageConstant.imgFrame2131330004.obs,
      ),
      RankingItemModel(
        rank: 2.obs,
        username: '103****339'.obs,
        inviteCount: 10.obs,
        prize: '₱1500.23'.obs,
        hasMedal: true.obs,
        medalImage: ImageConstant.imgFrame2131330004.obs,
      ),
      RankingItemModel(
        rank: 3.obs,
        username: '103****339'.obs,
        inviteCount: 10.obs,
        prize: '₱1500.23'.obs,
        hasMedal: true.obs,
        medalImage: ImageConstant.imgFrame2131330004.obs,
      ),
      RankingItemModel(
        rank: 4.obs,
        username: '103****339'.obs,
        inviteCount: 10.obs,
        prize: '₱1500.23'.obs,
        hasMedal: false.obs,
      ),
      RankingItemModel(
        rank: 5.obs,
        username: '103****339'.obs,
        inviteCount: 10.obs,
        prize: '₱1500.23'.obs,
        hasMedal: false.obs,
      ),
      RankingItemModel(
        rank: 6.obs,
        username: '103****339'.obs,
        inviteCount: 10.obs,
        prize: '₱1500.23'.obs,
        hasMedal: false.obs,
      ),
      RankingItemModel(
        rank: 7.obs,
        username: '103****339'.obs,
        inviteCount: 10.obs,
        prize: '₱1500.23'.obs,
        hasMedal: false.obs,
      ),
      RankingItemModel(
        rank: 8.obs,
        username: '103****339'.obs,
        inviteCount: 10.obs,
        prize: '₱1500.23'.obs,
        hasMedal: false.obs,
      ),
      RankingItemModel(
        rank: 9.obs,
        username: '103****339'.obs,
        inviteCount: 10.obs,
        prize: '₱1500.23'.obs,
        hasMedal: false.obs,
      ),
      RankingItemModel(
        rank: 10.obs,
        username: '103****339'.obs,
        inviteCount: 10.obs,
        prize: '₱1500.23'.obs,
        hasMedal: false.obs,
      ),
    ];
  }

  void _startCountdown() {
    countdownWorker = interval(
      seconds, // Modified: Fixed parameter type from Duration to RxInterface
      (callback) => _updateCountdown(),
      time: 1.seconds,
    );
  }

  void _updateCountdown() {
    seconds.value--;

    if (seconds.value < 0) {
      seconds.value = 59;
      minutes.value--;

      if (minutes.value < 0) {
        minutes.value = 59;
        hours.value--;

        if (hours.value < 0) {
          hours.value = 23;
          days.value--;

          if (days.value < 0) {
            days.value = 0;
            hours.value = 0;
            minutes.value = 0;
            seconds.value = 0;
            countdownWorker.dispose();
          }
        }
      }
    }
  }

  void onInvitePressed() {
    Get.snackbar(
      'Invite',
      'Invite functionality will be implemented',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void onViewMorePressed() {
    Get.snackbar(
      'View More',
      'Loading more ranking data...',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void onMyPrizesPressed() {
    Get.snackbar(
      'My Prizes',
      'Showing your prizes',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void onRulesPressed() {
    Get.snackbar(
      'Rules',
      'Showing jackpot rules',
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
