import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/game_card_model.dart';
import '../models/jetbet_gaming_hub_model.dart';
import '../models/promotional_card_model.dart';
import '../models/sidebar_category_model.dart';

class JetbetGamingHubController extends GetxController {
  RxList<GameCardModel> gameCards = <GameCardModel>[].obs;
  RxList<SidebarCategoryModel> sidebarCategories = <SidebarCategoryModel>[].obs;
  RxList<PromotionalCardModel> promotionalCards = <PromotionalCardModel>[].obs;
  Rx<JetbetGamingHubModel> jetbetGamingHubModel = JetbetGamingHubModel().obs;
  RxInt selectedCategoryIndex = 0.obs;
  RxString currentBalance = '₱1980.00'.obs;

  @override
  void onInit() {
    super.onInit();
    initializeData();
  }

  void initializeData() {
    gameCards.value = [
      GameCardModel(
        gameImage: ImageConstant.img231000.obs,
        overlayIcon: ImageConstant.imgGroup1019.obs,
        title: 'Fortune Ox fortune'.obs,
        isRounded: true.obs,
      ),
      GameCardModel(
        gameImage: ImageConstant.img491000.obs,
        title: 'super Ace'.obs,
        isRounded: true.obs,
      ),
      GameCardModel(
        gameImage: ImageConstant.imgLogowj931.obs,
        title: 'Money Coming'.obs,
        backgroundColor: Color(0xFF30353A).obs,
        isRounded: true.obs,
      ),
      GameCardModel(
        gameImage: ImageConstant.img102x1000.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        overlayImage: ImageConstant.img1baccarat1.obs,
        title: 'Roma x'.obs,
        isRounded: true.obs,
      ),
      GameCardModel(
        gameImage: ImageConstant.img211000.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        overlayImage: ImageConstant.imgBaccarat2.obs,
        title: 'diamond party'.obs,
        isRounded: true.obs,
      ),
      GameCardModel(
        gameImage: ImageConstant.img911000.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        overlayImage: ImageConstant.imgBaccarat1.obs,
        title: 'lucky coming'.obs,
        isRounded: true.obs,
      ),
      GameCardModel(
        gameImage: ImageConstant.img277771000.obs,
        overlayIcon: ImageConstant.imgGroup1029.obs,
        title: 'Roma x'.obs,
        isRounded: true.obs,
      ),
      GameCardModel(
        gameImage: ImageConstant.img431000.obs,
        overlayIcon: ImageConstant.imgGroup1029.obs,
        title: 'diamond party'.obs,
        isRounded: true.obs,
      ),
      GameCardModel(
        gameImage: ImageConstant.img441000.obs,
        overlayIcon: ImageConstant.imgGroup1029.obs,
        title: 'lucky coming'.obs,
        isRounded: true.obs,
      ),
      GameCardModel(
        gameImage: ImageConstant.img471000.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        title: 'Roma x'.obs,
        isRounded: true.obs,
      ),
      GameCardModel(
        gameImage: ImageConstant.img461000.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        title: 'diamond party'.obs,
        isRounded: true.obs,
      ),
      GameCardModel(
        gameImage: ImageConstant.imgJdbslot092.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
        isRounded: true.obs,
      ),
    ];

    sidebarCategories.value = [
      SidebarCategoryModel(
        icon: ImageConstant.imgVectorDeepOrangeA400.obs,
        title: 'Hot'.obs,
        isSelected: true.obs,
        backgroundColor: Color(0xFFFFC61E).obs,
        textColor: Color(0xFF232B32).obs,
      ),
      SidebarCategoryModel(
        icon: ImageConstant.img10733643587.obs,
        title: 'Slot'.obs,
        isSelected: false.obs,
        backgroundColor: Color(0xFF363C41).obs,
        textColor: Color(0xFF808994).obs,
      ),
      SidebarCategoryModel(
        icon: ImageConstant.img136x36.obs,
        title: 'Live'.obs,
        isSelected: false.obs,
        backgroundColor: Color(0xFF363C41).obs,
        textColor: Color(0xFF808994).obs,
      ),
      SidebarCategoryModel(
        icon: ImageConstant.img5.obs,
        title: 'Bingo'.obs,
        isSelected: false.obs,
        backgroundColor: Color(0xFF363C41).obs,
        textColor: Color(0xFF808994).obs,
      ),
      SidebarCategoryModel(
        icon: ImageConstant.img236x36.obs,
        title: 'Table'.obs,
        isSelected: false.obs,
        backgroundColor: Color(0xFF363C41).obs,
        textColor: Color(0xFF808994).obs,
      ),
      SidebarCategoryModel(
        icon: ImageConstant.img7.obs,
        title: 'Fish'.obs,
        isSelected: false.obs,
        backgroundColor: Color(0xFF363C41).obs,
        textColor: Color(0xFF808994).obs,
      ),
      SidebarCategoryModel(
        icon: ImageConstant.img336x36.obs,
        title: 'Egame'.obs,
        isSelected: false.obs,
        backgroundColor: Color(0xFF363C41).obs,
        textColor: Color(0xFF808994).obs,
      ),
      SidebarCategoryModel(
        icon: ImageConstant.img6.obs,
        title: 'Sport'.obs,
        isSelected: false.obs,
        backgroundColor: Color(0xFF363C41).obs,
        textColor: Color(0xFF808994).obs,
      ),
    ];

    promotionalCards.value = [
      PromotionalCardModel(
        backgroundImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12001.obs,
        overlayImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12002.obs,
        contentImage: ImageConstant.img233312.obs,
        rainEffectImage: ImageConstant.img1moneyrain2.obs,
        buttonImage: ImageConstant.img16.obs,
        buttonText: 'In Progress'.obs,
        showBadge: false.obs,
      ),
      PromotionalCardModel(
        backgroundImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12001.obs,
        overlayImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12002.obs,
        contentImage: ImageConstant.img23331.obs,
        rainEffectImage: ImageConstant.img1moneyrain.obs,
        buttonImage: ImageConstant.img16.obs,
        buttonText: 'Receive'.obs,
        badgeCount: 6.obs,
        showBadge: true.obs,
        timerText: '20Day 23:12'.obs,
      ),
      PromotionalCardModel(
        backgroundImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12001.obs,
        overlayImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12002.obs,
        contentImage: ImageConstant.img2333199x91.obs,
        rainEffectImage: ImageConstant.img1moneyrain22x118.obs,
        buttonImage: ImageConstant.img1630x96.obs,
        buttonText: 'Details'.obs,
        showBadge: false.obs,
      ),
      PromotionalCardModel(
        backgroundImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12001.obs,
        overlayImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12002.obs,
        contentImage: ImageConstant.img233311.obs,
        rainEffectImage: ImageConstant.img1moneyrain1.obs,
        buttonImage: ImageConstant.img16.obs,
        buttonText: 'Receive'.obs,
        badgeCount: 2.obs,
        showBadge: true.obs,
      ),
      PromotionalCardModel(
        backgroundImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12001.obs,
        overlayImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12002.obs,
        contentImage: ImageConstant.img233313.obs,
        rainEffectImage: ImageConstant.img1moneyrain3.obs,
        buttonImage: ImageConstant.img1630x96.obs,
        buttonText: 'Details'.obs,
        showBadge: false.obs,
      ),
    ];
  }

  void onDownloadTap() {
    Get.snackbar('Download', 'Starting app download...');
  }

  void onCloseTap() {
    Get.snackbar('Close', 'Promotional banner closed');
  }

  void onRefreshBalance() {
    Get.snackbar('Refresh', 'Balance refreshed');
  }

  void onCategoryTap(int index) {
    selectedCategoryIndex.value = index;
    for (int i = 0; i < sidebarCategories.length; i++) {
      sidebarCategories[i].isSelected?.value = i == index;
    }
    Get.snackbar(
        'Category', 'Selected: ${sidebarCategories[index].title?.value ?? ''}');
  }

  void onGameCardTap(int index) {
    String gameName = gameCards[index].title?.value ?? '';
    Get.snackbar('Game', 'Starting game: $gameName');
  }

  void onPromotionalCardTap(int index) {
    if (index < promotionalCards.length) {
      String action = promotionalCards[index].buttonText?.value ?? '';
      Get.snackbar('Promotional Card', 'Action: $action');
    }
  }
}
