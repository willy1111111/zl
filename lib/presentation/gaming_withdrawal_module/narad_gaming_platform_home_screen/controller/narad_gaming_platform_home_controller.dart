import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_bottom_nav_bar.dart';
import '../models/game_card_model.dart';
import '../models/game_modal_model.dart';
import '../models/narad_gaming_platform_home_model.dart';
import '../models/side_navigation_item_model.dart';

class NaradGamingPlatformHomeController extends GetxController {
  Rx<NaradGamingPlatformHomeModel> naradGamingPlatformHomeModelObj =
      NaradGamingPlatformHomeModel().obs;

  // Observable variables
  Rx<String>? userBalance = '₱1980.00'.obs;
  Rx<String>? jackpotAmount = '14,091,688.88'.obs;
  Rx<bool>? showModals = true.obs;
  Rx<int>? selectedBottomNavIndex = 0.obs;

  // Modal data
  Rx<GameModalModel>? signInModal = GameModalModel().obs;
  Rx<GameModalModel>? giftCodeModal = GameModalModel().obs;
  Rx<GameModalModel>? vipClubModal = GameModalModel().obs;
  Rx<GameModalModel>? moneyRainModal = GameModalModel().obs;
  Rx<GameModalModel>? noticeModal1 = GameModalModel().obs;
  Rx<GameModalModel>? noticeModal2 = GameModalModel().obs;
  Rx<GameModalModel>? noticeModal3 = GameModalModel().obs;

  // Lists
  RxList<GameCardModel> gameCards = <GameCardModel>[].obs;
  RxList<SideNavigationItemModel> sideNavigationItems =
      <SideNavigationItemModel>[].obs;
  List<CustomBottomNavItem> bottomNavItems = [];

  @override
  void onInit() {
    super.onInit();
    _initializeGameCards();
    _initializeSideNavigation();
    _initializeBottomNavigation();
    _initializeModals();
  }

  void _initializeGameCards() {
    gameCards.value = [
      // Row 1
      GameCardModel(
          gameImage: ImageConstant.img231000.obs,
          overlayIcon: ImageConstant.imgGroup1019.obs,
          title: 'Fortune Ox fortune'.obs,
          isRounded: true.obs),
      GameCardModel(
          gameImage: ImageConstant.img491000.obs,
          title: 'super Ace'.obs,
          isRounded: true.obs),
      GameCardModel(
          gameImage: ImageConstant.imgLogowj931.obs,
          title: 'Money Coming'.obs,
          backgroundColor: Color(0xFF30353A).obs,
          isRounded: true.obs),

      // Row 2
      GameCardModel(
          gameImage: ImageConstant.img102x1000.obs,
          overlayImage: ImageConstant.img1baccarat1.obs,
          overlayIcon: ImageConstant.imgGroup1024.obs,
          title: 'Roma x'.obs,
          isRounded: true.obs),
      GameCardModel(
          gameImage: ImageConstant.img211000.obs,
          overlayImage: ImageConstant.imgBaccarat2.obs,
          overlayIcon: ImageConstant.imgGroup1024.obs,
          title: 'diamond party'.obs,
          isRounded: true.obs),
      GameCardModel(
          gameImage: ImageConstant.img911000.obs,
          overlayImage: ImageConstant.imgBaccarat1.obs,
          overlayIcon: ImageConstant.imgGroup1024.obs,
          title: 'lucky coming'.obs,
          isRounded: true.obs),

      // Row 3
      GameCardModel(
          gameImage: ImageConstant.img277771000.obs,
          overlayIcon: ImageConstant.imgGroup1029.obs,
          title: 'Roma x'.obs,
          isRounded: true.obs),
      GameCardModel(
          gameImage: ImageConstant.img431000.obs,
          overlayIcon: ImageConstant.imgGroup1029.obs,
          title: 'diamond party'.obs,
          isRounded: true.obs),
      GameCardModel(
          gameImage: ImageConstant.img441000.obs,
          overlayIcon: ImageConstant.imgGroup1029.obs,
          title: 'lucky coming'.obs,
          isRounded: true.obs),

      // Row 4
      GameCardModel(
          gameImage: ImageConstant.img471000.obs,
          overlayIcon: ImageConstant.imgGroup1024.obs,
          title: 'Roma x'.obs,
          isRounded: true.obs),
      GameCardModel(
          gameImage: ImageConstant.img461000.obs,
          overlayIcon: ImageConstant.imgGroup1024.obs,
          title: 'diamond party'.obs,
          isRounded: true.obs),
      GameCardModel(
          gameImage: ImageConstant.imgJdbslot092.obs,
          overlayIcon: ImageConstant.imgGroup1024.obs,
          title: 'lucky coming'.obs,
          isRounded: true.obs),
    ];
  }

  void _initializeSideNavigation() {
    sideNavigationItems.value = [
      SideNavigationItemModel(
          icon: ImageConstant.img10733643587.obs,
          title: 'Slot'.obs,
          isSelected: false.obs),
      SideNavigationItemModel(
          icon: ImageConstant.img136x36.obs,
          title: 'Live'.obs,
          isSelected: false.obs),
      SideNavigationItemModel(
          icon: ImageConstant.img5.obs,
          title: 'Bingo'.obs,
          isSelected: false.obs),
      SideNavigationItemModel(
          icon: ImageConstant.img236x36.obs,
          title: 'Table'.obs,
          isSelected: false.obs),
      SideNavigationItemModel(
          icon: ImageConstant.img7.obs,
          title: 'Fish'.obs,
          isSelected: false.obs),
      SideNavigationItemModel(
          icon: ImageConstant.img336x36.obs,
          title: 'Egame'.obs,
          isSelected: false.obs),
      SideNavigationItemModel(
          icon: ImageConstant.img6.obs,
          title: 'Sport'.obs,
          isSelected: false.obs),
    ];
  }

  void _initializeBottomNavigation() {
    bottomNavItems = [
      CustomBottomNavItem(
          title: 'Home',
          routeName: AppRoutes.naradGamingPlatformHomeScreen,
          icon: ImageConstant.imgVectorLightGreenA70001),
      CustomBottomNavItem(
          title: 'Promotion',
          routeName: '/promotion',
          icon: ImageConstant.img1BlueGray40020x20),
      CustomBottomNavItem(
          title: 'Invite',
          routeName: '/invite',
          elevatedIcon: ImageConstant.imgInvite1),
      CustomBottomNavItem(
          title: 'Deposit',
          routeName: '/deposit',
          icon: ImageConstant.img1BlueGray40020x19),
      CustomBottomNavItem(
          title: 'Teams',
          routeName: '/teams',
          icon: ImageConstant.img1BlueGray400),
    ];
  }

  void _initializeModals() {
    signInModal!.value = GameModalModel(
        backgroundImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12001.obs,
        overlayImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12002.obs,
        contentImage: ImageConstant.img23331.obs,
        badgeCount: 6.obs,
        showBadge: true.obs,
        timerText: '20Day 23:12'.obs,
        buttonText: 'Receive'.obs,
        vectorImage: ImageConstant.imgVector1.obs,
        starImage: ImageConstant.imgYellow70001.obs,
        moneyRainImage: ImageConstant.img1moneyrain.obs,
        buttonBackgroundImage: ImageConstant.img16.obs);

    giftCodeModal!.value = GameModalModel(
        backgroundImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12001.obs,
        overlayImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12002.obs,
        contentImage: ImageConstant.img2333199x91.obs,
        showBadge: false.obs,
        buttonText: 'Details'.obs,
        moneyRainImage: ImageConstant.img1moneyrain22x118.obs,
        buttonBackgroundImage: ImageConstant.img1630x96.obs);

    vipClubModal!.value = GameModalModel(
        backgroundImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12001.obs,
        overlayImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12002.obs,
        contentImage: ImageConstant.img233311.obs,
        badgeCount: 2.obs,
        showBadge: true.obs,
        buttonText: 'Receive'.obs,
        moneyRainImage: ImageConstant.img1moneyrain1.obs,
        buttonBackgroundImage: ImageConstant.img16.obs);

    moneyRainModal!.value = GameModalModel(
        backgroundImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12001.obs,
        overlayImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12002.obs,
        contentImage: ImageConstant.img233312.obs,
        showBadge: false.obs,
        buttonText: '23:00 Start'.obs,
        moneyRainImage: ImageConstant.img1moneyrain2.obs,
        buttonBackgroundImage: ImageConstant.img1630x96.obs);

    noticeModal1!.value = GameModalModel(
        backgroundImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12001.obs,
        overlayImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12002.obs,
        contentImage: ImageConstant.img233313.obs,
        showBadge: false.obs,
        buttonText: 'Details'.obs,
        moneyRainImage: ImageConstant.img1moneyrain3.obs,
        buttonBackgroundImage: ImageConstant.img1630x96.obs);

    noticeModal2!.value = GameModalModel(
        backgroundImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12001.obs,
        overlayImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12002.obs,
        contentImage: ImageConstant.img233313.obs,
        showBadge: false.obs,
        buttonText: 'Details'.obs,
        moneyRainImage: ImageConstant.img1moneyrain3.obs,
        buttonBackgroundImage: ImageConstant.img1630x96.obs);

    noticeModal3!.value = GameModalModel(
        backgroundImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12001.obs,
        overlayImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12002.obs,
        contentImage: ImageConstant.img233313.obs,
        showBadge: false.obs,
        buttonText: 'Details'.obs,
        moneyRainImage: ImageConstant.img1moneyrain3.obs,
        buttonBackgroundImage: ImageConstant.img1630x96.obs);
  }

  // Action methods
  void onDownloadTap() {
    // Handle download action
  }

  void onCloseTap() {
    // Handle close promotional banner
  }

  void onRefreshBalance() {
    // Refresh user balance
  }

  void onWithdrawalTap() {
    // Navigate to withdrawal screen
  }

  void onDepositTap() {
    // Navigate to deposit screen
  }

  void onMainBannerTap() {
    // Handle main banner tap
  }

  void onCollectTap() {
    // Handle collect action
  }

  void onHotTap() {
    // Handle hot games
  }

  void onSideNavigationTap(int index) {
    // Update selected side navigation
    for (int i = 0; i < sideNavigationItems.length; i++) {
      sideNavigationItems[i].isSelected!.value = i == index;
    }

    // Handle navigation based on index
    switch (index) {
      case 0: // Slot
        break;
      case 1: // Live
        break;
      case 2: // Bingo
        break;
      case 3: // Table
        break;
      case 4: // Fish
        break;
      case 5: // Egame
        break;
      case 6: // Sport
        break;
    }
  }

  void onGameCardTap(int index) {
    // Handle game card tap
  }

  void onModalTap(String modalType) {
    switch (modalType) {
      case 'signin':
        // Handle sign-in modal action
        break;
      case 'giftcode':
        // Handle gift code modal action
        break;
      case 'vipclub':
        // Handle VIP club modal action
        break;
      case 'moneyrain':
        // Handle money rain modal action
        break;
      case 'notice1':
      case 'notice2':
      case 'notice3':
        // Handle notice modal action
        break;
    }
  }

  void onBottomNavChanged(int index) {
    selectedBottomNavIndex!.value = index;

    switch (index) {
      case 0: // Home
        break;
      case 1: // Promotion
        break;
      case 2: // Invite
        break;
      case 3: // Deposit
        break;
      case 4: // Teams
        break;
    }
  }
}
