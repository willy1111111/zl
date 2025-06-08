import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/experience_bonus_game_screen_two_model.dart';
import '../models/game_item_model.dart';

class ExperienceBonusGameScreenTwoController extends GetxController {
  Rx<ExperienceBonusGameScreenTwoModel> experienceBonusGameScreenTwoModelObj =
      ExperienceBonusGameScreenTwoModel().obs;

  RxList<GameItemModel> gameItems = <GameItemModel>[].obs;
  RxBool isGameStarted = false.obs;
  RxInt selectedTileIndex = (-1).obs;

  @override
  void onInit() {
    super.onInit();
    _initializeGameItems();
  }

  void _initializeGameItems() {
    gameItems.value = [
      // Row 1
      GameItemModel(
          imagePath: ImageConstant.imgImage1277.obs,
          text: 'goodluck'.obs,
          backgroundColor: Color(0xFF16A085).obs,
          textColor: Color(0xFFFDC609).obs,
          isRevealed: false.obs),
      GameItemModel(
          imagePath: ImageConstant.imgImage1278.obs,
          text: '₱18'.obs,
          backgroundColor: Color(0xFF16A085).obs,
          textColor: Color(0xFFFDC609).obs,
          isRevealed: false.obs),
      GameItemModel(
          imagePath: ImageConstant.imgImage1277.obs,
          text: 'goodluck'.obs,
          backgroundColor: Color(0xFFE67E22).obs,
          textColor: Color(0xFFFFFFFF).obs,
          isRevealed: false.obs),
      // Row 2 (left and right)
      GameItemModel(
          imagePath: ImageConstant.imgImage1278.obs,
          text: '₱18'.obs,
          backgroundColor: Color(0xFF16A085).obs,
          textColor: Color(0xFFFDC609).obs,
          isRevealed: false.obs),
      GameItemModel(
          imagePath: ImageConstant.imgImage1278.obs,
          text: '₱18'.obs,
          backgroundColor: Color(0xFF16A085).obs,
          textColor: Color(0xFFFDC609).obs,
          isRevealed: false.obs),
      // Row 3
      GameItemModel(
          imagePath: ImageConstant.imgImage1277.obs,
          text: 'goodluck'.obs,
          backgroundColor: Color(0xFF16A085).obs,
          textColor: Color(0xFFFDC609).obs,
          isRevealed: false.obs),
      GameItemModel(
          imagePath: ImageConstant.imgImage1278.obs,
          text: '₱18'.obs,
          backgroundColor: Color(0xFF16A085).obs,
          textColor: Color(0xFFFDC609).obs,
          isRevealed: false.obs),
      GameItemModel(
          imagePath: ImageConstant.imgImage1278.obs,
          text: '₱18'.obs,
          backgroundColor: Color(0xFF16A085).obs,
          textColor: Color(0xFFFDC609).obs,
          isRevealed: false.obs),
    ];
  }

  void onTileTap(int index) {
    if (isGameStarted.value && !gameItems[index].isRevealed!.value) {
      gameItems[index].isRevealed!.value = true;
      selectedTileIndex.value = index;

      // Add game logic here
      print('Tile $index tapped');
    }
  }

  void onStartGame() {
    isGameStarted.value = true;
    selectedTileIndex.value = -1;

    // Reset all tiles
    for (var item in gameItems) {
      item.isRevealed!.value = false;
    }

    print('Game started!');
  }

  void resetGame() {
    isGameStarted.value = false;
    selectedTileIndex.value = -1;

    for (var item in gameItems) {
      item.isRevealed!.value = false;
    }
  }
}
