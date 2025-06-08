import 'dart:async';

import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_sidebar.dart';
import '../../../widgets/custom_winner_list.dart';
import '../models/ticket_claim_info_model.dart';

class TicketClaimInfoController extends GetxController {
  final showEventDialog = true.obs;
  final selectedSidebarIndex = 1.obs;
  final hours = '01'.obs;
  final minutes = '21'.obs;
  final seconds = '06'.obs;

  RxList<TicketClaimInfoGameItemModel> gameItems =
      <TicketClaimInfoGameItemModel>[].obs;
  RxList<CustomSidebarItem> sidebarItems = <CustomSidebarItem>[].obs;
  RxList<CustomWinnerItem> winnerItems = <CustomWinnerItem>[].obs;

  Timer? countdownTimer;

  @override
  void onInit() {
    super.onInit();
    _initializeGameItems();
    _initializeSidebarItems();
    _initializeWinnerItems();
    _startCountdown();
  }

  @override
  void onClose() {
    countdownTimer?.cancel();
    super.onClose();
  }

  void _initializeGameItems() {
    gameItems.value = [
      TicketClaimInfoGameItemModel(
        gameImagePath: ImageConstant.img231000.obs,
        overlayImagePath: ImageConstant.imgGroup1019.obs,
        title: 'Fortune Ox fortune'.obs,
        gameType: GameType.basic.obs,
      ),
      TicketClaimInfoGameItemModel(
        gameImagePath: ImageConstant.img491000.obs,
        overlayImagePath: ImageConstant.imgGroup1019.obs,
        specialEffectImagePath: ImageConstant.imgGroup120461.obs,
        title: 'super Ace'.obs,
        gameType: GameType.withSpecialEffect.obs,
      ),
      TicketClaimInfoGameItemModel(
        gameImagePath: ImageConstant.imgLogowj931.obs,
        overlayImagePath: ImageConstant.imgGroup1019.obs,
        title: 'Money Coming'.obs,
        gameType: GameType.logoStyle.obs,
        backgroundColor: Color(0xFF30353A).obs,
      ),
      TicketClaimInfoGameItemModel(
        gameImagePath: ImageConstant.img102x1000.obs,
        baccaratImagePath: ImageConstant.img1baccarat1.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        title: 'Roma x'.obs,
        gameType: GameType.withBaccarat.obs,
      ),
      TicketClaimInfoGameItemModel(
        gameImagePath: ImageConstant.img211000.obs,
        baccaratImagePath: ImageConstant.imgBaccarat2.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        title: 'diamond party'.obs,
        gameType: GameType.withBaccarat.obs,
      ),
      TicketClaimInfoGameItemModel(
        gameImagePath: ImageConstant.img911000.obs,
        baccaratImagePath: ImageConstant.imgBaccarat1.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
        gameType: GameType.withBadge.obs,
        badgeCount: 1.obs,
      ),
      TicketClaimInfoGameItemModel(
        gameImagePath: ImageConstant.img277771000.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        title: 'Roma x'.obs,
        gameType: GameType.basic.obs,
      ),
      TicketClaimInfoGameItemModel(
        gameImagePath: ImageConstant.img431000.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        title: 'diamond party'.obs,
        gameType: GameType.basic.obs,
      ),
      TicketClaimInfoGameItemModel(
        gameImagePath: ImageConstant.img441000.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        title: 'lucky coming'.obs,
        gameType: GameType.withProgressBar.obs,
      ),
      TicketClaimInfoGameItemModel(
        gameImagePath: ImageConstant.img471000.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        title: 'Roma x'.obs,
        gameType: GameType.basic.obs,
      ),
      TicketClaimInfoGameItemModel(
        gameImagePath: ImageConstant.img461000.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        title: 'diamond party'.obs,
        gameType: GameType.withRedDot.obs,
      ),
      TicketClaimInfoGameItemModel(
        gameImagePath: ImageConstant.imgJdbslot092.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
        gameType: GameType.basic.obs,
      ),
    ];
  }

  void _initializeSidebarItems() {
    sidebarItems.value = [
      CustomSidebarItem(
        iconPath: ImageConstant.imgVectorDeepOrangeA400,
        label: 'Hot',
        routeName: '/hot',
      ),
      CustomSidebarItem(
        iconPath: ImageConstant.img132x32,
        label: 'Collect',
        routeName: '/collect',
        isHighlighted: true,
      ),
      CustomSidebarItem(
        iconPath: ImageConstant.img10733643587,
        label: 'Slot',
        routeName: '/slot',
      ),
      CustomSidebarItem(
        iconPath: ImageConstant.img103,
        label: 'Live',
        routeName: '/live',
      ),
      CustomSidebarItem(
        iconPath: ImageConstant.img5,
        label: 'Bingo',
        routeName: '/bingo',
      ),
      CustomSidebarItem(
        iconPath: ImageConstant.img2,
        label: 'Table',
        routeName: '/table',
      ),
      CustomSidebarItem(
        iconPath: ImageConstant.img7,
        label: 'Fish',
        routeName: '/fish',
      ),
      CustomSidebarItem(
        iconPath: ImageConstant.img3,
        label: 'Egame',
        routeName: '/egame',
      ),
      CustomSidebarItem(
        iconPath: ImageConstant.img6,
        label: 'Sport',
        routeName: '/sport',
      ),
    ];
  }

  void _initializeWinnerItems() {
    winnerItems.value = [
      CustomWinnerItem(
        avatarPath: ImageConstant.imgEllipse539,
        username: '123***123',
        bonusAmount: '₱ 1,000,000,000.00',
      ),
      CustomWinnerItem(
        avatarPath: ImageConstant.imgEllipse53920x20,
        username: '123***123',
        bonusAmount: '₱ 1,000,000,000.00',
      ),
      CustomWinnerItem(
        avatarPath: ImageConstant.imgEllipse5391,
        username: '124***123',
        bonusAmount: '₱ 1,000,000,000.00',
      ),
    ];
  }

  void _startCountdown() {
    int totalSeconds = (1 * 3600) + (21 * 60) + 6;

    countdownTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (totalSeconds <= 0) {
        timer.cancel();
        hours.value = '00';
        minutes.value = '00';
        seconds.value = '00';
        return;
      }

      totalSeconds--;

      int h = totalSeconds ~/ 3600;
      int m = (totalSeconds % 3600) ~/ 60;
      int s = totalSeconds % 60;

      hours.value = h.toString().padLeft(2, '0');
      minutes.value = m.toString().padLeft(2, '0');
      seconds.value = s.toString().padLeft(2, '0');
    });
  }

  void onDownloadPressed() {
    // Handle download action
  }

  void onClosePressed() {
    // Handle close action
  }

  void onBalanceActionTap() {
    // Handle balance action
  }

  void onWithdrawalPressed() {
    // Handle withdrawal
  }

  void onDepositPressed() {
    // Handle deposit
  }

  void onSidebarItemTap(int index) {
    selectedSidebarIndex.value = index;
    // Handle sidebar navigation
  }

  void onGameItemTap(int index) {
    // Handle game item tap
  }

  void closeEventDialog() {
    showEventDialog.value = false;
  }

  void onClaimPressed() {
    // Handle claim action
  }
}
