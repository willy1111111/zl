import '../models/agent_referral_program_model.dart';
import '../models/achievement_milestone_model.dart';
import '../models/ranking_item_model.dart';
import '../models/agent_tier_model.dart';
import '../models/user_hierarchy_model.dart';
import '../models/game_rebate_model.dart';
import '../../../../core/app_export.dart';

class AgentReferralProgramController extends GetxController {
  Rx<AgentReferralProgramModel> agentReferralProgramModel =
      AgentReferralProgramModel().obs;

  RxList<AchievementMilestoneModel> achievementMilestones =
      <AchievementMilestoneModel>[].obs;
  RxList<RankingItemModel> rankingItems = <RankingItemModel>[].obs;
  RxList<AgentTierModel> agentTiers = <AgentTierModel>[].obs;
  RxList<UserHierarchyModel> userHierarchy = <UserHierarchyModel>[].obs;
  RxList<GameRebateModel> gameRebates = <GameRebateModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    agentReferralProgramModel.value = AgentReferralProgramModel();
    initializeAchievementMilestones();
    initializeRankingItems();
    initializeAgentTiers();
    initializeUserHierarchy();
    initializeGameRebates();
  }

  void initializeAchievementMilestones() {
    achievementMilestones.value = [
      AchievementMilestoneModel(
        iconPath: ImageConstant.imgImage527.obs,
        iconHeight: 40.0.obs, // Modified: Changed RxInt to RxDouble
        iconWidth: 40.0.obs, // Modified: Changed RxInt to RxDouble
        amount: '₱88.00'.obs,
        userCount: '5'.obs,
      ),
      AchievementMilestoneModel(
        iconPath: ImageConstant.imgImage528.obs,
        iconHeight: 41.0.obs, // Modified: Changed RxInt to RxDouble
        iconWidth: 41.0.obs, // Modified: Changed RxInt to RxDouble
        amount: '₱188.00'.obs,
        userCount: '10'.obs,
      ),
      AchievementMilestoneModel(
        iconPath: ImageConstant.imgImage528.obs,
        iconHeight: 40.0.obs, // Modified: Changed RxInt to RxDouble
        iconWidth: 40.0.obs, // Modified: Changed RxInt to RxDouble
        amount: '₱388.00'.obs,
        userCount: '20'.obs,
      ),
      AchievementMilestoneModel(
        iconPath: ImageConstant.imgImage526.obs,
        iconHeight: 48.0.obs, // Modified: Changed RxInt to RxDouble
        iconWidth: 50.0.obs, // Modified: Changed RxInt to RxDouble
        amount: '₱888.00'.obs,
        userCount: '50'.obs,
      ),
      AchievementMilestoneModel(
        iconPath: ImageConstant.imgImage532.obs,
        iconHeight: 41.0.obs, // Modified: Changed RxInt to RxDouble
        iconWidth: 38.0.obs, // Modified: Changed RxInt to RxDouble
        amount: '₱1888.00'.obs,
        userCount: '100'.obs,
      ),
    ];
  }

  void initializeRankingItems() {
    rankingItems.value = [
      RankingItemModel(
        rank: '1'.obs,
        bonus: '₱490'.obs,
        iconPath: ImageConstant.imgGroup2131329936.obs,
        textColor: 0xFFB16208.obs,
      ),
      RankingItemModel(
        rank: '2'.obs,
        bonus: '₱300'.obs,
        iconPath: ImageConstant.imgGroup2131329936Red200.obs,
        textColor: 0xFFBB777C.obs,
      ),
      RankingItemModel(
        rank: '3'.obs,
        bonus: '₱40'.obs,
        iconPath: ImageConstant.imgGroup2131329936IndigoA100.obs,
        textColor: 0xFF5278B0.obs,
      ),
      RankingItemModel(
        rank: '4th'.obs,
        bonus: '₱40'.obs,
      ),
      RankingItemModel(
        rank: '5th'.obs,
        bonus: '₱40'.obs,
      ),
    ];
  }

  void initializeAgentTiers() {
    agentTiers.value = [
      AgentTierModel(
        tierName: 'Junior Agent I'.obs,
        qualifiedBonus: '/'.obs,
      ),
      AgentTierModel(
        tierName: 'Intermediate Agent I'.obs,
        qualifiedBonus: '₱10'.obs,
      ),
      AgentTierModel(
        tierName: 'Senior Agent'.obs,
        qualifiedBonus: '₱10'.obs,
      ),
      AgentTierModel(
        tierName: 'Master Agent'.obs,
        qualifiedBonus: '₱10'.obs,
      ),
    ];
  }

  void initializeUserHierarchy() {
    userHierarchy.value = [
      UserHierarchyModel(
        imagePath: ImageConstant.imgImage44.obs,
        imageHeight: 34.0.obs, // Modified: Changed RxInt to RxDouble
        imageWidth: 34.0.obs, // Modified: Changed RxInt to RxDouble
        top: 152.0.obs, // Modified: Changed RxInt to RxDouble
        left: 50.0.obs, // Modified: Changed RxInt to RxDouble
        label: 'A1'.obs,
        labelBgColor: 0xFFFBBE0B.obs,
      ),
      UserHierarchyModel(
        imagePath: ImageConstant.imgImage37.obs,
        imageHeight: 34.0.obs, // Modified: Changed RxInt to RxDouble
        imageWidth: 34.0.obs, // Modified: Changed RxInt to RxDouble
        top: 152.0.obs, // Modified: Changed RxInt to RxDouble
        left: 261.0.obs, // Modified: Changed RxInt to RxDouble
        label: 'A2'.obs,
        labelBgColor: 0xFFFBBE0B.obs,
      ),
      UserHierarchyModel(
        imagePath: ImageConstant.imgImage6.obs,
        imageHeight: 23.0.obs, // Modified: Changed RxInt to RxDouble
        imageWidth: 23.0.obs, // Modified: Changed RxInt to RxDouble
        top: 203.0.obs, // Modified: Changed RxInt to RxDouble
        left: 37.0.obs, // Modified: Changed RxInt to RxDouble
        label: 'B1'.obs,
        labelBgColor: 0xFFEB5757.obs,
      ),
      UserHierarchyModel(
        imagePath: ImageConstant.imgImage23x23.obs,
        imageHeight: 23.0.obs, // Modified: Changed RxInt to RxDouble
        imageWidth: 23.0.obs, // Modified: Changed RxInt to RxDouble
        top: 203.0.obs, // Modified: Changed RxInt to RxDouble
        left: 73.0.obs, // Modified: Changed RxInt to RxDouble
        label: 'B2'.obs,
        labelBgColor: 0xFFEB5757.obs,
      ),
    ];
  }

  void initializeGameRebates() {
    gameRebates.value = [
      GameRebateModel(
        gameName: 'Slots'.obs,
        iconPath: ImageConstant.imgGroup2131329970.obs,
        iconHeight: 24.0.obs, // Modified: Changed RxInt to RxDouble
        iconWidth: 23.0.obs, // Modified: Changed RxInt to RxDouble
      ),
      GameRebateModel(
        gameName: 'live casino'.obs,
        iconPath: ImageConstant.imgGroup2131329296.obs,
        iconHeight: 32.0.obs, // Modified: Changed RxInt to RxDouble
        iconWidth: 32.0.obs, // Modified: Changed RxInt to RxDouble
      ),
      GameRebateModel(
        gameName: 'bingo'.obs,
        iconPath: ImageConstant.imgVector25x24.obs,
        iconHeight: 24.0.obs, // Modified: Changed RxInt to RxDouble
        iconWidth: 25.0.obs, // Modified: Changed RxInt to RxDouble
      ),
      GameRebateModel(
        gameName: 'fish'.obs,
        iconPath: ImageConstant.imgSubtract.obs,
        iconHeight: 24.0.obs, // Modified: Changed RxInt to RxDouble
        iconWidth: 23.0.obs, // Modified: Changed RxInt to RxDouble
      ),
    ];
  }

  void onRegisterPressed() {
    // Handle registration button press
  }

  void onInvitePressed() {
    // Handle invite button press
  }
}
