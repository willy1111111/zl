import '../models/elite_agent_dashboard_model.dart';
import '../models/bonus_card_model.dart';
import 'package:flutter/material.dart';
import '../../../../core/app_export.dart';

class EliteAgentDashboardController extends GetxController {
  Rx<EliteAgentDashboardModel> eliteAgentDashboardModel =
      EliteAgentDashboardModel().obs;

  RxList<BonusCardModel> bonusCards = <BonusCardModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    eliteAgentDashboardModel.value = EliteAgentDashboardModel();
    initializeBonusCards();
  }

  void initializeBonusCards() {
    bonusCards.value = [
      BonusCardModel(
        title: 'Registration Bonus'.obs,
        amount: '₱ 7,550.00'.obs,
        gradientColors: [Color(0xFF14BFEC), Color(0xFF006CD9)],
        borderRadius: 7.h,
      ),
      BonusCardModel(
        title: 'Deposit Bonus'.obs,
        amount: '₱ 1,000,000.00'.obs,
        gradientColors: [Color(0xFF7669F0), Color(0xFFC89BFB)],
        borderRadius: 5.h,
      ),
      BonusCardModel(
        title: 'Qualified Bonus'.obs,
        amount: '₱ 90,000.00'.obs,
        gradientColors: [Color(0xFF7669F0), Color(0xFFC89BFB)],
        borderRadius: 5.h,
        isAmountCentered: true.obs,
      ),
      BonusCardModel(
        title: 'Achievement Bonus'.obs,
        amount: '₱ 30,000.00'.obs,
        gradientColors: [Color(0xFF14BFEC), Color(0xFF006CD9)],
        borderRadius: 5.h,
        isAmountCentered: true.obs,
      ),
      BonusCardModel(
        title: 'Deposit Rebate Bonus'.obs,
        amount: '₱ 200,000.00'.obs,
        gradientColors: [Color(0xFF09ECAC), Color(0xFF1A68FE)],
        borderRadius: 7.h,
        isTitleCentered: true.obs,
        isAmountCentered: true.obs,
      ),
      BonusCardModel(
        title: 'BettingRebate Bonus'.obs,
        amount: '₱ 599,000.00'.obs,
        gradientColors: [Color(0xFFEE47AB), Color(0xFFFFC74F)],
        borderRadius: 5.h,
        isTitleCentered: true.obs,
        isAmountCentered: true.obs,
      ),
    ];
  }
}
