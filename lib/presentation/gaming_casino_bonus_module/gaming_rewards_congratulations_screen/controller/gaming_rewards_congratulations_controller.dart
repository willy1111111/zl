import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/bonus_card_item_model.dart';
import '../models/gaming_rewards_congratulations_model.dart';

class GamingRewardsCongratulationsController extends GetxController {
  Rx<GamingRewardsCongratulationsModel> gamingRewardsCongratulationsModelObj =
      GamingRewardsCongratulationsModel().obs;

  RxList<BonusCardItemModel> bonusCards = <BonusCardItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _initializeBonusCards();
  }

  void _initializeBonusCards() {
    bonusCards.value = [
      BonusCardItemModel(
          iconImages: [
            ImageConstant.img2.obs,
            ImageConstant.img133x67.obs,
            ImageConstant.img17.obs,
            ImageConstant.imgImage381.obs,
            ImageConstant.imgImage383.obs,
            ImageConstant.imgImage382.obs,
            ImageConstant.img14.obs,
          ],
          iconPositions: [
            Offset(15.h, 9.h).obs,
            Offset(6.h, 11.h).obs,
            Offset(5.h, 5.h).obs,
            Offset(42.h, 19.h).obs,
            Offset(38.h, 25.h).obs,
            Offset(30.h, 21.h).obs,
            Offset(6.h, 11.h).obs,
          ],
          iconSizes: [
            Size(18.h, 9.h).obs,
            Size(67.h, 33.h).obs,
            Size(67.h, 57.h).obs,
            Size(10.h, 10.h).obs,
            Size(9.h, 9.h).obs,
            Size(8.h, 8.h).obs,
            Size(68.h, 35.h).obs,
          ],
          experienceText: 'Experience'.obs,
          title: 'Experience Bonus'.obs,
          description: 'your bonus:'.obs,
          amount: '₱ ???'.obs,
          buttonText: 'Detail'.obs,
          isClaimable: false.obs,
          backgroundColor: Color(0xFF0C6E22).obs,
          borderColor: Color(0xFF55D572).obs,
          iconBorderColor: Color(0xFFCF8900).obs),
      BonusCardItemModel(
          iconImages: [
            ImageConstant.img12.obs,
            ImageConstant.imgGold.obs,
            ImageConstant.imgVip.obs,
            ImageConstant.imgYellowA400.obs,
          ],
          iconPositions: [
            Offset(3.h, 7.h).obs,
            Offset(32.h, 19.h).obs,
            Offset(7.h, 16.h).obs,
            Offset(5.h, 5.h).obs,
          ],
          iconSizes: [
            Size(72.h, 51.h).obs,
            Size(33.h, 30.h).obs,
            Size(40.h, 39.h).obs,
            Size(61.h, 40.h).obs,
          ],
          title: 'VIP Daily Salary'.obs,
          description: 'your bonus:'.obs,
          amount: '₱ 8888.00'.obs,
          buttonText: 'Claim'.obs,
          isClaimable: false.obs,
          backgroundColor: Color(0xFF0C6E22).obs,
          borderColor: Color(0xFF55D572).obs,
          iconBorderColor: Color(0xFFCF8900).obs),
      BonusCardItemModel(
          iconImages: [
            ImageConstant.imgGold.obs,
          ],
          iconPositions: [
            Offset(2.h, 4.h).obs,
          ],
          iconSizes: [
            Size(52.h, 48.h).obs,
          ],
          title: 'Registration Bonus'.obs,
          description: 'your bonus:'.obs,
          amount: '₱ 12.00'.obs,
          buttonText: 'Claim'.obs,
          isClaimable: true.obs,
          backgroundColor: Color(0xFF0C6E22).obs,
          borderColor: Color(0xFF55D572).obs,
          iconBorderColor: Color(0xFFCF8900).obs),
    ];
  }

  void onBonusAction(int index) {
    BonusCardItemModel bonusCard = bonusCards[index];

    if (bonusCard.buttonText!.value == 'Detail') {
      Get.snackbar(
          'Bonus Details', 'Showing ${bonusCard.title!.value} details...',
          backgroundColor: appTheme.colorFF0C6E,
          colorText: appTheme.whiteCustom,
          duration: Duration(seconds: 2));
    } else if (bonusCard.buttonText!.value == 'Claim') {
      if (bonusCard.isClaimable!.value) {
        Get.snackbar(
            'Success', '${bonusCard.title!.value} claimed successfully!',
            backgroundColor: appTheme.colorFF55D5,
            colorText: appTheme.whiteCustom,
            duration: Duration(seconds: 2));
        bonusCard.isClaimable!.value = false;
        bonusCard.buttonText!.value = 'Claimed';
        bonusCards.refresh();
      } else {
        Get.snackbar('Info', 'This bonus is not available for claim yet.',
            backgroundColor: appTheme.colorFFFFEB,
            colorText: appTheme.blackCustom,
            duration: Duration(seconds: 2));
      }
    }
  }
}
