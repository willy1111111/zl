import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/vip_daily_cumulative_deposit_benefits_model.dart';
import '../models/vip_level_card_model.dart';

class VipDailyCumulativeDepositBenefitsController extends GetxController {
  Rx<VipDailyCumulativeDepositBenefitsModel>
      vipDailyCumulativeDepositBenefitsModel =
      VipDailyCumulativeDepositBenefitsModel().obs;

  RxList<VipLevelCardModel> vipLevelCards = <VipLevelCardModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    vipDailyCumulativeDepositBenefitsModel.value =
        VipDailyCumulativeDepositBenefitsModel();
    initializeVipLevelCards();
  }

  void initializeVipLevelCards() {
    vipLevelCards.value = [
      VipLevelCardModel(
        vipLevel: 'VIP0'.obs,
        backgroundImage: ImageConstant.imgImage244.obs,
        vipIcon: ImageConstant.imgIconvip156x56.obs,
        maxAmount: '₱10.00'.obs,
        depositRewards: [
          {'deposit': '₱150', 'reward': '₱2.00'},
          {'deposit': '₱250', 'reward': '₱4.00'},
          {'deposit': '₱500', 'reward': '₱6.00'},
        ].obs,
      ),
      VipLevelCardModel(
        vipLevel: 'VIP1'.obs,
        backgroundImage: ImageConstant.imgImage246.obs,
        vipIcon: ImageConstant.imgIconvip1.obs,
        maxAmount: '₱20.00'.obs,
        depositRewards: [
          {'deposit': '₱150', 'reward': '₱2.00'},
          {'deposit': '₱250', 'reward': '₱4.00'},
          {'deposit': '₱500', 'reward': '₱6.00'},
        ].obs,
      ),
      VipLevelCardModel(
        vipLevel: 'VIP2'.obs,
        backgroundImage: ImageConstant.imgImage247.obs,
        vipIcon: ImageConstant.imgIconvip2.obs,
        maxAmount: '₱30.00'.obs,
        depositRewards: [
          {'deposit': '₱150', 'reward': '₱2.00'},
          {'deposit': '₱250', 'reward': '₱4.00'},
          {'deposit': '₱500', 'reward': '₱6.00'},
          {'deposit': '₱700', 'reward': '₱7.00'},
          {'deposit': '₱800', 'reward': '₱8.00'},
        ].obs,
      ),
      VipLevelCardModel(
        vipLevel: 'VIP3'.obs,
        backgroundImage: ImageConstant.imgImage248.obs,
        vipIcon: ImageConstant.imgIconvip3.obs,
        maxAmount: '₱35.00'.obs,
        depositRewards: [
          {'deposit': '₱150', 'reward': '₱2.00'},
          {'deposit': '₱250', 'reward': '₱4.00'},
          {'deposit': '₱500', 'reward': '₱6.00'},
        ].obs,
      ),
      VipLevelCardModel(
        vipLevel: 'VIP4'.obs,
        backgroundImage: ImageConstant.imgImage244.obs,
        vipIcon: ImageConstant.imgIconvip4.obs,
        maxAmount: '₱40.00'.obs,
        depositRewards: [
          {'deposit': '₱150', 'reward': '₱2.00'},
          {'deposit': '₱250', 'reward': '₱4.00'},
          {'deposit': '₱500', 'reward': '₱6.00'},
        ].obs,
      ),
      VipLevelCardModel(
        vipLevel: 'VIP5'.obs,
        backgroundImage: ImageConstant.imgImage246.obs,
        vipIcon: ImageConstant.imgIconvip5.obs,
        maxAmount: '₱50.00'.obs,
        depositRewards: [
          {'deposit': '₱150', 'reward': '₱2.00'},
          {'deposit': '₱250', 'reward': '₱4.00'},
          {'deposit': '₱500', 'reward': '₱6.00'},
          {'deposit': '₱750', 'reward': '₱8.00'},
          {'deposit': '₱950', 'reward': '₱9.00'},
        ].obs,
      ),
      VipLevelCardModel(
        vipLevel: 'VIP6'.obs,
        backgroundImage: ImageConstant.imgImage247.obs,
        vipIcon: ImageConstant.imgIconvip6.obs,
        maxAmount: '₱60.00'.obs,
        hasSpecialBadge: true.obs,
        specialBadgeColor: Color(0xFFC028FF).obs,
        depositRewards: [
          {'deposit': '₱150', 'reward': '₱2.00'},
          {'deposit': '₱250', 'reward': '₱4.00'},
          {'deposit': '₱500', 'reward': '₱6.00'},
        ].obs,
      ),
      VipLevelCardModel(
        vipLevel: 'VIP7'.obs,
        backgroundImage: ImageConstant.imgImage248.obs,
        vipIcon: ImageConstant.imgIconvip7.obs,
        maxAmount: '₱70.00'.obs,
        hasSpecialBadge: true.obs,
        specialBadgeColor: Color(0xFF7D5DF6).obs,
        depositRewards: [
          {'deposit': '₱150', 'reward': '₱2.00'},
          {'deposit': '₱250', 'reward': '₱4.00'},
          {'deposit': '₱500', 'reward': '₱6.00'},
          {'deposit': '₱750', 'reward': '₱8.00'},
          {'deposit': '₱800', 'reward': '₱9.00'},
        ].obs,
      ),
      VipLevelCardModel(
        vipLevel: 'VIP8'.obs,
        backgroundImage: ImageConstant.imgImage244.obs,
        vipIcon: ImageConstant.imgIconvip8.obs,
        maxAmount: '₱80.00'.obs,
        hasSpecialBadge: true.obs,
        specialBadgeColor: Color(0xFFFBA524).obs,
        depositRewards: [
          {'deposit': '₱150', 'reward': '₱2.00'},
          {'deposit': '₱250', 'reward': '₱4.00'},
          {'deposit': '₱500', 'reward': '₱6.00'},
        ].obs,
      ),
      VipLevelCardModel(
        vipLevel: 'VIP9'.obs,
        backgroundImage: ImageConstant.imgImage246.obs,
        vipIcon: ImageConstant.imgIconvip11.obs,
        maxAmount: '₱89.00'.obs,
        depositRewards: [
          {'deposit': '₱150', 'reward': '₱2.00'},
          {'deposit': '₱250', 'reward': '₱4.00'},
          {'deposit': '₱500', 'reward': '₱6.00'},
        ].obs,
      ),
      VipLevelCardModel(
        vipLevel: 'VIP10'.obs,
        backgroundImage: ImageConstant.imgImage247.obs,
        vipIcon: ImageConstant.imgIconvip10.obs,
        maxAmount: '₱100.00'.obs,
        isFullWidth: true.obs,
        depositRewards: [
          {'deposit': '₱150', 'reward': '₱2.00'},
          {'deposit': '₱250', 'reward': '₱4.00'},
          {'deposit': '₱500', 'reward': '₱6.00'},
          {'deposit': '₱600', 'reward': '₱8.00'},
        ].obs,
      ),
    ];
  }

  void onDepositNowPressed() {
    // Handle deposit now action
    Get.snackbar(
      'Deposit',
      'Redirecting to deposit page...',
      backgroundColor: appTheme.colorFF85D4,
      colorText: appTheme.whiteCustom,
    );
  }

  void onReceivedPressed() {
    // Handle received button press
    Get.snackbar(
      'Bonus',
      'Bonus already received',
      backgroundColor: appTheme.colorFF8089,
      colorText: appTheme.whiteCustom,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }
}
