import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/deposit_entry_model.dart';
import '../models/vip_card_model.dart';
import '../models/vip_daily_cumulative_deposit_benefits_detail_model.dart';

class VipDailyCumulativeDepositBenefitsDetailController extends GetxController {
  Rx<VipDailyCumulativeDepositBenefitsDetailModel>
      vipDailyCumulativeDepositBenefitsDetailModel =
      VipDailyCumulativeDepositBenefitsDetailModel().obs;

  RxList<VipCardModel> vipCards = <VipCardModel>[].obs;
  RxString currentVip = 'VIP1'.obs;
  RxString totalBetsToday = '₱150.50'.obs;
  RxString estimatedCashback = '₱2.90'.obs;
  RxString bonusFromYesterday = '₱4933.70'.obs;

  @override
  void onInit() {
    super.onInit();
    initializeVipCards();
  }

  void initializeVipCards() {
    vipCards.value = [
      // VIP0
      VipCardModel(
        vipLevel: 'VIP0'.obs,
        maxAmount: '₱10.00'.obs,
        backgroundImage: ImageConstant.imgImage244.obs,
        iconImage: ImageConstant.imgIconvip156x56.obs,
        depositEntries: [
          DepositEntryModel(deposit: '₱150'.obs, reward: '₱2.00'.obs),
          DepositEntryModel(deposit: '₱250'.obs, reward: '₱4.00'.obs),
          DepositEntryModel(deposit: '₱500'.obs, reward: '₱6.00'.obs),
        ].obs,
      ),
      // VIP1
      VipCardModel(
        vipLevel: 'VIP1'.obs,
        maxAmount: '₱20.00'.obs,
        backgroundImage: ImageConstant.imgImage246.obs,
        iconImage: ImageConstant.imgIconvip1.obs,
        depositEntries: [
          DepositEntryModel(deposit: '₱150'.obs, reward: '₱2.00'.obs),
          DepositEntryModel(deposit: '₱250'.obs, reward: '₱4.00'.obs),
          DepositEntryModel(deposit: '₱500'.obs, reward: '₱6.00'.obs),
        ].obs,
      ),
      // VIP2
      VipCardModel(
        vipLevel: 'VIP2'.obs,
        maxAmount: '₱30.00'.obs,
        backgroundImage: ImageConstant.imgImage247.obs,
        iconImage: ImageConstant.imgIconvip2.obs,
        depositEntries: [
          DepositEntryModel(deposit: '₱150'.obs, reward: '₱2.00'.obs),
          DepositEntryModel(deposit: '₱250'.obs, reward: '₱4.00'.obs),
          DepositEntryModel(deposit: '₱500'.obs, reward: '₱6.00'.obs),
          DepositEntryModel(deposit: '₱700'.obs, reward: '₱7.00'.obs),
          DepositEntryModel(deposit: '₱800'.obs, reward: '₱8.00'.obs),
        ].obs,
      ),
      // VIP3
      VipCardModel(
        vipLevel: 'VIP3'.obs,
        maxAmount: '₱35.00'.obs,
        backgroundImage: ImageConstant.imgImage248.obs,
        iconImage: ImageConstant.imgIconvip3.obs,
        depositEntries: [
          DepositEntryModel(deposit: '₱150'.obs, reward: '₱2.00'.obs),
          DepositEntryModel(deposit: '₱250'.obs, reward: '₱4.00'.obs),
          DepositEntryModel(deposit: '₱500'.obs, reward: '₱6.00'.obs),
        ].obs,
      ),
      // VIP4
      VipCardModel(
        vipLevel: 'VIP4'.obs,
        maxAmount: '₱40.00'.obs,
        backgroundImage: ImageConstant.imgImage244.obs,
        iconImage: ImageConstant.imgIconvip4.obs,
        depositEntries: [
          DepositEntryModel(deposit: '₱150'.obs, reward: '₱2.00'.obs),
          DepositEntryModel(deposit: '₱250'.obs, reward: '₱4.00'.obs),
          DepositEntryModel(deposit: '₱500'.obs, reward: '₱6.00'.obs),
        ].obs,
      ),
      // VIP5
      VipCardModel(
        vipLevel: 'VIP5'.obs,
        maxAmount: '₱50.00'.obs,
        backgroundImage: ImageConstant.imgImage246.obs,
        iconImage: ImageConstant.imgIconvip5.obs,
        depositEntries: [
          DepositEntryModel(deposit: '₱150'.obs, reward: '₱2.00'.obs),
          DepositEntryModel(deposit: '₱250'.obs, reward: '₱4.00'.obs),
          DepositEntryModel(deposit: '₱500'.obs, reward: '₱6.00'.obs),
          DepositEntryModel(deposit: '₱750'.obs, reward: '₱8.00'.obs),
          DepositEntryModel(deposit: '₱950'.obs, reward: '₱9.00'.obs),
        ].obs,
      ),
      // VIP6
      VipCardModel(
        vipLevel: 'VIP6'.obs,
        maxAmount: '₱60.00'.obs,
        backgroundImage: ImageConstant.imgImage247.obs,
        iconImage: ImageConstant.imgIconvip6.obs,
        hasSpecialIndicator: true.obs,
        specialIndicatorColor: Color(0xFFC028FF).obs,
        depositEntries: [
          DepositEntryModel(deposit: '₱150'.obs, reward: '₱2.00'.obs),
          DepositEntryModel(deposit: '₱250'.obs, reward: '₱4.00'.obs),
          DepositEntryModel(deposit: '₱500'.obs, reward: '₱6.00'.obs),
        ].obs,
      ),
      // VIP7
      VipCardModel(
        vipLevel: 'VIP7'.obs,
        maxAmount: '₱70.00'.obs,
        backgroundImage: ImageConstant.imgImage248.obs,
        iconImage: ImageConstant.imgIconvip7.obs,
        hasSpecialIndicator: true.obs,
        specialIndicatorColor: Color(0xFF7D5DF6).obs,
        depositEntries: [
          DepositEntryModel(deposit: '₱150'.obs, reward: '₱2.00'.obs),
          DepositEntryModel(deposit: '₱250'.obs, reward: '₱4.00'.obs),
          DepositEntryModel(deposit: '₱500'.obs, reward: '₱6.00'.obs),
          DepositEntryModel(deposit: '₱750'.obs, reward: '₱8.00'.obs),
          DepositEntryModel(deposit: '₱800'.obs, reward: '₱9.00'.obs),
        ].obs,
      ),
      // VIP8
      VipCardModel(
        vipLevel: 'VIP8'.obs,
        maxAmount: '₱80.00'.obs,
        backgroundImage: ImageConstant.imgImage244.obs,
        iconImage: ImageConstant.imgIconvip8.obs,
        hasSpecialIndicator: true.obs,
        specialIndicatorColor: Color(0xFFFBA524).obs,
        depositEntries: [
          DepositEntryModel(deposit: '₱150'.obs, reward: '₱2.00'.obs),
          DepositEntryModel(deposit: '₱250'.obs, reward: '₱4.00'.obs),
          DepositEntryModel(deposit: '₱500'.obs, reward: '₱6.00'.obs),
        ].obs,
      ),
      // VIP9
      VipCardModel(
        vipLevel: 'VIP9'.obs,
        maxAmount: '₱89.00'.obs,
        backgroundImage: ImageConstant.imgImage246.obs,
        iconImage: ImageConstant.imgIconvip11.obs,
        depositEntries: [
          DepositEntryModel(deposit: '₱150'.obs, reward: '₱2.00'.obs),
          DepositEntryModel(deposit: '₱250'.obs, reward: '₱4.00'.obs),
          DepositEntryModel(deposit: '₱500'.obs, reward: '₱6.00'.obs),
        ].obs,
      ),
      // VIP10
      VipCardModel(
        vipLevel: 'VIP10'.obs,
        maxAmount: '₱100.00'.obs,
        backgroundImage: ImageConstant.imgImage247.obs,
        iconImage: ImageConstant.imgIconvip10.obs,
        depositEntries: [
          DepositEntryModel(deposit: '₱150'.obs, reward: '₱2.00'.obs),
          DepositEntryModel(deposit: '₱250'.obs, reward: '₱4.00'.obs),
          DepositEntryModel(deposit: '₱500'.obs, reward: '₱6.00'.obs),
          DepositEntryModel(deposit: '₱600'.obs, reward: '₱8.00'.obs),
        ].obs,
      ),
    ];
  }

  void onDepositNowPressed() {
    // Handle deposit navigation
    print('Deposit Now button pressed');
  }

  void onReceiveBonusPressed() {
    // Handle receive bonus action
    print('Receive bonus button pressed');
  }
}
