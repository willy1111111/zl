import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/game_grid_item_model.dart';
import '../models/gaming_category_item_model.dart';
import '../models/jeetbaji_gaming_home_model.dart';

class JeetbajiGamingHomeController extends GetxController {
  Rx<JeetbajiGamingHomeModel> jeetbajiGamingHomeModelObj =
      JeetbajiGamingHomeModel().obs;

  RxList<GamingCategoryItemModel> gamingCategories =
      <GamingCategoryItemModel>[].obs;
  RxList<GameGridItemModel> gameItems = <GameGridItemModel>[].obs;
  RxInt selectedCategoryIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    initializeData();
  }

  void initializeData() {
    gamingCategories.value = [
      GamingCategoryItemModel(
        icon: '🔥'.obs,
        label: 'Hot'.obs,
        isSelected: true.obs,
      ),
      GamingCategoryItemModel(
        icon: '🎰'.obs,
        label: 'Slot'.obs,
        isSelected: false.obs,
      ),
      GamingCategoryItemModel(
        icon: '🎮'.obs,
        label: 'Live'.obs,
        isSelected: false.obs,
      ),
      GamingCategoryItemModel(
        icon: '🎲'.obs,
        label: 'Bingo'.obs,
        isSelected: false.obs,
      ),
      GamingCategoryItemModel(
        icon: '♠️'.obs,
        label: 'Table'.obs,
        isSelected: false.obs,
      ),
      GamingCategoryItemModel(
        icon: '🐟'.obs,
        label: 'Fish'.obs,
        isSelected: false.obs,
      ),
      GamingCategoryItemModel(
        icon: '🎯'.obs,
        label: 'Egame'.obs,
        isSelected: false.obs,
      ),
    ];

    gameItems.value = [
      GameGridItemModel(
        title: 'Fortune Ox...'.obs,
        subtitle: '777'.obs,
        badge: 'HOT'.obs,
        gradientColors: Rx<List<Color>>([Color(0xFFD32F2F), Color(0xFF8E24AA)]),
        badgeColor: Color(0xFFFFC107).obs,
      ),
      GameGridItemModel(
        title: 'Super Ace'.obs,
        subtitle: 'Super Ace'.obs,
        badge: '⚡'.obs,
        gradientColors: Rx<List<Color>>([Color(0xFF16A085), Color(0xFF2E7D32)]),
        badgeColor: Color(0xFFFFC107).obs,
      ),
      GameGridItemModel(
        title: 'Money Com...'.obs,
        subtitle: ''.obs,
        badge: '💰'.obs,
        gradientColors: Rx<List<Color>>([Color(0xFF455A64), Color(0xFF263238)]),
        badgeColor: appTheme.whiteCustom.obs,
      ),
      GameGridItemModel(
        title: 'Cuvy Magician'.obs,
        subtitle: 'Top 7 Down'.obs,
        badge: '🎮'.obs,
        gradientColors: Rx<List<Color>>([Color(0xFF1976D2), Color(0xFF303F9F)]),
        badgeColor: appTheme.whiteCustom.obs,
      ),
      GameGridItemModel(
        title: 'Receive'.obs,
        subtitle: ''.obs,
        badge: 'SIGN-IN'.obs,
        gradientColors: Rx<List<Color>>([Color(0xFFFF7043), Color(0xFFD32F2F)]),
        badgeColor: Color(0xFFFFC107).obs,
      ),
      GameGridItemModel(
        title: 'Lucky'.obs,
        subtitle: ''.obs,
        badge: '🎁'.obs,
        gradientColors: Rx<List<Color>>([Color(0xFF7B1FA2), Color(0xFF512DA8)]),
        badgeColor: appTheme.whiteCustom.obs,
      ),
      GameGridItemModel(
        title: 'Roma X'.obs,
        subtitle: ''.obs,
        badge: 'HOT'.obs,
        gradientColors: Rx<List<Color>>([Color(0xFFD32F2F), Color(0xFF8E24AA)]),
        badgeColor: Color(0xFFFFC107).obs,
      ),
      GameGridItemModel(
        title: 'Diamond Pa...'.obs,
        subtitle: ''.obs,
        badge: 'HOT'.obs,
        gradientColors: Rx<List<Color>>([Color(0xFFFFC107), Color(0xFFFF7043)]),
        badgeColor: Color(0xFFFFC107).obs,
      ),
      GameGridItemModel(
        title: 'XIYANG YANG'.obs,
        subtitle: ''.obs,
        badge: 'Activity'.obs,
        gradientColors: Rx<List<Color>>([Color(0xFF16A085), Color(0xFF2E7D32)]),
        badgeColor: Color(0xFFFFC107).obs,
      ),
      GameGridItemModel(
        title: 'Pharaoh Treasure'.obs,
        subtitle: ''.obs,
        badge: '🏛️'.obs,
        gradientColors: Rx<List<Color>>([Color(0xFF1976D2), Color(0xFF303F9F)]),
        badgeColor: appTheme.whiteCustom.obs,
      ),
      GameGridItemModel(
        title: 'Dragon Treasure'.obs,
        subtitle: ''.obs,
        badge: '🔥'.obs,
        gradientColors: Rx<List<Color>>([Color(0xFFD32F2F), Color(0xFF8E24AA)]),
        badgeColor: Color(0xFFFFC107).obs,
      ),
      GameGridItemModel(
        title: 'CAISHEN COMING'.obs,
        subtitle: ''.obs,
        badge: '💰'.obs,
        gradientColors: Rx<List<Color>>([Color(0xFFFFC107), Color(0xFFFF7043)]),
        badgeColor: appTheme.whiteCustom.obs,
      ),
    ];
  }

  void onCategorySelected(int index) {
    selectedCategoryIndex.value = index;
    for (int i = 0; i < gamingCategories.length; i++) {
      gamingCategories[i].isSelected!.value = i == index;
    }
  }

  void onGameSelected(int index) {
    // Handle game selection
    print('Game selected: ${gameItems[index].title?.value}');
  }

  void onWithdrawalPressed() {
    // Handle withdrawal action
    print('Withdrawal pressed');
  }

  void onDepositPressed() {
    // Navigate to deposit screen
    Get.toNamed(AppRoutes.walletDepositScreen);
  }

  void onChatPressed() {
    // Handle chat action
    print('Chat pressed');
  }
}