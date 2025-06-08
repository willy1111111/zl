import '../../../core/app_export.dart';
import '../models/experience_bonus_game_model.dart';
import '../models/game_tile_model.dart';

class ExperienceBonusGameController extends GetxController {
  Rx<ExperienceBonusGameModel> experienceBonusGameModel =
      ExperienceBonusGameModel().obs;
  RxList<GameTileModel> gameTiles = <GameTileModel>[].obs;
  RxBool isGameStarted = false.obs;
  RxInt selectedTileIndex = (-1).obs;

  @override
  void onInit() {
    super.onInit();
    experienceBonusGameModel.value = ExperienceBonusGameModel();
    _initializeGameTiles();
  }

  void _initializeGameTiles() {
    gameTiles.value = [
      GameTileModel(
        imagePathOne: ImageConstant.imgImage1277.obs,
        tileText: 'goodluck'.obs,
        isGreenBackground: true.obs,
        isOrangeBackground: false.obs,
      ),
      GameTileModel(
        imagePathOne: ImageConstant.imgImage1278.obs,
        tileText: '₱18'.obs,
        isGreenBackground: true.obs,
        isOrangeBackground: false.obs,
      ),
      GameTileModel(
        imagePathOne: ImageConstant.imgImage1277.obs,
        tileText: 'goodluck'.obs,
        isGreenBackground: false.obs,
        isOrangeBackground: true.obs,
      ),
      GameTileModel(
        imagePathOne: ImageConstant.imgImage1278.obs,
        tileText: '₱18'.obs,
        isGreenBackground: true.obs,
        isOrangeBackground: false.obs,
      ),
      GameTileModel(
        imagePathOne: ImageConstant.imgImage1278.obs,
        tileText: '₱18'.obs,
        isGreenBackground: true.obs,
        isOrangeBackground: false.obs,
      ),
      GameTileModel(
        imagePathOne: ImageConstant.imgImage1277.obs,
        tileText: 'goodluck'.obs,
        isGreenBackground: true.obs,
        isOrangeBackground: false.obs,
      ),
      GameTileModel(
        imagePathOne: ImageConstant.imgImage1278.obs,
        tileText: '₱18'.obs,
        isGreenBackground: true.obs,
        isOrangeBackground: false.obs,
      ),
      GameTileModel(
        imagePathOne: ImageConstant.imgImage1278.obs,
        tileText: '₱18'.obs,
        isGreenBackground: true.obs,
        isOrangeBackground: false.obs,
      ),
    ];
  }

  void onGameTileTap(int index) {
    if (isGameStarted.value) {
      selectedTileIndex.value = index;
      // Handle game tile selection logic
    }
  }

  void onGoButtonTap() {
    isGameStarted.value = true;
    // Start game animation and logic
    _animateGameTiles();
  }

  void _animateGameTiles() {
    // Simulate game animation logic
    for (int i = 0; i < gameTiles.length; i++) {
      Future.delayed(Duration(milliseconds: i * 100), () {
        // Add animation logic here
        update(['game-tile-$i']);
      });
    }
  }

  @override
  void onClose() {
    super.onClose();
  }
}
