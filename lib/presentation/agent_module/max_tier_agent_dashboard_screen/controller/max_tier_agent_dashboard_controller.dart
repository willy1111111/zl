import 'package:get/get.dart';
import '../models/max_tier_agent_dashboard_model.dart';
import '../../../../widgets/custom_bonus_grid.dart';
import 'package:flutter/material.dart';
import '../../../../core/app_export.dart';

class MaxTierAgentDashboardController extends GetxController {
  Rx<MaxTierAgentDashboardModel> maxTierAgentDashboardModel =
      MaxTierAgentDashboardModel().obs;

  Rx<List<CustomBonusItem>> bonusItems = Rx<List<CustomBonusItem>>([]);

  @override
  void onInit() {
    super.onInit();
    maxTierAgentDashboardModel.value = MaxTierAgentDashboardModel();
    _initializeBonusItems();
  }

  void _initializeBonusItems() {
    bonusItems.value = [
      CustomBonusItem(
        title: 'Registration Bonus',
        amount: '₱ 7,550.00',
        gradientColors: [Color(0xFF14BFEC), Color(0xFF006CD9)],
        borderRadius: 7,
        titleAlignment: CustomTextAlignment.left,
        amountAlignment: CustomTextAlignment.left,
      ),
      CustomBonusItem(
        title: 'Qualified Bonus',
        amount: '₱ 90,000.00',
        gradientColors: [Color(0xFF7669F0), Color(0xFFC89BFB)],
        borderRadius: 5,
        titleAlignment: CustomTextAlignment.left,
        amountAlignment: CustomTextAlignment.center,
      ),
      CustomBonusItem(
        title: 'Achievement Bonus',
        amount: '₱ 30,000.00',
        gradientColors: [Color(0xFF14BFEC), Color(0xFF006CD9)],
        borderRadius: 5,
        titleAlignment: CustomTextAlignment.left,
        amountAlignment: CustomTextAlignment.center,
      ),
      CustomBonusItem(
        title: 'Deposit Bonus',
        amount: '₱ 1,000,000.00',
        gradientColors: [Color(0xFF7669F0), Color(0xFFC89BFB)],
        borderRadius: 5,
        titleAlignment: CustomTextAlignment.left,
        amountAlignment: CustomTextAlignment.left,
      ),
      CustomBonusItem(
        title: 'Deposit Rebate Bonus',
        amount: '₱ 200,000.00',
        gradientColors: [Color(0xFF09ECAC), Color(0xFF1A68FE)],
        borderRadius: 7,
        titleAlignment: CustomTextAlignment.center,
        amountAlignment: CustomTextAlignment.center,
      ),
      CustomBonusItem(
        title: 'BettingRebate Bonus',
        amount: '₱ 599,000.00',
        gradientColors: [Color(0xFFEE47AB), Color(0xFFFFC74F)],
        borderRadius: 5,
        titleAlignment: CustomTextAlignment.center,
        amountAlignment: CustomTextAlignment.center,
      ),
    ];
  }

  @override
  void onClose() {
    super.onClose();
  }
}
