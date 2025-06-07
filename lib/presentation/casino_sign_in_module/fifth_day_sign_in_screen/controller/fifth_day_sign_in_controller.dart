import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../models/daily_progress_item_model.dart';
import '../models/fifth_day_sign_in_model.dart';
import '../models/sign_in_rule_item_model.dart';

class FifthDaySignInController extends GetxController {
  Rx<FifthDaySignInModel> fifthDaySignInModelObj = FifthDaySignInModel().obs;

  RxList<DailyProgressItemModel> dailyProgressItems =
      <DailyProgressItemModel>[].obs;
  RxList<SignInRuleItemModel> signInRules = <SignInRuleItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _initializeDailyProgressItems();
    _initializeSignInRules();
  }

  void _initializeDailyProgressItems() {
    dailyProgressItems.value = [
      DailyProgressItemModel(
        day: 'Day 1'.obs,
        amount: '0.20'.obs,
        coinImage: ImageConstant.img1733643594.obs,
        vectorImage: ImageConstant.imgVector.obs,
        isCompleted: true.obs,
        isCurrent: false.obs,
        hasBonus: false.obs,
      ),
      DailyProgressItemModel(
        day: 'Day 2'.obs,
        amount: '0.20'.obs,
        coinImage: ImageConstant.img1733643594.obs,
        vectorImage: ImageConstant.imgVector.obs,
        isCompleted: true.obs,
        isCurrent: false.obs,
        hasBonus: false.obs,
      ),
      DailyProgressItemModel(
        day: 'Day 3'.obs,
        amount: '0.20'.obs,
        coinImage: ImageConstant.img1733643594.obs,
        vectorImage: ImageConstant.imgVector.obs,
        isCompleted: true.obs,
        isCurrent: false.obs,
        hasBonus: false.obs,
      ),
      DailyProgressItemModel(
        day: 'Day 4'.obs,
        amount: '0.20'.obs,
        coinImage: ImageConstant
            .img5dfa96056b444f5e96cae769e22f48911a71a1646f451kzw1wb1.obs,
        vectorImage: ImageConstant.imgVector.obs,
        isCompleted: true.obs,
        isCurrent: false.obs,
        hasBonus: true.obs,
        bonusAmount: '+₱0.20'.obs,
        bonusImage: ImageConstant.imgUnion.obs,
      ),
      DailyProgressItemModel(
        day: 'Day 5'.obs,
        amount: '₱ 0.20'.obs,
        coinImage: ImageConstant.img1733643594.obs,
        isCompleted: false.obs,
        isCurrent: true.obs,
        hasBonus: false.obs,
        currentIndicator: ImageConstant.imgGroup12661.obs,
      ),
    ];
  }

  void _initializeSignInRules() {
    signInRules.value = [
      SignInRuleItemModel(
        pointIcon: ImageConstant.imgGroup12650.obs,
        ruleText: '1. Log in to the game every day to sign in.'.obs,
      ),
      SignInRuleItemModel(
        pointIcon: ImageConstant.imgGroup12649.obs,
        ruleText: '2. Continuous sign-ins will gradually unlock rewards.'.obs,
      ),
      SignInRuleItemModel(
        pointIcon: ImageConstant.imgGroup12651.obs,
        ruleText:
            '3. Please pay attention! After the continuous sign-in is interrupted, it will return to Day 1 and start again.'
                .obs,
      ),
      SignInRuleItemModel(
        pointIcon: ImageConstant.imgGroup12647.obs,
        ruleText: '4. Each round of sign-in has '.obs,
        highlightText: '1'.obs,
        highlightColor: Color(0xFF51A0FF).obs,
        suffixText: ' chance to re-sign.'.obs,
      ),
      SignInRuleItemModel(
        pointIcon: ImageConstant.imgGroup12647.obs,
        ruleText: '5.Your remaining number of re-signments: '.obs,
        highlightText: '0'.obs,
        highlightColor: Color(0xFFF65252).obs,
      ),
    ];
  }

  void onTapBack() {
    Get.back();
  }
}
