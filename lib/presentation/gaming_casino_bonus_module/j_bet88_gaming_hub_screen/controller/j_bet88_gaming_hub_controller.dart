import '../../../core/app_export.dart';
import '../../../widgets/custom_bottom_bar.dart';
import '../models/game_card_model.dart';
import '../models/j_bet88_gaming_hub_model.dart';
import '../models/sidebar_menu_item_model.dart';

class JBet88GamingHubController extends GetxController {
  Rx<JBet88GamingHubModel> jBet88GamingHubModelObj = JBet88GamingHubModel().obs;

  RxString balanceAmount = 'R\$1980.00'.obs;
  RxString jackpotAmount = '14,091,688.88'.obs;
  RxInt selectedBottomIndex = 0.obs;
  RxInt selectedVipIndex = 4.obs;
  RxBool showVipDialog = false.obs;

  RxList<GameCardModel> gameItems = <GameCardModel>[
    GameCardModel(
      gameImagePath: ImageConstant.img231000.obs,
      overlayIconPath: ImageConstant.imgGroup1019.obs,
      gameTitle: 'Fortune Ox fortune'.obs,
    ),
    GameCardModel(
      gameImagePath: ImageConstant.img491000.obs,
      gameTitle: 'super Ace'.obs,
    ),
    GameCardModel(
      gameImagePath: ImageConstant.imgLogowj93120x56.obs,
      gameTitle: 'Money Coming'.obs,
      hasCustomBackground: true.obs,
    ),
    GameCardModel(
      gameImagePath: ImageConstant.img102x1000.obs,
      overlayImagePath: ImageConstant.img1baccarat1.obs,
      overlayIconPath: ImageConstant.imgGroup1024.obs,
    ),
    GameCardModel(
      gameImagePath: ImageConstant.img211000.obs,
      overlayImagePath: ImageConstant.imgBaccarat2.obs,
      overlayIconPath: ImageConstant.imgGroup1024.obs,
    ),
    GameCardModel(
      gameImagePath: ImageConstant.img911000.obs,
      overlayImagePath: ImageConstant.imgBaccarat1.obs,
      overlayIconPath: ImageConstant.imgGroup1024.obs,
      hasNotificationBadge: true.obs,
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
    GameCardModel(
      gameImagePath: ImageConstant.img771000.obs,
      overlayIconPath: ImageConstant.imgGroup1024.obs,
      gameTitle: 'Roma x'.obs,
    ),
    GameCardModel(
      gameImagePath: ImageConstant.img401000.obs,
      overlayIconPath: ImageConstant.imgGroup1024.obs,
      gameTitle: 'diamond party'.obs,
    ),
    GameCardModel(
      gameImagePath: ImageConstant.imgJdbslot105.obs,
      overlayIconPath: ImageConstant.imgGroup1024.obs,
      gameTitle: 'lucky coming'.obs,
    ),
  ].obs;

  RxList<SidebarMenuItemModel> sidebarItems = <SidebarMenuItemModel>[
    SidebarMenuItemModel(
      iconPath: ImageConstant.img10733643587.obs,
      title: 'Slot'.obs,
    ),
    SidebarMenuItemModel(
      iconPath: ImageConstant.img136x36.obs,
      title: 'Live'.obs,
    ),
    SidebarMenuItemModel(
      iconPath: ImageConstant.img5.obs,
      title: 'Bingo'.obs,
    ),
    SidebarMenuItemModel(
      iconPath: ImageConstant.img236x36.obs,
      title: 'Table'.obs,
    ),
    SidebarMenuItemModel(
      iconPath: ImageConstant.img7.obs,
      title: 'Fish'.obs,
    ),
    SidebarMenuItemModel(
      iconPath: ImageConstant.img336x36.obs,
      title: 'Egame'.obs,
    ),
    SidebarMenuItemModel(
      iconPath: ImageConstant.img6.obs,
      title: 'Sport'.obs,
    ),
  ].obs;

  List<CustomBottomBarItem> get bottomBarItems => [
        CustomBottomBarItem(
          icon: ImageConstant.imgVectorLightGreenA700,
          title: 'Home',
          routeName: AppRoutes.jBet88GamingHubScreen,
        ),
        CustomBottomBarItem(
          icon: ImageConstant.img1BlueGray40020x20,
          title: 'Promotion',
          routeName: '',
        ),
        CustomBottomBarItem(
          icon: ImageConstant.img1BlueGray40020x19,
          title: 'Invite',
          routeName: '',
        ),
        CustomBottomBarItem(
          icon: ImageConstant.img1BlueGray40020x19,
          title: 'Deposit',
          routeName: '',
        ),
        CustomBottomBarItem(
          icon: ImageConstant.img1BlueGray400,
          title: 'Teams',
          routeName: '',
        ),
      ];

  @override
  void onInit() {
    super.onInit();
  }

  void onDownloadTap() {
    // Handle download action
  }

  void onRefreshBalance() {
    // Handle balance refresh
  }

  void onWithdrawalTap() {
    // Navigate to withdrawal screen
  }

  void onDepositTap() {
    // Navigate to deposit screen
  }

  void onGameTap(int index) {
    // Handle game selection
  }

  void onCollectTap() {
    // Handle collect action
  }

  void onSidebarItemTap(int index) {
    // Handle sidebar item selection
  }

  void onBottomNavTap(int index) {
    selectedBottomIndex.value = index;
    // Handle bottom navigation
  }

  void onVipItemTap(int index) {
    selectedVipIndex.value = index;
    if (index == 4) {
      showVipDialog.value = true;
    }
  }

  void hideVipDialog() {
    showVipDialog.value = false;
  }

  void claimVipReward() {
    // Handle VIP reward claim
    hideVipDialog();
  }
}
