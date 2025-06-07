import '../models/agent_dashboard_model.dart';
import '../models/income_card_model.dart';
import '../models/benefit_item_model.dart';
import '../models/income_item_model.dart';
import '../models/reward_item_model.dart';
import '../models/leaderboard_item_model.dart';
import '../../../../core/app_export.dart';

class AgentDashboardController extends GetxController {
  Rx<AgentDashboardModel> agentDashboardModel = AgentDashboardModel().obs;

  RxList<IncomeCardModel> incomeCards = <IncomeCardModel>[].obs;
  RxList<BenefitItemModel> benefitItems = <BenefitItemModel>[].obs;
  RxList<IncomeItemModel> incomeItems = <IncomeItemModel>[].obs;
  RxList<RewardItemModel> rewardItems = <RewardItemModel>[].obs;
  RxList<LeaderboardItemModel> leaderboardItems = <LeaderboardItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    agentDashboardModel.value = AgentDashboardModel();
    _initializeIncomeCards();
    _initializeBenefitItems();
    _initializeIncomeItems();
    _initializeRewardItems();
    _initializeLeaderboardItems();
  }

  void _initializeIncomeCards() {
    incomeCards.value = [
      IncomeCardModel(
        title: 'Registration Bonus'.obs,
        amount: '₱ 7,550.00'.obs,
        imagePath: ImageConstant.imgJb47x49.obs,
        gradientType: 'gradient-9'.obs,
      ),
      IncomeCardModel(
        title: 'Deposit Bonus'.obs,
        amount: '₱ 1,000,000.00'.obs,
        imagePath: ImageConstant.imgJb47x49.obs,
        gradientType: 'gradient-11'.obs,
      ),
      IncomeCardModel(
        title: 'Qualified Bonus'.obs,
        amount: '₱ 90,000.00'.obs,
        imagePath: ImageConstant.imgJb47x49.obs,
        gradientType: 'gradient-13'.obs,
      ),
      IncomeCardModel(
        title: 'Achievement Bonus'.obs,
        amount: '₱ 30,000.00'.obs,
        imagePath: ImageConstant.imgJb47x49.obs,
        gradientType: 'gradient-9'.obs,
      ),
      IncomeCardModel(
        title: 'Deposit Rebate Bonus'.obs,
        amount: '₱ 200,000.00'.obs,
        imagePath: ImageConstant.imgJb47x49.obs,
        gradientType: 'gradient-10'.obs,
      ),
      IncomeCardModel(
        title: 'BettingRebate Bonus'.obs,
        amount: '₱ 599,000.00'.obs,
        imagePath: ImageConstant.imgJb47x49.obs,
        gradientType: 'gradient-12'.obs,
      ),
    ];
  }

  void _initializeBenefitItems() {
    benefitItems.value = [
      BenefitItemModel(
        backgroundImage: ImageConstant.imgFrame2131329752.obs,
        iconImage: ImageConstant.imgTdr23.obs,
        overlayImage: ImageConstant.imgImage1100.obs,
        badgeImage: ImageConstant.imgImage1104.obs,
        title: 'Bet Rebate up to '.obs,
        value: '0.8%'.obs,
      ),
      BenefitItemModel(
        backgroundImage: ImageConstant.imgFrame2131329752.obs,
        iconImage: ImageConstant.imgGroup2131329972.obs,
        title: 'Deposit Rebate '.obs,
        value: '1.0%'.obs,
      ),
      BenefitItemModel(
        backgroundImage: ImageConstant.imgFrame2131329752.obs,
        title: 'Qualified Bonus '.obs,
        value: '₱88'.obs,
      ),
    ];
  }

  void _initializeIncomeItems() {
    incomeItems.value = [
      IncomeItemModel(
        number: '1'.obs,
        badgeImage: ImageConstant.imgGroup2131329925.obs,
        title: 'Each Registration Bonus '.obs,
        amount: '+₱2'.obs,
      ),
      IncomeItemModel(
        number: '2'.obs,
        badgeImage: ImageConstant.imgGroup2131329925.obs,
        title: 'Each Deposit Bonus '.obs,
        amount: '+₱5'.obs,
      ),
      IncomeItemModel(
        number: '3'.obs,
        badgeImage: ImageConstant.imgGroup2131329925.obs,
        title: 'Maximum achievement reward\nis '.obs,
        amount: '+₱8888'.obs,
      ),
      IncomeItemModel(
        number: '4'.obs,
        badgeImage: ImageConstant.imgGroup2131329925.obs,
        title: 'Agent Ranking Rewards up to '.obs,
        amount: '+₱8999'.obs,
      ),
      IncomeItemModel(
        number: '5'.obs,
        badgeImage: ImageConstant.imgGroup2131329925.obs,
        title: 'Qualified Bonuses can receive up to '.obs,
        amount: '+₱58'.obs,
        subtitle: ' Per Qualified User'.obs,
      ),
      IncomeItemModel(
        number: '6'.obs,
        badgeImage: ImageConstant.imgGroup2131329925.obs,
        title: ' Deposit Rebate'.obs,
        amount: 'UP TO 1.1%'.obs,
      ),
      IncomeItemModel(
        number: '7'.obs,
        badgeImage: ImageConstant.imgGroup2131329925.obs,
        title: ' Betting Rebate in 4 levels'.obs,
        amount: '1%'.obs,
      ),
    ];
  }

  void _initializeRewardItems() {
    rewardItems.value = [
      RewardItemModel(
        icon: ImageConstant.imgInvitationrewards1.obs,
        title: 'Registration Bonus'.obs,
        amount: '₱ 353,598,912.00'.obs,
        claimed: '276444 Claimed'.obs,
      ),
      RewardItemModel(
        icon: ImageConstant.imgImage887.obs,
        title: 'Deposit Bonus'.obs,
        amount: '₱ 482,667,165.63'.obs,
        claimed: '383064 Claimed'.obs,
      ),
      RewardItemModel(
        icon: ImageConstant.imgTohlf1.obs,
        overlayIcon: ImageConstant.img1572014221.obs,
        title: 'Qualified Bonus'.obs,
        amount: '₱ 482,667,165.63'.obs,
        claimed: '383064 Claimed'.obs,
      ),
      RewardItemModel(
        icon: ImageConstant.imgImage886.obs,
        title: 'Achievement Rewards'.obs,
        amount: '₱ 240,229,008.00'.obs,
        claimed: '162852 Claimed'.obs,
      ),
      RewardItemModel(
        icon: ImageConstant.imgImage70x70.obs,
        overlayIcon: ImageConstant.imgRectangle34624915.obs,
        title: 'Deposit Rebate'.obs,
        amount: '₱ 482,667,165.63'.obs,
        claimed: '383064 Claimed'.obs,
      ),
      RewardItemModel(
        icon: ImageConstant.imgBettingrebate1.obs,
        title: 'Betting Rebate'.obs,
        amount: '₱ 482,667,165.63'.obs,
        claimed: '452052 Claimed'.obs,
      ),
    ];
  }

  void _initializeLeaderboardItems() {
    leaderboardItems.value = [
      LeaderboardItemModel(
        userNumber: '130***6520'.obs,
        action: 'Get An Regisiration\nBonus'.obs,
        amount: '₱ 188,00'.obs,
      ),
      LeaderboardItemModel(
        userNumber: '130***6520'.obs,
        action: 'Get An Regisiration\nBonus'.obs,
        amount: '₱ 188,00'.obs,
      ),
      LeaderboardItemModel(
        userNumber: '130***6520'.obs,
        action: 'Get An Regisiration\nBonus'.obs,
        amount: '₱ 188,00'.obs,
      ),
      LeaderboardItemModel(
        userNumber: '130***6520'.obs,
        action: 'Get An Regisiration\nBonus'.obs,
        amount: '₱ 188,00'.obs,
      ),
    ];
  }

  @override
  void onClose() {
    super.onClose();
  }
}
