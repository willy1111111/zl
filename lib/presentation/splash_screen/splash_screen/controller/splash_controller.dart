import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../models/reward_card_model.dart';
import '../models/splash_model.dart';
import '../models/url_indicator_model.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  RxList<RewardCardModel> rewardCards = <RewardCardModel>[].obs;
  RxList<UrlIndicatorModel> urlIndicators = <UrlIndicatorModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    initializeRewardCards();
    initializeUrlIndicators();
  }

  void initializeRewardCards() {
    rewardCards.value = [
      RewardCardModel(
        title: 'Qualified Bonus'.obs,
        amount: '+₱108'.obs,
        titleColor: Color(0xFFFFD800).obs,
        amountColor: Color(0xFF8FFF00).obs,
      ),
      RewardCardModel(
        title: 'Achievement Reward'.obs,
        amount: '+₱88888'.obs,
        titleColor: Color(0xFFFFD800).obs,
        amountColor: Color(0xFF8FFF00).obs,
      ),
      RewardCardModel(
        title: 'Deposit Rebate'.obs,
        amount: '+5%'.obs,
        titleColor: Color(0xFFFFD800).obs,
        amountColor: Color(0xFF8FFF00).obs,
      ),
      RewardCardModel(
        title: 'Betting Rebate'.obs,
        amount: '+2.03%'.obs,
        titleColor: Color(0xFFFFD800).obs,
        amountColor: Color(0xFF8FFF00).obs,
      ),
      RewardCardModel(
        title: 'Agent Ranking'.obs,
        amount: '+₱888'.obs,
        titleColor: Color(0xFFFFD800).obs,
        amountColor: Color(0xFF8FFF00).obs,
      ),
    ];
  }

  void initializeUrlIndicators() {
    urlIndicators.value = [
      UrlIndicatorModel(
        url: 'JBET88.ph'.obs,
        iconPath: ImageConstant.imgFrameWhiteA70017x17.obs,
        backgroundImagePath: ImageConstant.imgRectangle265.obs,
        overlayImagePath: ImageConstant.imgRectangle266.obs,
      ),
      UrlIndicatorModel(
        url: 'JBET88.cc'.obs,
        iconPath: ImageConstant.imgFrameWhiteA70017x17.obs,
        backgroundImagePath: ImageConstant.imgRectangle265.obs,
        overlayImagePath: ImageConstant.imgRectangle266.obs,
      ),
    ];
  }
}
