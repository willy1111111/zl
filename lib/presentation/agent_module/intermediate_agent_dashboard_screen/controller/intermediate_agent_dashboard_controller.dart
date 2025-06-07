import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../models/benefit_item_model.dart';
import '../models/bonus_card_model.dart';
import '../models/intermediate_agent_dashboard_model.dart';

class IntermediateAgentDashboardController extends GetxController {
  Rx<IntermediateAgentDashboardModel> intermediateAgentDashboardModel =
      IntermediateAgentDashboardModel().obs;

  RxList<BenefitItemModel> benefitsList = <BenefitItemModel>[].obs;
  RxList<BonusCardModel> bonusCards = <BonusCardModel>[].obs;
  Rx<BonusCardModel?> agentRankingBonus = Rx<BonusCardModel?>(null);

  @override
  void onInit() {
    super.onInit();
    initializeBenefits();
    initializeBonusCards();
  }

  void initializeBenefits() {
    benefitsList.value = [
      BenefitItemModel(
        iconPath: ImageConstant.imgTdr22.obs,
        overlayPath: ImageConstant.imgImage1100.obs,
        badgePath: ImageConstant.imgImage1104.obs,
        backgroundPath: ImageConstant.imgFrame2131329752.obs,
        mainText: 'Bet Rebate up to '.obs,
        highlightText: '1.0%'.obs,
      ),
      BenefitItemModel(
        iconPath: ImageConstant.imgGroup2131329972.obs,
        backgroundPath: ImageConstant.imgFrame2131329752.obs,
        mainText: 'Deposit Rebate '.obs,
        highlightText: '1.1%'.obs,
      ),
      BenefitItemModel(
        backgroundPath: ImageConstant.imgFrame2131329752.obs,
        mainText: 'Qualified Bonus '.obs,
        highlightText: '₱88'.obs,
      ),
    ];
  }

  void initializeBonusCards() {
    bonusCards.value = [
      BonusCardModel(
        title: 'Registration Bonus'.obs,
        amount: '₱ 7,550.00'.obs,
        gradientColors: Rx<List<Color>>([Color(0xFF14BFEC), Color(0xFF006CD9)]),
        iconPath: ImageConstant.imgJb47x49.obs,
      ),
      BonusCardModel(
        title: 'Deposit Bonus'.obs,
        amount: '₱ 1,000,000.00'.obs,
        gradientColors: Rx<List<Color>>([Color(0xFF7669F0), Color(0xFFC89BFB)]),
        iconPath: ImageConstant.imgJb47x49.obs,
      ),
      BonusCardModel(
        title: 'Qualified Bonus'.obs,
        amount: '₱ 90,000.00'.obs,
        gradientColors: Rx<List<Color>>([Color(0xFF7669F0), Color(0xFFC89BFB)]),
        iconPath: ImageConstant.imgJb47x49.obs,
        isCenter: true.obs,
      ),
      BonusCardModel(
        title: 'Achievement Bonus'.obs,
        amount: '₱ 30,000.00'.obs,
        gradientColors: Rx<List<Color>>([Color(0xFF14BFEC), Color(0xFF006CD9)]),
        iconPath: ImageConstant.imgJb47x49.obs,
        isCenter: true.obs,
      ),
      BonusCardModel(
        title: 'Deposit Rebate Bonus'.obs,
        amount: '₱ 200,000.00'.obs,
        gradientColors: Rx<List<Color>>([Color(0xFF09ECAC), Color(0xFF1A68FE)]),
        iconPath: ImageConstant.imgJb47x49.obs,
        isCenter: true.obs,
      ),
      BonusCardModel(
        title: 'BettingRebate Bonus'.obs,
        amount: '₱ 599,000.00'.obs,
        gradientColors: Rx<List<Color>>([Color(0xFFEE47AB), Color(0xFFFFC74F)]),
        iconPath: ImageConstant.imgJb47x49.obs,
        isCenter: true.obs,
      ),
    ];

    agentRankingBonus.value = BonusCardModel(
      title: 'Agent Ranking Bonus'.obs,
      amount: '₱ 100,000.00'.obs,
      gradientColors: Rx<List<Color>>([Color(0xFFC498FA), Color(0xFF1A68FE)]),
      iconPath: ImageConstant.imgJb47x49.obs,
      isCenter: true.obs,
    );
  }
}
