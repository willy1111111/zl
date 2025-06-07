import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../models/daily_sign_in_item_model.dart';
import '../models/sign_in_rules_item_model.dart';
import '../models/signed_in_rewards_model.dart';

class SignedInRewardsController extends GetxController {
  Rx<SignedInRewardsModel> signedInRewardsModel = SignedInRewardsModel().obs;
  RxList<DailySignInItemModel> dailySignInItems = <DailySignInItemModel>[].obs;
  RxList<SignInRulesItemModel> signInRulesItems = <SignInRulesItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    signedInRewardsModel.value = SignedInRewardsModel();
    _initializeDailySignInItems();
    _initializeSignInRulesItems();
  }

  void _initializeDailySignInItems() {
    dailySignInItems.value = [
      DailySignInItemModel(
        amount: '0.20'.obs,
        coinImagePath: ImageConstant.img1733643593.obs,
        checkImagePath: ImageConstant.imgVectorLightGreenA700.obs,
        isCompleted: true.obs,
        isCurrent: false.obs,
        backgroundColor: Color(0xFF25282D).obs,
        borderColor: Color(0xFFFFC600).obs,
      ),
      DailySignInItemModel(
        amount: '0.20'.obs,
        coinImagePath: ImageConstant.img1733643593.obs,
        checkImagePath: ImageConstant.imgVectorLightGreenA700.obs,
        isCompleted: true.obs,
        isCurrent: false.obs,
        backgroundColor: Color(0xFF25282D).obs,
        borderColor: Color(0xFFFFC600).obs,
      ),
      DailySignInItemModel(
        amount: '0.20'.obs,
        coinImagePath: ImageConstant.img1733643593.obs,
        checkImagePath: ImageConstant.imgVectorLightGreenA700.obs,
        isCompleted: true.obs,
        isCurrent: false.obs,
        backgroundColor: Color(0xFF25282D).obs,
        borderColor: Color(0xFFFFC600).obs,
      ),
      DailySignInItemModel(
        amount: '0.20'.obs,
        coinImagePath: ImageConstant
            .img5dfa96056b444f5e96cae769e22f48911a71a1646f451kzw1wb1.obs,
        checkImagePath: ''.obs,
        isCompleted: false.obs,
        isCurrent: true.obs,
        backgroundColor: Color(0xFF009F41).obs,
        borderColor: appTheme.transparentCustom.obs,
      ),
      DailySignInItemModel(
        amount: '₱ 0.20'.obs,
        coinImagePath: ImageConstant.img1733643593.obs,
        checkImagePath: ''.obs,
        isCompleted: false.obs,
        isCurrent: false.obs,
        backgroundColor: Color(0xFF1E2024).obs,
        borderColor: Color(0xFF292F36).obs,
      ),
    ];
  }

  void _initializeSignInRulesItems() {
    signInRulesItems.value = [
      SignInRulesItemModel(
        iconPath: ImageConstant.imgGroup12649.obs,
        ruleText: '1. Log in to the game every day to sign in.'.obs,
      ),
      SignInRulesItemModel(
        iconPath: ImageConstant.imgGroup12650.obs,
        ruleText: '2. Continuous sign-ins will gradually unlock rewards.'.obs,
      ),
      SignInRulesItemModel(
        iconPath: ImageConstant.imgGroup12651.obs,
        ruleText:
            '3. Please pay attention! After the continuous sign-in is interrupted, it will return to Day 1 and start again.'
                .obs,
      ),
      SignInRulesItemModel(
        iconPath: ImageConstant.imgGroup12647.obs,
        ruleText: '4. Each round of sign-in has 1 chance to re-sign.'.obs,
        hasHighlightedText: true.obs,
        highlightedText: '1'.obs,
        highlightedColor: Color(0xFF51A0FF).obs,
      ),
      SignInRulesItemModel(
        iconPath: ImageConstant.imgGroup12647.obs,
        ruleText: '5.Your remaining number of re-signments: 0'.obs,
        hasHighlightedText: true.obs,
        highlightedText: '0'.obs,
        highlightedColor: Color(0xFFF65252).obs,
      ),
    ];
  }

  void onReSignPressed() {
    // Handle re-sign functionality
  }
}
