import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../models/jbet88_vip_upgrade_bonus_model.dart';
import '../models/vip_bonus_item_model.dart';
import '../models/vip_requirement_row_model.dart';

class Jbet88VipUpgradeBonusController extends GetxController {
  Rx<Jbet88VipUpgradeBonusModel> jbet88VipUpgradeBonusModelObj =
      Jbet88VipUpgradeBonusModel().obs;

  RxList<VipBonusItemModel> vipBonusItems = <VipBonusItemModel>[].obs;
  RxList<VipRequirementRowModel> vipRequirementRows =
      <VipRequirementRowModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    initializeData();
  }

  void initializeData() {
    vipBonusItems.value = [
      VipBonusItemModel(
          vipIcon: ImageConstant.imgVip.obs,
          vipLevel: '4'.obs,
          bonusAmount: '₱18888'.obs,
          status: 'Receive'.obs,
          isReceived: false.obs,
          backgroundColor: Color(0xFF34383e).obs),
      VipBonusItemModel(
          vipIcon: ImageConstant.imgVip41x43.obs,
          vipLevel: '5'.obs,
          bonusAmount: '₱28888'.obs,
          status: 'Undone'.obs,
          isReceived: false.obs,
          backgroundColor: Color(0xFF2d3036).obs),
      VipBonusItemModel(
          vipIcon: ImageConstant.imgVip41x43.obs,
          vipLevel: '2'.obs,
          bonusAmount: '₱188888'.obs,
          status: 'Received'.obs,
          receivedDate: '2023-2-2 15:59:59'.obs,
          isReceived: true.obs,
          backgroundColor: Color(0xFF25282d).obs),
    ];

    vipRequirementRows.value = [
      VipRequirementRowModel(
          vipIcon: ImageConstant.imgIconvip1.obs,
          vipLevel: 'Lv.1'.obs,
          depositAmount: '800'.obs,
          betAmount: '1200'.obs,
          upgradeBonus: '500'.obs,
          weeklyCashback: '500'.obs),
      VipRequirementRowModel(
          vipIcon: ImageConstant.imgIconvip2.obs,
          vipLevel: 'Lv.2'.obs,
          depositAmount: '800'.obs,
          betAmount: '1200'.obs,
          upgradeBonus: '300'.obs,
          weeklyCashback: '300'.obs),
      VipRequirementRowModel(
          vipIcon: ImageConstant.imgIconvip3.obs,
          vipLevel: 'Lv.3'.obs,
          depositAmount: '800'.obs,
          betAmount: '1200'.obs,
          upgradeBonus: '500'.obs,
          weeklyCashback: '500'.obs),
      VipRequirementRowModel(
          vipIcon: ImageConstant.imgIconvip4.obs,
          vipLevel: 'Lv.4'.obs,
          depositAmount: '800'.obs,
          betAmount: '1200'.obs,
          upgradeBonus: '300'.obs,
          weeklyCashback: '300'.obs),
      VipRequirementRowModel(
          vipIcon: ImageConstant.imgIconvip5.obs,
          vipLevel: 'Lv.5'.obs,
          depositAmount: '800'.obs,
          betAmount: '1200'.obs,
          upgradeBonus: '300'.obs,
          weeklyCashback: '300'.obs),
      VipRequirementRowModel(
          vipIcon: ImageConstant.imgIconvip6.obs,
          vipLevel: 'Lv.6'.obs,
          depositAmount: '800'.obs,
          betAmount: '1200'.obs,
          upgradeBonus: '300'.obs,
          weeklyCashback: '300'.obs),
      VipRequirementRowModel(
          vipIcon: ImageConstant.imgIconvip7.obs,
          vipLevel: 'Lv.7'.obs,
          depositAmount: '800'.obs,
          betAmount: '1200'.obs,
          upgradeBonus: '300'.obs,
          weeklyCashback: '300'.obs),
      VipRequirementRowModel(
          vipIcon: ImageConstant.imgIconvip8.obs,
          vipLevel: 'Lv.8'.obs,
          depositAmount: '800'.obs,
          betAmount: '1200'.obs,
          upgradeBonus: '300'.obs,
          weeklyCashback: '300'.obs),
      VipRequirementRowModel(
          vipIcon: ImageConstant.imgIconvip9.obs,
          vipLevel: 'Lv.9'.obs,
          depositAmount: '800'.obs,
          betAmount: '1200'.obs,
          upgradeBonus: '300'.obs,
          weeklyCashback: '300'.obs),
      VipRequirementRowModel(
          vipIcon: ImageConstant.imgIconvip10.obs,
          vipLevel: 'Lv.10'.obs,
          depositAmount: '800'.obs,
          betAmount: '1200'.obs,
          upgradeBonus: '300'.obs,
          weeklyCashback: '300'.obs),
    ];
  }

  void onReceiveBonus(VipBonusItemModel bonusItem) {
    int index = vipBonusItems.indexWhere(
        (item) => item.vipLevel!.value == bonusItem.vipLevel!.value);
    if (index != -1) {
      vipBonusItems[index].isReceived?.value = true;
      vipBonusItems[index].status?.value = 'Received';
      vipBonusItems[index].receivedDate?.value =
          DateTime.now().toString().substring(0, 19);
      vipBonusItems.refresh();
    }
  }
}
