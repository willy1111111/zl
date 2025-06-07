import '../models/reward_item_model.dart';
import 'package:flutter/material.dart';
import '../../../../../core/app_export.dart';

class BetboRewardsController extends GetxController {
  RxList<RewardItemModel> rewards = <RewardItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    initializeRewards();
  }

  void initializeRewards() {
    rewards.value = [
      RewardItemModel(
        numberBadge: 'NO.2'.obs,
        prizeAmount: '₱ 500'.obs,
        wageredAmount: '₱ 10,000,00.33'.obs,
        date: '2023.03.09'.obs,
        isClaimed: true.obs,
        isClaimable: false.obs,
        badgeColor: Color(0xFFCACACA).obs,
      ),
      RewardItemModel(
        numberBadge: 'NO.1'.obs,
        prizeAmount: '₱ 500'.obs,
        wageredAmount: '₱ 10,000,00.33'.obs,
        date: '2023.03.09'.obs,
        isClaimed: true.obs,
        isClaimable: false.obs,
        badgeColor: Color(0xFFCACACA).obs,
      ),
      RewardItemModel(
        numberBadge: 'NO.3'.obs,
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
    if (index >= 0 && index < rewards.length) {
      final reward = rewards[index];
      if (!(reward.isClaimed?.value ?? true) &&
          (reward.isClaimable?.value ?? false)) {
        reward.isClaimed?.value = true;
        reward.isClaimable?.value = false;
        reward.badgeColor?.value = appTheme.colorFFCACA;
        rewards.refresh();
      }
    }
  }
}
