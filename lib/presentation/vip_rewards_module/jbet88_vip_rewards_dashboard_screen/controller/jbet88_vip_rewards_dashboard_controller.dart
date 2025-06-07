import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../models/jbet88_vip_rewards_dashboard_model.dart';
import '../models/vip_level_item_model.dart';
import '../models/vip_requirement_row_model.dart';

class Jbet88VipRewardsDashboardController extends GetxController {
  Rx<Jbet88VipRewardsDashboardModel> jbet88VipRewardsDashboardModelObj =
      Jbet88VipRewardsDashboardModel().obs;

  RxList<VipLevelItemModel> vipLevelItems = <VipLevelItemModel>[].obs;
  RxList<VipRequirementRowModel> vipRequirementRows =
      <VipRequirementRowModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _initializeVipLevelItems();
    _initializeVipRequirementRows();
  }

  void _initializeVipLevelItems() {
    vipLevelItems.value = [
      VipLevelItemModel(
        iconPath: ImageConstant.imgIconvip3.obs,
        vipLevel: '3'.obs,
        bonusAmount: '₱18'.obs,
        isAvailable: true.obs,
        backgroundColor: Color(0xFF34383e).obs,
        levelColor: Color(0xFFffeb3b).obs,
        bonusColor: Color(0xFFffeb3b).obs,
      ),
      VipLevelItemModel(
        iconPath: ImageConstant.imgIconvip4.obs,
        vipLevel: '4'.obs,
        bonusAmount: '₱18888'.obs,
        isAvailable: true.obs,
        backgroundColor: Color(0xFF34383e).obs,
        levelColor: Color(0xFFffb900).obs,
        bonusColor: Color(0xFFffb900).obs,
      ),
      VipLevelItemModel(
        iconPath: ImageConstant.imgIconvip5.obs,
        vipLevel: '5'.obs,
        bonusAmount: '₱28888'.obs,
        isAvailable: false.obs,
        backgroundColor: Color(0xFF2d3036).obs,
        levelColor: Color(0xFFffb900).obs,
        bonusColor: Color(0xFFffb900).obs,
      ),
      VipLevelItemModel(
        iconPath: ImageConstant.imgIconvip2.obs,
        vipLevel: '2'.obs,
        bonusAmount: '₱188888'.obs,
        isReceived: true.obs,
        receivedDate: '2023-2-2 15:59:59'.obs,
        backgroundColor: Color(0xFF34383e).obs,
        levelColor: Color(0xFFffb900).obs,
        bonusColor: Color(0xFFffb900).obs,
      ),
    ];
  }

  void _initializeVipRequirementRows() {
    vipRequirementRows.value = [
      VipRequirementRowModel(
        iconPath: ImageConstant.imgIconvip1.obs,
        level: 'Lv.1'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '500'.obs,
        weeklyCashback: '500'.obs,
      ),
      VipRequirementRowModel(
        iconPath: ImageConstant.imgIconvip2.obs,
        level: 'Lv.2'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipRequirementRowModel(
        iconPath: ImageConstant.imgIconvip3.obs,
        level: 'Lv.3'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '500'.obs,
        weeklyCashback: '500'.obs,
      ),
      VipRequirementRowModel(
        iconPath: ImageConstant.imgIconvip4.obs,
        level: 'Lv.4'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipRequirementRowModel(
        iconPath: ImageConstant.imgIconvip5.obs,
        level: 'Lv.5'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipRequirementRowModel(
        iconPath: ImageConstant.imgIconvip6.obs,
        level: 'Lv.6'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipRequirementRowModel(
        iconPath: ImageConstant.imgIconvip7.obs,
        level: 'Lv.7'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipRequirementRowModel(
        iconPath: ImageConstant.imgIconvip8.obs,
        level: 'Lv.8'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipRequirementRowModel(
        iconPath: ImageConstant.imgIconvip9.obs,
        level: 'Lv.9'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipRequirementRowModel(
        iconPath: ImageConstant.imgIconvip10.obs,
        level: 'Lv.10'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
    ];
  }

  void onReceiveReward(VipLevelItemModel item) {
    if (item.isAvailable?.value ?? false) {
      item.isReceived?.value = true;
      item.isAvailable?.value = false;
      item.receivedDate?.value = DateTime.now().toString();
      vipLevelItems.refresh();
      Get.snackbar(
        'Success',
        'Reward claimed successfully!',
        backgroundColor: appTheme.colorFF76CD,
        colorText: appTheme.whiteCustom,
      );
    }
  }

  @override
  void onClose() {
    super.onClose();
  }
}
