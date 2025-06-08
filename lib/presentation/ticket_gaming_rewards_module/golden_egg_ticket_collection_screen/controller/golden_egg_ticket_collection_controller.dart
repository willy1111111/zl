import '../../../core/app_export.dart';
import '../models/golden_egg_ticket_collection_model.dart';

class GoldenEggTicketCollectionController extends GetxController {
  Rx<GoldenEggTicketCollectionModel> goldenEggTicketCollectionModelObj =
      GoldenEggTicketCollectionModel().obs;

  RxBool showEventOverlay = true.obs;
  RxString balance = '₱1980.00'.obs;
  RxInt selectedSidebarIndex = 1.obs;
  RxList<GameItemModel> gameItems = <GameItemModel>[].obs;
  RxList<GoldenEggModel> goldenEggs = <GoldenEggModel>[].obs;
  RxList<WinnerModel> winners = <WinnerModel>[].obs;
  RxString remainingTime = '02:01:21:06'.obs;
  RxDouble progressPercentage = 10.0.obs;

  @override
  void onInit() {
    super.onInit();
    _initializeGameItems();
    _initializeGoldenEggs();
    _initializeWinners();
  }

  void _initializeGameItems() {
    gameItems.value = [
      GameItemModel(
        gameImage:
            ImageConstant.img231000.obs, // Modified: Wrapped string with .obs
        overlayIcon: ImageConstant
            .imgGroup1019.obs, // Modified: Wrapped string with .obs
        title: 'Fortune Ox fortune'.obs, // Modified: Wrapped string with .obs
        hasSpecialEffect: false.obs, // Modified: Wrapped bool with .obs
        hasBadge: false.obs, // Modified: Wrapped bool with .obs
        hasProgressBar: false.obs, // Modified: Wrapped bool with .obs
      ),
      GameItemModel(
        gameImage:
            ImageConstant.img491000.obs, // Modified: Wrapped string with .obs
        overlayIcon: ImageConstant
            .imgGroup1019.obs, // Modified: Wrapped string with .obs
        title: 'super Ace'.obs, // Modified: Wrapped string with .obs
        hasSpecialEffect: true.obs, // Modified: Wrapped bool with .obs
        specialEffectImage: ImageConstant
            .imgGroup120461.obs, // Modified: Wrapped string with .obs
        hasBadge: false.obs, // Modified: Wrapped bool with .obs
        hasProgressBar: false.obs, // Modified: Wrapped bool with .obs
      ),
      GameItemModel(
        gameImage: ImageConstant
            .imgLogowj931.obs, // Modified: Wrapped string with .obs
        overlayIcon: ImageConstant
            .imgGroup1019.obs, // Modified: Wrapped string with .obs
        title: 'Money Coming'.obs, // Modified: Wrapped string with .obs
        hasSpecialEffect: false.obs, // Modified: Wrapped bool with .obs
        hasBadge: false.obs, // Modified: Wrapped bool with .obs
        hasProgressBar: false.obs, // Modified: Wrapped bool with .obs
        isPlaceholder: true.obs, // Modified: Wrapped bool with .obs
      ),
      GameItemModel(
        gameImage:
            ImageConstant.img102x1000.obs, // Modified: Wrapped string with .obs
        overlayIcon: ImageConstant
            .imgGroup1024.obs, // Modified: Wrapped string with .obs
        overlayImage: ImageConstant
            .img1baccarat1.obs, // Modified: Wrapped string with .obs
        title: 'Roma x'.obs, // Modified: Wrapped string with .obs
        hasSpecialEffect: false.obs, // Modified: Wrapped bool with .obs
        hasBadge: false.obs, // Modified: Wrapped bool with .obs
        hasProgressBar: false.obs, // Modified: Wrapped bool with .obs
      ),
      GameItemModel(
        gameImage:
            ImageConstant.img211000.obs, // Modified: Wrapped string with .obs
        overlayIcon: ImageConstant
            .imgGroup1024.obs, // Modified: Wrapped string with .obs
        overlayImage: ImageConstant
            .imgBaccarat2.obs, // Modified: Wrapped string with .obs
        title: 'diamond party'.obs, // Modified: Wrapped string with .obs
        hasSpecialEffect: false.obs, // Modified: Wrapped bool with .obs
        hasBadge: false.obs, // Modified: Wrapped bool with .obs
        hasProgressBar: false.obs, // Modified: Wrapped bool with .obs
      ),
      GameItemModel(
        gameImage:
            ImageConstant.img911000.obs, // Modified: Wrapped string with .obs
        overlayIcon: ImageConstant
            .imgGroup1024.obs, // Modified: Wrapped string with .obs
        overlayImage: ImageConstant
            .imgBaccarat1.obs, // Modified: Wrapped string with .obs
        title: 'lucky coming'.obs, // Modified: Wrapped string with .obs
        hasSpecialEffect: false.obs, // Modified: Wrapped bool with .obs
        hasBadge: true.obs, // Modified: Wrapped bool with .obs
        badgeCount: 1.obs, // Modified: Wrapped int with .obs
        hasProgressBar: false.obs, // Modified: Wrapped bool with .obs
      ),
      GameItemModel(
        gameImage: ImageConstant
            .img277771000.obs, // Modified: Wrapped string with .obs
        overlayIcon: ImageConstant
            .imgGroup1029.obs, // Modified: Wrapped string with .obs
        title: 'Roma x'.obs, // Modified: Wrapped string with .obs
        hasSpecialEffect: false.obs, // Modified: Wrapped bool with .obs
        hasBadge: false.obs, // Modified: Wrapped bool with .obs
        hasProgressBar: false.obs, // Modified: Wrapped bool with .obs
      ),
      GameItemModel(
        gameImage:
            ImageConstant.img431000.obs, // Modified: Wrapped string with .obs
        overlayIcon: ImageConstant
            .imgGroup1029.obs, // Modified: Wrapped string with .obs
        title: 'diamond party'.obs, // Modified: Wrapped string with .obs
        hasSpecialEffect: false.obs, // Modified: Wrapped bool with .obs
        hasBadge: false.obs, // Modified: Wrapped bool with .obs
        hasProgressBar: false.obs, // Modified: Wrapped bool with .obs
      ),
      GameItemModel(
        gameImage:
            ImageConstant.img441000.obs, // Modified: Wrapped string with .obs
        overlayIcon: ImageConstant
            .imgGroup1029.obs, // Modified: Wrapped string with .obs
        title: 'lucky coming'.obs, // Modified: Wrapped string with .obs
        hasSpecialEffect: false.obs, // Modified: Wrapped bool with .obs
        hasBadge: false.obs, // Modified: Wrapped bool with .obs
        hasProgressBar: true.obs, // Modified: Wrapped bool with .obs
      ),
    ];
  }

  void _initializeGoldenEggs() {
    goldenEggs.value = List.generate(
        9,
        (index) => GoldenEggModel(
              baseImage: ImageConstant
                  .imgF2140x140.obs, // Modified: Wrapped string with .obs
              eggImage: ImageConstant
                  .imgF1123x123.obs, // Modified: Wrapped string with .obs
              contentImage: ImageConstant
                  .imgImage380.obs, // Modified: Wrapped string with .obs
              isCollected: false.obs, // Modified: Wrapped bool with .obs
            ));
  }

  void _initializeWinners() {
    winners.value = [
      WinnerModel(
        avatarPath: ImageConstant
            .imgEllipse539.obs, // Modified: Wrapped string with .obs
        username: '123***123'.obs, // Modified: Wrapped string with .obs
        bonusAmount:
            '₱ 1,000,000,000.00'.obs, // Modified: Wrapped string with .obs
      ),
      WinnerModel(
        avatarPath: ImageConstant
            .imgEllipse53920x20.obs, // Modified: Wrapped string with .obs
        username: '123***123'.obs, // Modified: Wrapped string with .obs
        bonusAmount:
            '₱ 1,000,000,000.00'.obs, // Modified: Wrapped string with .obs
      ),
      WinnerModel(
        avatarPath: ImageConstant
            .imgEllipse5391.obs, // Modified: Wrapped string with .obs
        username: '124***123'.obs, // Modified: Wrapped string with .obs
        bonusAmount:
            '₱ 1,000,000,000.00'.obs, // Modified: Wrapped string with .obs
      ),
    ];
  }

  void handleDownload() {
    Get.snackbar('Download', 'Download initiated');
  }

  void closeBanner() {
    Get.snackbar('Banner', 'Banner closed');
  }

  void addFunds() {
    Get.snackbar('Add Funds', 'Add funds clicked');
  }

  void handleWithdrawal() {
    Get.snackbar('Withdrawal', 'Withdrawal initiated');
  }

  void handleDeposit() {
    Get.snackbar('Deposit', 'Deposit initiated');
  }

  void onSidebarTap(int index) {
    selectedSidebarIndex.value = index;
  }

  void onGameTap(GameItemModel gameItem) {
    Get.snackbar('Game', 'Game ${gameItem.title?.value ?? ''} tapped');
  }

  void closeEventOverlay() {
    showEventOverlay.value = false;
  }

  void claimReward() {
    Get.snackbar('Reward', 'Reward claimed successfully!');
    closeEventOverlay();
  }

  void onGoldenEggTap(int index) {
    if (!(goldenEggs[index].isCollected?.value ?? false)) {
      goldenEggs[index].isCollected?.value = true;
      goldenEggs.refresh();
      Get.snackbar('Golden Egg', 'Golden egg collected!');
    }
  }
}
