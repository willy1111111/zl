import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../models/benefit_card_model.dart';
import '../models/bonus_card_model.dart';
import '../models/senior_agent_dashboard_model.dart';
import '../models/social_media_model.dart';

class SeniorAgentDashboardController extends GetxController {
  Rx<SeniorAgentDashboardModel> seniorAgentDashboardModel =
      SeniorAgentDashboardModel().obs;

  RxList<BenefitCardModel> benefitCards = <BenefitCardModel>[].obs;
  RxList<SocialMediaModel> socialMediaItems = <SocialMediaModel>[].obs;
  RxList<BonusCardModel> bonusCards = <BonusCardModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _initializeBenefitCards();
    _initializeSocialMediaItems();
    _initializeBonusCards();
  }

  void _initializeBenefitCards() {
    benefitCards.value = [
      BenefitCardModel(
        title: 'Bet Rebate up to '.obs,
        highlightText: '0.8%'.obs,
        backgroundImage: ImageConstant.imgFrame2131329752.obs,
        iconImages: [
          ImageConstant.imgTdr22.obs,
          ImageConstant.imgImage1100.obs,
          ImageConstant.imgImage1104.obs,
        ].obs, // Modified: Added .obs to convert List to RxList
      ),
      BenefitCardModel(
        title: 'Deposit Rebate '.obs,
        highlightText: '1.3%'.obs,
        backgroundImage: ImageConstant.imgFrame2131329752.obs,
        iconImages: [
          ImageConstant.imgGroup2131329972.obs,
        ].obs, // Modified: Added .obs to convert List to RxList
      ),
      BenefitCardModel(
        title: 'Qualified Bonus '.obs,
        highlightText: '₱88'.obs,
        backgroundImage: ImageConstant.imgFrame2131329752.obs,
        iconImages: <Rx<String>>[]
            .obs, // Modified: Added .obs to convert empty List to RxList
      ),
    ];
  }

  void _initializeSocialMediaItems() {
    socialMediaItems.value = [
      SocialMediaModel(
        iconPath:
            ImageConstant.img6afbb433afc026dcfdf9fbeec26198a2vibericonlogo1.obs,
        name: 'Viber'.obs,
      ),
      SocialMediaModel(
        iconPath: ImageConstant.imgGroup12121.obs,
        name: 'Telegram'.obs,
      ),
      SocialMediaModel(
        iconPath: ImageConstant.imgGroup12122.obs,
        name: 'Facebook'.obs,
      ),
      SocialMediaModel(
        iconPath: ImageConstant.imgGroup12060.obs,
        name: 'WhatsApp'.obs,
      ),
      SocialMediaModel(
        iconPath: ImageConstant.imgTwitter1.obs,
        name: 'Twitter'.obs,
      ),
      SocialMediaModel(
        iconPath: ImageConstant.imgGroup12124.obs,
        name: 'Email'.obs,
      ),
    ];
  }

  void _initializeBonusCards() {
    bonusCards.value = [
      BonusCardModel(
        title: 'Registration Bonus'.obs,
        amount: '₱ 7,550.00'.obs,
        gradientColors: [Color(0xFF14BFEC), Color(0xFF006CD9)],
        iconPath: ImageConstant.imgJb47x49.obs,
        borderRadius: 7.0,
      ),
      BonusCardModel(
        title: 'Deposit Bonus'.obs,
        amount: '₱ 1,000,000.00'.obs,
        gradientColors: [Color(0xFF7669F0), Color(0xFFC89BFB)],
        iconPath: ImageConstant.imgJb47x49.obs,
        borderRadius: 5.0,
      ),
      BonusCardModel(
        title: 'Qualified Bonus'.obs,
        amount: '₱ 90,000.00'.obs,
        gradientColors: [Color(0xFF7669F0), Color(0xFFC89BFB)],
        iconPath: ImageConstant.imgJb47x49.obs,
        borderRadius: 5.0,
        isTextCentered: true.obs,
      ),
      BonusCardModel(
        title: 'Achievement Bonus'.obs,
        amount: '₱ 30,000.00'.obs,
        gradientColors: [Color(0xFF14BFEC), Color(0xFF006CD9)],
        iconPath: ImageConstant.imgJb47x49.obs,
        borderRadius: 5.0,
        isTextCentered: true.obs,
      ),
      BonusCardModel(
        title: 'Deposit Rebate Bonus'.obs,
        amount: '₱ 200,000.00'.obs,
        gradientColors: [Color(0xFF09ECAC), Color(0xFF1A68FE)],
        iconPath: ImageConstant.imgJb47x49.obs,
        borderRadius: 7.0,
        isTextCentered: true.obs,
      ),
      BonusCardModel(
        title: 'BettingRebate Bonus'.obs,
        amount: '₱ 599,000.00'.obs,
        gradientColors: [Color(0xFFEE47AB), Color(0xFFFFC74F)],
        iconPath: ImageConstant.imgJb47x49.obs,
        borderRadius: 5.0,
        isTextCentered: true.obs,
      ),
      BonusCardModel(
        title: 'Agent Ranking Bonus'.obs,
        amount: '₱ 100,000.00'.obs,
        gradientColors: [Color(0xFFC498FA), Color(0xFF1A68FE)],
        iconPath: ImageConstant.imgJb47x49.obs,
        borderRadius: 7.0,
        isTextCentered: true.obs,
        isFullWidth: true.obs,
      ),
    ];
  }

  void onAgentTierRequirementsTap() {
    // Handle agent tier requirements navigation
  }

  void onCopyLinkTap() {
    // Handle copy link functionality
  }

  void onSocialMediaTap(int index) {
    // Handle social media sharing
  }

  void onPreviousDayTap() {
    // Handle previous day navigation
  }

  void onNextDayTap() {
    // Handle next day navigation
  }
}
