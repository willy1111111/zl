import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../models/income_card_model.dart';
import '../models/master_agent_dashboard_model.dart';

class MasterAgentDashboardController extends GetxController {
  Rx<MasterAgentDashboardModel> masterAgentDashboardModel =
      MasterAgentDashboardModel().obs;
  RxList<IncomeCardModel> incomeCards = <IncomeCardModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    masterAgentDashboardModel.value = MasterAgentDashboardModel();
    _initializeIncomeCards();
  }

  void _initializeIncomeCards() {
    incomeCards.value = [
      IncomeCardModel(
        title: 'Registration Bonus'.obs,
        amount: '₱ 7,550.00'.obs,
        gradientColors: Rx<List<Color>>([Color(0xFF14BFEC), Color(0xFF006CD9)]),
        iconPath: ImageConstant.imgJb47x49.obs,
        borderRadius: 7.0.obs,
      ),
      IncomeCardModel(
        title: 'Deposit Bonus'.obs,
        amount: '₱ 1,000,000.00'.obs,
        gradientColors: Rx<List<Color>>([Color(0xFF7669F0), Color(0xFFC89BFB)]),
        iconPath: ImageConstant.imgJb47x49.obs,
        borderRadius: 5.0.obs,
      ),
      IncomeCardModel(
        title: 'Qualified Bonus'.obs,
        amount: '₱ 90,000.00'.obs,
        gradientColors: Rx<List<Color>>([Color(0xFF7669F0), Color(0xFFC89BFB)]),
        iconPath: ImageConstant.imgJb47x49.obs,
        borderRadius: 5.0.obs,
        isTextCentered: true.obs,
      ),
      IncomeCardModel(
        title: 'Achievement Bonus'.obs,
        amount: '₱ 30,000.00'.obs,
        gradientColors: Rx<List<Color>>([Color(0xFF14BFEC), Color(0xFF006CD9)]),
        iconPath: ImageConstant.imgJb47x49.obs,
        borderRadius: 5.0.obs,
        isTextCentered: true.obs,
      ),
      IncomeCardModel(
        title: 'Deposit Rebate Bonus'.obs,
        amount: '₱ 200,000.00'.obs,
        gradientColors: Rx<List<Color>>([Color(0xFF09ECAC), Color(0xFF1A68FE)]),
        iconPath: ImageConstant.imgJb47x49.obs,
        borderRadius: 7.0.obs,
        isTextCentered: true.obs,
      ),
      IncomeCardModel(
        title: 'BettingRebate Bonus'.obs,
        amount: '₱ 599,000.00'.obs,
        gradientColors: Rx<List<Color>>([Color(0xFFEE47AB), Color(0xFFFFC74F)]),
        iconPath: ImageConstant.imgJb47x49.obs,
        borderRadius: 5.0.obs,
        isTextCentered: true.obs,
      ),
    ];
  }

  @override
  void onClose() {
    super.onClose();
  }
}
