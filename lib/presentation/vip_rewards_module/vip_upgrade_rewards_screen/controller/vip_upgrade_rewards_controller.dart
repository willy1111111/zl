import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../models/vip_bonus_item_model.dart';
import '../models/vip_level_row_model.dart';
import '../models/vip_upgrade_rewards_model.dart';

class VipUpgradeRewardsController extends GetxController {
  Rx<VipUpgradeRewardsModel> vipUpgradeRewardsModel =
      VipUpgradeRewardsModel().obs;

  RxList<VipBonusItemModel> vipBonusItems = <VipBonusItemModel>[].obs;
  RxList<VipLevelRowModel> vipLevelRows = <VipLevelRowModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    vipUpgradeRewardsModel.value = VipUpgradeRewardsModel();
    _initializeVipBonusItems();
    _initializeVipLevelRows();
  }

  void _initializeVipBonusItems() {
    vipBonusItems.value = [
      VipBonusItemModel(
          vipIcon: ImageConstant.imgVip.obs,
          vipLevel: '4'.obs,
          vipLevelColor: Color(0xFFFFEB3B).obs,
          bonusAmount: '₱18888'.obs,
          bonusAmountColor: Color(0xFFFFEB3B).obs,
          status: 'receive'.obs,
          backgroundColor: Color(0xFF34383E).obs,
          isReceivable: true.obs),
      VipBonusItemModel(
          vipIcon: ImageConstant.imgVip41x43.obs,
          vipLevel: '5'.obs,
          vipLevelColor: Color(0xFFFFB900).obs,
          bonusAmount: '₱28888'.obs,
          bonusAmountColor: Color(0xFFFFB900).obs,
          status: 'Undone'.obs,
          backgroundColor: Color(0xFF2D3036).obs,
          isReceivable: false.obs),
      VipBonusItemModel(
          vipIcon: ImageConstant.imgVip41x43.obs,
          vipLevel: '2'.obs,
          vipLevelColor: Color(0xFFFFB900).obs,
          bonusAmount: '₱188888'.obs,
          bonusAmountColor: Color(0xFFFFB900).obs,
          status: 'Received'.obs,
          backgroundColor: Color(0xFF25282D).obs,
          isReceivable: false.obs,
          isReceived: true.obs,
          receivedDate: '2023-2-2 15:59:59'.obs),
    ];
  }

  void _initializeVipLevelRows() {
    vipLevelRows.value = [
      VipLevelRowModel(
          levelIcon: ImageConstant.imgIconvip13.obs,
          levelText: 'Lv.1'.obs,
          depositAmount: '800'.obs,
          betAmount: '1200'.obs,
          upgradeBonus: '500'.obs,
          weeklyCashback: '500'.obs),
      VipLevelRowModel(
          levelIcon: ImageConstant.imgIconvip140x40.obs,
          levelText: 'Lv.2'.obs,
          depositAmount: '800'.obs,
          betAmount: '1200'.obs,
          upgradeBonus: '300'.obs,
          weeklyCashback: '300'.obs),
      VipLevelRowModel(
          levelIcon: ImageConstant.imgIconvip14.obs,
          levelText: 'Lv.3'.obs,
          depositAmount: '800'.obs,
          betAmount: '1200'.obs,
          upgradeBonus: '500'.obs,
          weeklyCashback: '500'.obs),
      VipLevelRowModel(
          levelIcon: ImageConstant.imgIconvip4.obs,
          levelText: 'Lv.4'.obs,
          depositAmount: '800'.obs,
          betAmount: '1200'.obs,
          upgradeBonus: '300'.obs,
          weeklyCashback: '300'.obs),
      VipLevelRowModel(
          levelIcon: ImageConstant.imgIconvip16.obs,
          levelText: 'Lv.5'.obs,
          depositAmount: '800'.obs,
          betAmount: '1200'.obs,
          upgradeBonus: '300'.obs,
          weeklyCashback: '300'.obs),
      VipLevelRowModel(
          levelIcon: ImageConstant.imgIconvip11.obs,
          levelText: 'Lv.6'.obs,
          depositAmount: '800'.obs,
          betAmount: '1200'.obs,
          upgradeBonus: '300'.obs,
          weeklyCashback: '300'.obs),
      VipLevelRowModel(
          levelIcon: ImageConstant.imgIconvip15.obs,
          levelText: 'Lv.7'.obs,
          depositAmount: '800'.obs,
          betAmount: '1200'.obs,
          upgradeBonus: '300'.obs,
          weeklyCashback: '300'.obs),
      VipLevelRowModel(
          levelIcon: ImageConstant.imgIconvip12.obs,
          levelText: 'Lv.8'.obs,
          depositAmount: '800'.obs,
          betAmount: '1200'.obs,
          upgradeBonus: '300'.obs,
          weeklyCashback: '300'.obs),
      VipLevelRowModel(
          levelIcon: ImageConstant.imgIconvip17.obs,
          levelText: 'Lv.9'.obs,
          depositAmount: '800'.obs,
          betAmount: '1200'.obs,
          upgradeBonus: '300'.obs,
          weeklyCashback: '300'.obs),
      VipLevelRowModel(
          levelIcon: ImageConstant.imgIconvip10.obs,
          levelText: 'Lv.10'.obs,
          depositAmount: '800'.obs,
          betAmount: '1200'.obs,
          upgradeBonus: '300'.obs,
          weeklyCashback: '300'.obs),
    ];
  }

  void onVipUpgradeTap() {
    Get.toNamed(AppRoutes.vipUpgradeBonusScreen);
  }

  void onReceiveBonus(VipBonusItemModel bonusItem) {
    int index = vipBonusItems.indexWhere(
        (item) => item.vipLevel!.value == bonusItem.vipLevel!.value);
    if (index != -1) {
      vipBonusItems[index].isReceivable?.value = false;
      vipBonusItems[index].isReceived?.value = true;
      vipBonusItems[index].status?.value = 'Received';
      vipBonusItems[index].receivedDate?.value =
          DateTime.now().toString().substring(0, 19);
      vipBonusItems.refresh();
    }
  }
}
