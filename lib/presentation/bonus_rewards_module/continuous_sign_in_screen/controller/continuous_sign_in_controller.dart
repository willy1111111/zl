import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../models/continuous_sign_in_model.dart';
import '../models/daily_progress_item_model.dart';
import '../models/requirement_item_model.dart';
import '../models/sign_in_rule_item_model.dart';
import '../models/unlock_reward_item_model.dart';

class ContinuousSignInController extends GetxController {
  Rx<ContinuousSignInModel> continuousSignInModel = ContinuousSignInModel().obs;

  RxList<DailyProgressItemModel> dailyProgressItems =
      <DailyProgressItemModel>[].obs;
  RxList<UnlockRewardItemModel> unlockRewards = <UnlockRewardItemModel>[].obs;
  RxList<RequirementItemModel> requirements = <RequirementItemModel>[].obs;
  RxList<SignInRuleItemModel> signInRules = <SignInRuleItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    initializeData();
  }

  void initializeData() {
    continuousSignInModel.value = ContinuousSignInModel(
      numberOfSignIns: '24'.obs,
      receivedTotalBonus: '₱ 0.20'.obs,
      currentDay: 'Day 4'.obs,
      bonusAmount: '₱ 0.20'.obs,
      extraAmount: '₱0.20'.obs,
      activityTime: '29Day 23:59:59'.obs,
    );

    dailyProgressItems.value = [
      DailyProgressItemModel(
        day: 'Day 1'.obs,
        amount: '0.20'.obs,
        coinImage: ImageConstant.img1733643593.obs,
        checkImage: ImageConstant.imgVectorLightGreenA700.obs,
        isCompleted: true.obs,
        isCurrent: false.obs,
      ),
      DailyProgressItemModel(
        day: 'Day 2'.obs,
        amount: '0.20'.obs,
        coinImage: ImageConstant.img1733643593.obs,
        checkImage: ImageConstant.imgVectorLightGreenA700.obs,
        isCompleted: true.obs,
        isCurrent: false.obs,
      ),
      DailyProgressItemModel(
        day: 'Day 3'.obs,
        amount: '0.20'.obs,
        coinImage: ImageConstant.img1733643593.obs,
        checkImage: ImageConstant.imgVectorLightGreenA700.obs,
        isCompleted: true.obs,
        isCurrent: false.obs,
      ),
      DailyProgressItemModel(
        day: 'Day 4'.obs,
        amount: '0.20'.obs,
        coinImage: ImageConstant
            .img5dfa96056b444f5e96cae769e22f48911a71a1646f451kzw1wb1.obs,
        checkImage: ''.obs,
        isCompleted: false.obs,
        isCurrent: true.obs,
        bonusText: '+₱0.20'.obs,
        arrowImage: ImageConstant.imgGroup12661.obs,
      ),
      DailyProgressItemModel(
        day: 'Day 5'.obs,
        amount: '₱ 0.20'.obs,
        coinImage: ImageConstant.img1733643593.obs,
        checkImage: ''.obs,
        isCompleted: false.obs,
        isCurrent: false.obs,
      ),
    ];

    unlockRewards.value = [
      UnlockRewardItemModel(
        backgroundImage: ImageConstant
            .imgA65bbb3b63d7cefc212e71be3744557bd9ca5c13c468lzqmo21.obs,
        iconImage: ImageConstant.img1008.obs,
        rewardText: 'Bonus: ₱ 0.20'.obs,
      ),
      UnlockRewardItemModel(
        backgroundImage: ImageConstant
            .imgA65bbb3b63d7cefc212e71be3744557bd9ca5c13c468lzqmo21.obs,
        iconImage: ImageConstant
            .img5dfa96056b444f5e96cae769e22f48911a71a1646f451kzw1wb239x44.obs,
        rewardText: 'Extra: ₱0.20'.obs,
      ),
    ];

    requirements.value = [
      RequirementItemModel(
        iconImage: ImageConstant
            .imgAdd2e694b50907790800188bb93242cee3957bd96358f3sm3f1.obs,
        title: 'Sign-in'.obs,
        backgroundColor: Color(0xFF006F2C).obs,
        firstRequirement: 'Minimum deposit amount：₱200'.obs,
        secondRequirement: 'Total bet amount: 50,000'.obs,
      ),
      RequirementItemModel(
        iconImage: ImageConstant
            .imgE20d8191b75bf24128ad9a71c8758aec6b55b61f2cf0itmebv236x38.obs,
        title: 'Unlock'.obs,
        backgroundColor: Color(0xFF006A2A).obs,
        firstRequirement: 'Times of deposits：2'.obs,
        secondRequirement: 'Deposit amount： ₱200'.obs,
      ),
    ];

    signInRules.value = [
      SignInRuleItemModel(
        bulletIcon: ImageConstant.imgGroup12650.obs,
        ruleText: '1. Log in to the game every day to sign in.'.obs,
      ),
      SignInRuleItemModel(
        bulletIcon: ImageConstant.imgGroup12649.obs,
        ruleText: '2. Continuous sign-ins will gradually unlock rewards.'.obs,
      ),
      SignInRuleItemModel(
        bulletIcon: ImageConstant.imgGroup12651.obs,
        ruleText:
            '3. Please pay attention! After the continuous sign-in is interrupted, it will return to Day 1 and start again.'
                .obs,
      ),
      SignInRuleItemModel(
        bulletIcon: ImageConstant.imgGroup12647.obs,
        ruleText: '4. Each round of sign-in has 1 chance to re-sign.'.obs,
        highlightText: '1'.obs,
        highlightColor: Color(0xFF51A0FF).obs,
      ),
      SignInRuleItemModel(
        bulletIcon: ImageConstant.imgGroup12647.obs,
        ruleText: '5. Your remaining number of re-signments: 0'.obs,
        highlightText: '0'.obs,
        highlightColor: Color(0xFFF65252).obs,
      ),
    ];
  }

  @override
  void onClose() {
    super.onClose();
  }
}
