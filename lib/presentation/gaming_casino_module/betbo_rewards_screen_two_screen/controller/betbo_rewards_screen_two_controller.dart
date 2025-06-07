import 'package:get/get.dart';
import '../models/betbo_rewards_screen_two_model.dart';
import '../models/reward_item_model.dart';
import 'package:flutter/material.dart';
import '../../../../../core/app_export.dart';

class BetboRewardsScreenTwoController extends GetxController {
  BetboRewardsScreenTwoModel betboRewardsScreenTwoModel =
      BetboRewardsScreenTwoModel();

  RxList<RewardItemModel> rewardItems = <RewardItemModel>[].obs;
  RxBool showSuccessDialog = false.obs;

  @override
  void onInit() {
    super.onInit();
    _initializeRewardItems();
  }

  void _initializeRewardItems() {
    rewardItems.value = [
      RewardItemModel(
        number: 'NO.2'.obs,
        prizeAmount: '₱ 500'.obs,
        wageredAmount: '₱ 10,000,00.33'.obs,
        date: '2023.03.09'.obs,
        isClaimed: true.obs,
        isClaimable: false.obs,
        badgeColor: Color(0xFFCACACA).obs,
      ),
      RewardItemModel(
        number: 'NO.1'.obs,
        prizeAmount: '₱ 500'.obs,
        wageredAmount: '₱ 10,000,00.33'.obs,
        date: '2023.03.09'.obs,
        isClaimed: true.obs,
        isClaimable: false.obs,
        badgeColor: Color(0xFFCACACA).obs,
      ),
      RewardItemModel(
        number: 'NO.3'.obs,
        prizeAmount: '₱ 500'.obs,
        wageredAmount: '₱ 10,000,00.33'.obs,
        date: '2023.03.09'.obs,
        isClaimed: false.obs,
        isClaimable: true.obs,
        badgeColor: Color(0xFF85D420).obs,
      ),
    ];
  }

  void claimReward(int index) {
    if (index < rewardItems.length &&
        (rewardItems[index].isClaimable?.value ?? false)) {
      rewardItems[index].isClaimed?.value = true;
      rewardItems[index].isClaimable?.value = false;
      rewardItems.refresh();

      showSuccessDialog.value = true;

      Future.delayed(Duration(seconds: 2), () {
        showSuccessDialog.value = false;
      });
    }
  }
}
