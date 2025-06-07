import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../models/bonus_card_model.dart';
import '../models/gaming_bonus_rewards_model.dart';

class GamingBonusRewardsController extends GetxController {
  Rx<GamingBonusRewardsModel> gamingBonusRewardsModel =
      GamingBonusRewardsModel().obs;

  RxList<BonusCardModel> bonusCards = <BonusCardModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    initializeBonusCards();
  }

  void initializeBonusCards() {
    bonusCards.value = [
      BonusCardModel(
        title: 'Registration Bonus'.obs,
        subtitle: 'your bonus:'.obs,
        amount: '₱ 12.00'.obs,
        iconPath: ImageConstant.imgBonusrakeback67a8b0b9png.obs,
        borderColor: Color(0xFF74B200).obs,
        shadowColor: Color(0x33045C17).obs,
        iconBorderColor: Color(0xFFCF8900).obs,
        buttonColor: Color(0xFFFFC600).obs,
        buttonTextColor: appTheme.blackCustom.obs,
        buttonText: 'Claim'.obs,
        isClaimed: false.obs,
      ),
      BonusCardModel(
        title: 'Agent Ranking'.obs,
        subtitle: 'your bonus:'.obs,
        amount: '₱ 12.00'.obs,
        iconPath: ImageConstant.imgBonusrakeback67a8b0b9png.obs,
        borderColor: Color(0xFF74B200).obs,
        shadowColor: Color(0xFF4891FF).obs,
        iconBorderColor: Color(0xFFCF8900).obs,
        buttonColor: Color(0xFFFFC600).obs,
        buttonTextColor: appTheme.blackCustom.obs,
        buttonText: 'Claim'.obs,
        isClaimed: false.obs,
      ),
      BonusCardModel(
        title: 'App Download Bonus'.obs,
        subtitle: 'your bonus:'.obs,
        amount: '₱ 12.00'.obs,
        iconPath: ImageConstant.imgBonusrakeback67a8b0b9png.obs,
        borderColor: Color(0xFFA8A8A8).obs,
        shadowColor: Color(0xFF4891FF).obs,
        iconBorderColor: Color(0xFFA8A8A8).obs,
        buttonColor: Color(0xFF737373).obs,
        buttonTextColor: appTheme.whiteCustom.obs,
        buttonText: 'Claimed'.obs,
        isClaimed: true.obs,
      ),
    ];
  }

  void onClaimPressed(int index) {
    if (!(bonusCards[index].isClaimed?.value ?? true)) {
      bonusCards[index].isClaimed?.value = true;
      bonusCards[index].buttonText?.value = 'Claimed';
      bonusCards[index].buttonColor?.value = appTheme.colorFF7373;
      bonusCards[index].buttonTextColor?.value = appTheme.whiteCustom;
      bonusCards.refresh();
    }
  }

  void onClosePressed() {
    Get.back();
  }
}
