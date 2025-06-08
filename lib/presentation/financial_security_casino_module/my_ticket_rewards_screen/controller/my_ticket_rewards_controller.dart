import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/my_ticket_rewards_model.dart';
import '../models/reward_item_model.dart';

class MyTicketRewardsController extends GetxController {
  final isLoading = false.obs;
  final selectedTabIndex = 1.obs;
  final myTicketRewardsModel = Rx<MyTicketRewardsModel?>(null);
  final rewardItems = <RewardItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    initializeData();
  }

  void initializeData() {
    myTicketRewardsModel.value = MyTicketRewardsModel(
      userId: '939038393'.obs,
      bonusAmount: '₱ 123456789.00'.obs,
      notificationCount: 9.obs,
    );

    rewardItems.value = [
      RewardItemModel(
        id: '1'.obs,
        title: 'Red package'.obs,
        date: '2024.06.30'.obs,
        rewardType: 'Reward'.obs,
        rewardDescription:
            'APP download bonus - ₱38 APP download bonus - ₱38 APP download bonus - ₱38'
                .obs,
        highlightColor: Color(0xFFFA22FF).obs,
        iconPath: ImageConstant.imgFrame1409944x44.obs,
        backgroundColor: Color(0xFF361C63).obs,
        backgroundImagePath: ImageConstant.imgGroup14406.obs,
        overlayImagePath: ImageConstant.imgSubtractGray90008111x255.obs,
        decorationImagePath: ImageConstant.imgGroup1439787x67.obs,
        rightSectionImagePath: ImageConstant.imgSubtractGray90008111x90.obs,
        dueDate: '0'.obs,
        timeRemaining: '23:36:58'.obs,
        isExpired: false.obs,
        isClaimable: true.obs,
      ),
      RewardItemModel(
        id: '2'.obs,
        title: 'Cash voucher'.obs,
        date: '2024.06.30'.obs,
        rewardType: 'Reward:'.obs,
        rewardDescription: '₱8 Cash Voucher ₱8 Cash Voucher'.obs,
        highlightColor: Color(0xFF1CADFF).obs,
        iconPath: ImageConstant.imgCash1.obs,
        backgroundColor: Color(0xFF1E2849).obs,
        backgroundImagePath: ImageConstant.imgGroup14406.obs,
        overlayImagePath: ImageConstant.imgSubtractGray90010.obs,
        decorationImagePath: ImageConstant.imgGroup14397111x195.obs,
        rightSectionImagePath: ImageConstant.imgSubtractGray90010111x90.obs,
        dueDate: '0'.obs,
        timeRemaining: '20:30:50'.obs,
        isExpired: false.obs,
        isClaimable: true.obs,
      ),
      RewardItemModel(
        id: '3'.obs,
        title: 'Cash Voucher'.obs,
        date: '2024.06.30'.obs,
        rewardType: 'Reward:'.obs,
        rewardDescription: '₱8 Cash Voucher ₱8 Cash Voucher'.obs,
        highlightColor: Color(0xFF1CADFF).obs,
        iconPath: ImageConstant.imgCash1.obs,
        backgroundColor: Color(0xFF1E2849).obs,
        backgroundImagePath: ImageConstant.imgGroup14406.obs,
        overlayImagePath: ImageConstant.imgSubtractGray90010.obs,
        decorationImagePath: ImageConstant.imgGroup14397111x195.obs,
        rightSectionImagePath: ImageConstant.imgSubtractGray90010111x90.obs,
        dueDate: '0'.obs,
        timeRemaining: '23:36:58'.obs,
        isExpired: false.obs,
        isClaimable: true.obs,
      ),
      RewardItemModel(
        id: '4'.obs,
        title: 'lucky wheel'.obs,
        date: '2024.06.30'.obs,
        rewardType: 'Reward:'.obs,
        rewardDescription: 'Free spins, a chance to win 1000₱'.obs,
        highlightColor: Color(0xFF0EEABE).obs,
        iconPath: ImageConstant.imgFrame14099.obs,
        backgroundColor: Color(0xFF2D4440).obs,
        backgroundImagePath: ImageConstant.imgGroup14406BlueGray80002.obs,
        overlayImagePath: ImageConstant.imgSubtractGray90005111x255.obs,
        decorationImagePath: ImageConstant.imgGroup1439787x67.obs,
        rightSectionImagePath: ImageConstant.imgSubtractGray90005111x90.obs,
        dueDate: '0'.obs,
        timeRemaining: '23:36:58'.obs,
        isExpired: false.obs,
        isClaimable: true.obs,
      ),
      RewardItemModel(
        id: '5'.obs,
        title: 'Golden Egg'.obs,
        date: '2024.06.30'.obs,
        rewardType: 'Reward:'.obs,
        rewardDescription: 'Daily Treasure Hunt-1 Daily Treasure Hunt-1'.obs,
        highlightColor: Color(0xFFF2B10B).obs,
        iconPath: ImageConstant.imgFrame14099.obs,
        backgroundColor: Color(0xFF443631).obs,
        backgroundImagePath: ImageConstant.imgGroup14406.obs,
        overlayImagePath: ImageConstant.imgSubtractGray90006111x255.obs,
        decorationImagePath: ImageConstant.imgGroup1439787x67.obs,
        rightSectionImagePath: ImageConstant.imgSubtractGray90006111x90.obs,
        dueDate: '0'.obs,
        timeRemaining: '23:36:58'.obs,
        isExpired: false.obs,
        isClaimable: true.obs,
      ),
      RewardItemModel(
        id: '6'.obs,
        title: 'Red package'.obs,
        date: '2024.06.30'.obs,
        rewardType: 'Reward:'.obs,
        rewardDescription:
            'APP download bonus - ₱38 APP download bonus - ₱38 APP download bonus - ₱38'
                .obs,
        highlightColor: appTheme.whiteCustom.obs,
        iconPath: ImageConstant.imgImage377.obs,
        backgroundColor: Color(0xFF3A3F47).obs,
        backgroundImagePath: ImageConstant.imgGroup14406.obs,
        overlayImagePath: ImageConstant.imgSubtractGray90002.obs,
        decorationImagePath: ImageConstant.imgGroup1439787x67.obs,
        rightSectionImagePath: ImageConstant.imgSubtractGray90002111x90.obs,
        dueDate: '0'.obs,
        timeRemaining: '00:00:00'.obs,
        isExpired: true.obs,
        isClaimable: false.obs,
      ),
    ];
  }

  void selectTab(int index) {
    selectedTabIndex.value = index;
    if (index == 0) {
      Get.toNamed(AppRoutes.ticketEventScreen);
    }
  }

  void claimReward(RewardItemModel reward) {
    if (reward.isClaimable?.value ??
        false && !(reward.isExpired?.value ?? true)) {
      Get.snackbar(
        'Reward Claimed',
        'You have successfully claimed ${reward.title?.value ?? 'the reward'}!',
        backgroundColor: appTheme.colorFF85D4,
        colorText: appTheme.whiteCustom,
      );
    }
  }
}
