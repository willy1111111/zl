import 'package:flutter/material.dart';
import '../models/j_bet_agent_dashboard_model.dart';
import '../models/bonus_card_model.dart';
import '../models/benefit_item_model.dart';
import '../../../../core/app_export.dart';

class JBetAgentDashboardController extends GetxController {
  Rx<JBetAgentDashboardModel?> jBetAgentDashboardModel =
      Rx<JBetAgentDashboardModel?>(null);
  RxList<BonusCardModel> bonusCards = <BonusCardModel>[].obs;
  RxList<BenefitItemModel> benefitItems = <BenefitItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    jBetAgentDashboardModel.value = JBetAgentDashboardModel();
    _initializeBonusCards();
    _initializeBenefitItems();
  }

  void _initializeBonusCards() {
    bonusCards.value = [
      BonusCardModel(
        title: 'Registration Bonus'.obs,
        amount: '₱ 7,550.00'.obs,
        gradientColors: Rx<List<Color>>([
          Color(0xFF14BFEC),
          Color(0xFF006CD9)
        ]), // Modified: Fixed RxList to Rx<List<Color>>
        logoPath: ImageConstant.imgJb47x49.obs,
      ),
      BonusCardModel(
        title: 'Deposit Bonus'.obs,
        amount: '₱ 1,000,000.00'.obs,
        gradientColors: Rx<List<Color>>([
          Color(0xFF7669F0),
          Color(0xFFC89BFB)
        ]), // Modified: Fixed RxList to Rx<List<Color>>
        logoPath: ImageConstant.imgJb47x49.obs,
      ),
      BonusCardModel(
        title: 'Qualified Bonus'.obs,
        amount: '₱ 90,000.00'.obs,
        gradientColors: Rx<List<Color>>([
          Color(0xFF7669F0),
          Color(0xFFC89BFB)
        ]), // Modified: Fixed RxList to Rx<List<Color>>
        logoPath: ImageConstant.imgJb47x49.obs,
      ),
      BonusCardModel(
        title: 'Achievement Bonus'.obs,
        amount: '₱ 30,000.00'.obs,
        gradientColors: Rx<List<Color>>([
          Color(0xFF14BFEC),
          Color(0xFF006CD9)
        ]), // Modified: Fixed RxList to Rx<List<Color>>
        logoPath: ImageConstant.imgJb47x49.obs,
      ),
      BonusCardModel(
        title: 'Deposit Rebate Bonus'.obs,
        amount: '₱ 200,000.00'.obs,
        gradientColors: Rx<List<Color>>([
          Color(0xFF09ECAC),
          Color(0xFF1A68FE)
        ]), // Modified: Fixed RxList to Rx<List<Color>>
        logoPath: ImageConstant.imgJb47x49.obs,
      ),
      BonusCardModel(
        title: 'BettingRebate Bonus'.obs,
        amount: '₱ 599,000.00'.obs,
        gradientColors: Rx<List<Color>>([
          Color(0xFFEE47AB),
          Color(0xFFFFC74F)
        ]), // Modified: Fixed RxList to Rx<List<Color>>
        logoPath: ImageConstant.imgJb47x49.obs,
      ),
    ];
  }

  void _initializeBenefitItems() {
    benefitItems.value = [
      BenefitItemModel(
        backgroundImage: ImageConstant.imgFrame2131329752.obs,
        iconPath: ImageConstant.imgTdr23.obs,
        overlayImage: ImageConstant.imgImage1100.obs,
        badgeImage: ImageConstant.imgImage1104.obs,
        title: 'Bet Rebate up to '.obs,
        percentage: '0.8%'.obs,
      ),
      BenefitItemModel(
        backgroundImage: ImageConstant.imgFrame2131329752.obs,
        iconPath: ImageConstant.imgGroup2131329972.obs,
        title: 'Deposit Rebate '.obs,
        percentage: '1.3%'.obs,
      ),
      BenefitItemModel(
        backgroundImage: ImageConstant.imgFrame2131329752.obs,
        title: 'Qualified Bonus '.obs,
        percentage: '₱88'.obs,
      ),
    ];
  }

  void onAgentTierRequirementsPressed() {
    // Handle agent tier requirements navigation
  }

  void onCopyLinkPressed() {
    // Handle copy link functionality
  }
}
