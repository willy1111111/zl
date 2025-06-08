import '../../../core/app_export.dart';
import '../../../widgets/custom_bottom_bar.dart';
import '../models/game_card_item_model.dart';
import '../models/j_bet88_gaming_hub_screen_two_model.dart';
import '../models/side_navigation_item_model.dart';

class JBet88GamingHubScreenTwoController extends GetxController {
  Rx<JBet88GamingHubScreenTwoModel> jBet88GamingHubScreenTwoModelObj =
      JBet88GamingHubScreenTwoModel().obs;

  // Observable variables
  RxString balanceAmount = 'R\$1980.00'.obs;
  RxString jackpotAmount = '14,091,688.88'.obs;
  RxString timeLeft = 'Time left to collect:6day 23:59:59'.obs;
  RxBool showVipRewardsPopup = false.obs;
  RxInt selectedSideNavigationIndex = 0.obs;
  RxInt selectedBottomNavigationIndex = 0.obs;

  // Game cards data
  RxList<GameCardItemModel> gameCardItems = <GameCardItemModel>[].obs;

  // Side navigation data
  RxList<SideNavigationItemModel> sideNavigationItems =
      <SideNavigationItemModel>[].obs;

  // Bottom navigation data
  List<CustomBottomBarItem> bottomBarItemList = [
    CustomBottomBarItem(
      icon: ImageConstant.imgVectorLightGreenA700,
      title: 'Home',
      routeName: AppRoutes.jBet88GamingHubScreenTwo,
    ),
    CustomBottomBarItem(
      icon: ImageConstant.img1BlueGray40020x20,
      title: 'Promotion',
      routeName: AppRoutes.gamingCasinoVipRewardsScreen,
    ),
    CustomBottomBarItem(
      icon: ImageConstant.img1BlueGray40020x19,
      title: 'Invite',
      routeName: AppRoutes.gamingCasinoVipRewardsScreen,
    ),
    CustomBottomBarItem(
      icon: ImageConstant.img1BlueGray40020x19,
      title: 'Deposit',
      routeName: AppRoutes.depositRecordListScreen,
    ),
    CustomBottomBarItem(
      icon: ImageConstant.img1BlueGray400,
      title: 'Teams',
      routeName: AppRoutes.gamingCasinoVipRewardsScreen,
    ),
  ];

  @override
  void onInit() {
    super.onInit();
    initializeGameCards();
    initializeSideNavigation();
    showVipRewardsPopup.value = true;
  }

  void initializeGameCards() {
    gameCardItems.value = [
      GameCardItemModel(
        gameImage: ImageConstant.img231000.obs,
        overlayIcon: ImageConstant.imgGroup1019.obs,
        gameTitle: 'Fortune Ox fortune'.obs,
      ),
      GameCardItemModel(
        gameImage: ImageConstant.img491000.obs,
        overlayIcon: null,
        gameTitle: 'super Ace'.obs,
        hasOverlay: true.obs,
      ),
      GameCardItemModel(
        gameImage: ImageConstant.imgLogowj93120x56.obs,
        overlayIcon: null,
        gameTitle: 'Money Coming'.obs,
        hasCustomBackground: true.obs,
        hasOverlay: true.obs,
      ),
      GameCardItemModel(
        gameImage: ImageConstant.img102x1000.obs,
        overlayImage: ImageConstant.img1baccarat1.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        gameTitle: 'Roma x'.obs,
      ),
      GameCardItemModel(
        gameImage: ImageConstant.img211000.obs,
        overlayImage: ImageConstant.imgBaccarat2.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        gameTitle: 'diamond party'.obs,
      ),
      GameCardItemModel(
        gameImage: ImageConstant.img911000.obs,
        overlayImage: ImageConstant.imgBaccarat1.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        gameTitle: 'lucky coming'.obs,
        hasNotification: true.obs,
      ),
      GameCardItemModel(
        gameImage: ImageConstant.img277771000.obs,
        overlayIcon: ImageConstant.imgGroup1029.obs,
        gameTitle: 'Roma x'.obs,
      ),
      GameCardItemModel(
        gameImage: ImageConstant.img431000.obs,
        overlayIcon: ImageConstant.imgGroup1029.obs,
        gameTitle: 'diamond party'.obs,
      ),
      GameCardItemModel(
        gameImage: ImageConstant.img441000.obs,
        overlayIcon: ImageConstant.imgGroup1029.obs,
        gameTitle: 'lucky coming'.obs,
      ),
      GameCardItemModel(
        gameImage: ImageConstant.img471000.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        gameTitle: 'Roma x'.obs,
      ),
      GameCardItemModel(
        gameImage: ImageConstant.img461000.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        gameTitle: 'diamond party'.obs,
      ),
      GameCardItemModel(
        gameImage: ImageConstant.imgJdbslot092.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        gameTitle: 'lucky coming'.obs,
      ),
      GameCardItemModel(
        gameImage: ImageConstant.img771000.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        gameTitle: 'Roma x'.obs,
      ),
      GameCardItemModel(
        gameImage: ImageConstant.img401000.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        gameTitle: 'diamond party'.obs,
      ),
      GameCardItemModel(
        gameImage: ImageConstant.imgJdbslot105.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        gameTitle: 'lucky coming'.obs,
      ),
    ];
  }

  void initializeSideNavigation() {
    sideNavigationItems.value = [
      SideNavigationItemModel(
        icon: ImageConstant.img10733643587.obs,
        title: 'Slot'.obs,
      ),
      SideNavigationItemModel(
        icon: ImageConstant.img136x36.obs,
        title: 'Live'.obs,
      ),
      SideNavigationItemModel(
        icon: ImageConstant.img5.obs,
        title: 'Bingo'.obs,
      ),
      SideNavigationItemModel(
        icon: ImageConstant.img236x36.obs,
        title: 'Table'.obs,
      ),
      SideNavigationItemModel(
        icon: ImageConstant.img7.obs,
        title: 'Fish'.obs,
      ),
      SideNavigationItemModel(
        icon: ImageConstant.img336x36.obs,
        title: 'Egame'.obs,
      ),
      SideNavigationItemModel(
        icon: ImageConstant.img6.obs,
        title: 'Sport'.obs,
      ),
    ];
  }

  void onDownloadTapped() {
    // Handle download action
  }

  void onCloseBannerTapped() {
    // Handle close banner action
  }

  void onRefreshBalanceTapped() {
    // Handle refresh balance action
  }

  void onWithdrawalTapped() {
    Get.toNamed(AppRoutes.gCashDepositRecordScreen);
  }

  void onDepositTapped() {
    Get.toNamed(AppRoutes.depositRecordListScreen);
  }

  void onSideNavigationTapped(int index) {
    selectedSideNavigationIndex.value = index;
    // Handle side navigation based on index
  }

  void onGameCardTapped(int index) {
    // Handle game card tap
  }

  void onVipRewardClaimTapped() {
    Get.toNamed(AppRoutes.gamingRewardsCongratulationsScreen);
  }

  void onCloseVipPopupTapped() {
    showVipRewardsPopup.value = false;
  }

  void onVipMenuItemTapped(int index) {
    // Handle VIP menu item tap
  }

  void onCustomerServiceTapped() {
    // Handle customer service tap
  }

  void onBottomNavigationTapped(int index) {
    selectedBottomNavigationIndex.value = index;
    if (index < bottomBarItemList.length) {
      Get.toNamed(bottomBarItemList[index].routeName);
    }
  }
}
