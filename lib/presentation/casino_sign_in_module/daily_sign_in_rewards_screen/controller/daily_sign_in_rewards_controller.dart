import '../../../../../core/app_export.dart';
import '../models/daily_progress_item_model.dart';
import '../models/daily_sign_in_rewards_model.dart';
import '../models/sign_in_rule_item_model.dart';

class DailySignInRewardsController extends GetxController {
  Rx<DailySignInRewardsModel?> dailySignInRewardsModel =
      Rx<DailySignInRewardsModel?>(null);
  RxList<DailyProgressItemModel> dailyProgressItems =
      <DailyProgressItemModel>[].obs;
  RxList<SignInRuleItemModel> signInRuleItems = <SignInRuleItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    initializeModel();
    loadDailyProgressItems();
    loadSignInRuleItems();
  }

  void initializeModel() {
    dailySignInRewardsModel.value = DailySignInRewardsModel(
      signInCount: '24'.obs,
      totalBonus: '₱ 0.20'.obs,
      currentDayTitle: 'Sign-in Today: Day 4'.obs,
    );
  }

  void loadDailyProgressItems() {
    dailyProgressItems.value = [
      DailyProgressItemModel(
        dayLabel: 'Day 1'.obs,
        bonusAmount: '0.20'.obs,
        coinIcon: ImageConstant.img1733643594.obs,
        checkIcon: ImageConstant.imgVector.obs,
        isCompleted: true.obs,
        isCurrentDay: false.obs,
      ),
      DailyProgressItemModel(
        dayLabel: 'Day 2'.obs,
        bonusAmount: '0.20'.obs,
        coinIcon: ImageConstant.img1733643594.obs,
        checkIcon: ImageConstant.imgVector.obs,
        isCompleted: true.obs,
        isCurrentDay: false.obs,
      ),
      DailyProgressItemModel(
        dayLabel: 'Day 3'.obs,
        bonusAmount: '0.20'.obs,
        coinIcon: ImageConstant.img1733643594.obs,
        checkIcon: ImageConstant.imgVector.obs,
        isCompleted: true.obs,
        isCurrentDay: false.obs,
      ),
      DailyProgressItemModel(
        dayLabel: 'Day 4'.obs,
        bonusAmount: '0.20'.obs,
        coinIcon: ImageConstant
            .img5dfa96056b444f5e96cae769e22f48911a71a1646f451kzw1wb1.obs,
        bonusIndicator: ImageConstant.imgUnion.obs,
        extraBonus: '+₱0.20'.obs,
        isCompleted: false.obs,
        isCurrentDay: true.obs,
      ),
      DailyProgressItemModel(
        dayLabel: 'Day 5'.obs,
        bonusAmount: '₱ 0.20'.obs,
        coinIcon: ImageConstant.img1733643594.obs,
        isCompleted: false.obs,
        isCurrentDay: false.obs,
      ),
    ];
  }

  void loadSignInRuleItems() {
    signInRuleItems.value = [
      SignInRuleItemModel(
        ruleIcon: ImageConstant.imgGroup12649.obs,
        ruleText: '1. Log in to the game every day to sign in.'.obs,
      ),
      SignInRuleItemModel(
        ruleIcon: ImageConstant.imgGroup12650.obs,
        ruleText: '2. Continuous sign-ins will gradually unlock rewards.'.obs,
      ),
      SignInRuleItemModel(
        ruleIcon: ImageConstant.imgGroup12651.obs,
        ruleText:
            '3. Please pay attention! After the continuous sign-in is interrupted, it will return to Day 1 and start again.'
                .obs,
      ),
      SignInRuleItemModel(
        ruleIcon: ImageConstant.imgGroup12647.obs,
        ruleText: '4. Each round of sign-in has '.obs,
        highlightedNumber: '1'.obs,
        remainingText: ' chance to re-sign.'.obs,
      ),
      SignInRuleItemModel(
        ruleIcon: ImageConstant.imgGroup12647.obs,
        ruleText: '5.Your remaining number of re-signments: '.obs,
        highlightedNumber: '0'.obs,
        isRedHighlight: true.obs,
      ),
    ];
  }

  void onReSignTap() {
    // Handle re-sign functionality
  }

  @override
  void onClose() {
    super.onClose();
  }
}
