import '../../../core/app_export.dart';
import '../models/game_card_model.dart';
import '../models/narad_gaming_hub_home_model.dart';
import '../models/navigation_item_model.dart';

class NaradGamingHubHomeController extends GetxController {
  Rx<NaradGamingHubHomeModel> naradGamingHubHomeModelObj =
      NaradGamingHubHomeModel().obs;

  // Balance
  RxString balance = '1980.00'.obs;

  // Navigation
  RxInt selectedNavigationIndex = 0.obs;
  RxList<NavigationItemModel> navigationItems = <NavigationItemModel>[].obs;

  // Game cards
  RxList<GameCardModel> gameCards = <GameCardModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _initializeNavigationItems();
    _initializeGameCards();
  }

  void _initializeNavigationItems() {
    navigationItems.value = [
      NavigationItemModel(
        iconPath: ImageConstant.imgVectorDeepOrangeA400.obs,
        label: 'Hot'.obs,
        isSelected: true.obs,
      ),
      NavigationItemModel(
        iconPath: ImageConstant.img10733643587.obs,
        label: 'Slot'.obs,
        isSelected: false.obs,
      ),
      NavigationItemModel(
        iconPath: ImageConstant.img136x36.obs,
        label: 'Live'.obs,
        isSelected: false.obs,
      ),
      NavigationItemModel(
        iconPath: ImageConstant.img5.obs,
        label: 'Bingo'.obs,
        isSelected: false.obs,
      ),
      NavigationItemModel(
        iconPath: ImageConstant.img2.obs,
        label: 'Table'.obs,
        isSelected: false.obs,
      ),
      NavigationItemModel(
        iconPath: ImageConstant.img736x36.obs,
        label: 'Fish'.obs,
        isSelected: false.obs,
      ),
      NavigationItemModel(
        iconPath: ImageConstant.img336x36.obs,
        label: 'Egame'.obs,
        isSelected: false.obs,
      ),
      NavigationItemModel(
        iconPath: ImageConstant.img6.obs,
        label: 'Sport'.obs,
        isSelected: false.obs,
      ),
    ];
  }

  void _initializeGameCards() {
    gameCards.value = [
      GameCardModel(
        gameImagePath: ImageConstant.img231000.obs,
        overlayIconPath: ImageConstant.imgGroup1019.obs,
        gameTitle: 'Fortune Ox fortune'.obs,
      ),
      GameCardModel(
        gameImagePath: ImageConstant.img491000.obs,
        overlayIconPath: ImageConstant.imgGroup1024.obs,
        gameTitle: 'super Ace'.obs,
      ),
      GameCardModel(
        gameImagePath: ImageConstant.imgLogowj931.obs,
        overlayIconPath: ImageConstant.imgGroup1024.obs,
        gameTitle: 'Money Coming'.obs,
      ),
      GameCardModel(
        gameImagePath: ImageConstant.img102x1000.obs,
        overlayIconPath: ImageConstant.imgGroup1024.obs,
        gameTitle: 'Roma x'.obs,
      ),
      GameCardModel(
        gameImagePath: ImageConstant.img211000.obs,
        overlayIconPath: ImageConstant.imgGroup1024.obs,
        gameTitle: 'diamond party'.obs,
      ),
      GameCardModel(
        gameImagePath: ImageConstant.img911000.obs,
        overlayIconPath: ImageConstant.imgGroup1024.obs,
        gameTitle: 'lucky coming'.obs,
      ),
      GameCardModel(
        gameImagePath: ImageConstant.img277771000.obs,
        overlayIconPath: ImageConstant.imgGroup1029.obs,
        gameTitle: 'Roma x'.obs,
      ),
      GameCardModel(
        gameImagePath: ImageConstant.img431000.obs,
        overlayIconPath: ImageConstant.imgGroup1029.obs,
        gameTitle: 'diamond party'.obs,
      ),
      GameCardModel(
        gameImagePath: ImageConstant.img441000.obs,
        overlayIconPath: ImageConstant.imgGroup1029.obs,
        gameTitle: 'lucky coming'.obs,
      ),
      GameCardModel(
        gameImagePath: ImageConstant.img471000.obs,
        overlayIconPath: ImageConstant.imgGroup1024.obs,
        gameTitle: 'Roma x'.obs,
      ),
      GameCardModel(
        gameImagePath: ImageConstant.img461000.obs,
        overlayIconPath: ImageConstant.imgGroup1024.obs,
        gameTitle: 'diamond party'.obs,
      ),
      GameCardModel(
        gameImagePath: ImageConstant.imgJdbslot092.obs,
        overlayIconPath: ImageConstant.imgGroup1024.obs,
        gameTitle: 'lucky coming'.obs,
      ),
    ];
  }

  void onWithdrawalPressed() {
    // Handle withdrawal action
    Get.snackbar(
      'Withdrawal',
      'Withdrawal feature clicked',
      backgroundColor: appTheme.colorFFFFC6,
      colorText: appTheme.whiteCustom,
    );
  }

  void onDepositPressed() {
    Get.toNamed(AppRoutes.depositConfirmationScreen);
  }

  void onNavigationItemTapped(int index) {
    selectedNavigationIndex.value = index;

    // Update selection state
    for (int i = 0; i < navigationItems.length; i++) {
      navigationItems[i].isSelected?.value = i == index;
    }

    // Handle navigation based on selected item
    switch (index) {
      case 0: // Hot
        // Filter games for hot category
        break;
      case 1: // Slot
        // Filter games for slot category
        break;
      case 2: // Live
        // Filter games for live category
        break;
      case 3: // Bingo
        // Filter games for bingo category
        break;
      case 4: // Table
        // Filter games for table category
        break;
      case 5: // Fish
        // Filter games for fish category
        break;
      case 6: // Egame
        // Filter games for egame category
        break;
      case 7: // Sport
        // Filter games for sport category
        break;
    }
  }

  void onGameCardTapped(int index) {
    final gameCard = gameCards[index];
    Get.snackbar(
      'Game Selected',
      'Selected: ${gameCard.gameTitle?.value ?? ''}',
      backgroundColor: appTheme.colorFF2528,
      colorText: appTheme.whiteCustom,
    );
  }

  void onRewardReceived(int rewardIndex) {
    Get.snackbar(
      'Reward',
      'Reward $rewardIndex received!',
      backgroundColor: appTheme.colorFF85D4,
      colorText: appTheme.whiteCustom,
    );
  }
}
