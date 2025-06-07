import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../models/bonus_model.dart';
import '../models/continuous_sign_in_makeup_model.dart';
import '../models/requirement_model.dart';
import '../models/rule_model.dart';
import '../models/sign_in_day_model.dart';

class ContinuousSignInMakeupController extends GetxController {
  Rx<ContinuousSignInMakeupModel> continuousSignInMakeupModel =
      ContinuousSignInMakeupModel().obs;

  RxList<SignInDayModel> signInDays = <SignInDayModel>[].obs;
  Rx<BonusModel> bonusModel = BonusModel().obs;
  Rx<BonusModel> extraModel = BonusModel().obs;
  RxList<RequirementModel> requirements = <RequirementModel>[].obs;
  RxList<RuleModel> rules = <RuleModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    initializeData();
  }

  void initializeData() {
    continuousSignInMakeupModel.value = ContinuousSignInMakeupModel(
      numberOfSignIns: '24'.obs,
      totalBonus: '₱ 0.20'.obs,
      currentDay: 'Day 4'.obs,
      activityTime: '29Day 23:59:59'.obs,
      balance: '₱19800.00'.obs,
    );

    signInDays.value = [
      SignInDayModel(
        day: 'Day 1'.obs,
        amount: '0.20'.obs,
        isCompleted: true.obs,
        isActive: false.obs,
        coinIcon: ImageConstant.img1733643593.obs,
        checkIcon: ImageConstant.imgVectorLightGreenA700.obs,
      ),
      SignInDayModel(
        day: 'Day 2'.obs,
        amount: '0.20'.obs,
        isCompleted: true.obs,
        isActive: false.obs,
        coinIcon: ImageConstant.img1733643593.obs,
        checkIcon: ImageConstant.imgVectorLightGreenA700.obs,
      ),
      SignInDayModel(
        day: 'Day 3'.obs,
        amount: '0.20'.obs,
        isCompleted: true.obs,
        isActive: false.obs,
        coinIcon: ImageConstant.img1733643593.obs,
        checkIcon: ImageConstant.imgVectorLightGreenA700.obs,
      ),
      SignInDayModel(
        day: 'Day 4'.obs,
        amount: '0.20'.obs,
        isCompleted: false.obs,
        isActive: true.obs,
        rewardIcon: ImageConstant.img61.obs,
        arrowIcon: ImageConstant.imgGroup12661.obs,
      ),
      SignInDayModel(
        day: 'Day 5'.obs,
        amount: '₱ 0.20'.obs,
        isCompleted: false.obs,
        isActive: false.obs,
        coinIcon: ImageConstant.img1733643593.obs,
      ),
    ];

    bonusModel.value = BonusModel(
      title: 'Bonus: ₱ 0.20'.obs,
      backgroundIcon: ImageConstant
          .imgA65bbb3b63d7cefc212e71be3744557bd9ca5c13c468lzqmo21.obs,
      mainIcon: ImageConstant.img1008.obs,
    );

    extraModel.value = BonusModel(
      title: 'Extra: ₱0.20'.obs,
      backgroundIcon: ImageConstant
          .imgA65bbb3b63d7cefc212e71be3744557bd9ca5c13c468lzqmo21.obs,
      mainIcon: ImageConstant
          .img5dfa96056b444f5e96cae769e22f48911a71a1646f451kzw1wb239x44.obs,
    );

    requirements.value = [
      RequirementModel(
        icon: ImageConstant
            .imgAdd2e694b50907790800188bb93242cee3957bd96358f3sm3f126x28.obs,
        title: 'Sign-in'.obs,
        description:
            'Minimum deposit amount：₱200\nTotal bet amount: 50,000'.obs,
        backgroundColor: Color(0xFF006F2C).obs,
      ),
      RequirementModel(
        icon: ImageConstant
            .imgE20d8191b75bf24128ad9a71c8758aec6b55b61f2cf0itmebv236x38.obs,
        title: 'Unlock'.obs,
        description: '1. Times of deposits：2\n2. Deposit amount： ₱200'.obs,
        backgroundColor: Color(0xFF006A2A).obs,
      ),
    ];

    rules.value = [
      RuleModel(
        bulletIcon: ImageConstant.imgGroup12650.obs,
        ruleText: '1. Log in to the game every day to sign in.'.obs,
      ),
      RuleModel(
        bulletIcon: ImageConstant.imgGroup12649.obs,
        ruleText: '2. Continuous sign-ins will gradually unlock rewards.'.obs,
      ),
      RuleModel(
        bulletIcon: ImageConstant.imgGroup12651.obs,
        ruleText:
            '3. Please pay attention! After the continuous sign-in is interrupted, it will return to Day 1 and start again.'
                .obs,
      ),
      RuleModel(
        bulletIcon: ImageConstant.imgGroup12647.obs,
        ruleText: '4. Each round of sign-in has 1 chance to re-sign.'.obs,
        hasHighlight: true.obs,
        highlightText: '1'.obs,
      ),
      RuleModel(
        bulletIcon: ImageConstant.imgGroup12647.obs,
        ruleText: '5. Your remaining number of re-signments: 1'.obs,
        hasHighlight: true.obs,
        highlightText: '1'.obs,
      ),
    ];
  }

  void onSignInDayTap(int index) {
    // Handle sign-in day tap
  }

  void onBackPressed() {
    Get.back();
  }
}
