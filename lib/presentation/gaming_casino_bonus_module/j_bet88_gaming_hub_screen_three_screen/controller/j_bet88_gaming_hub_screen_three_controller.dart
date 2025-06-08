import '../../../core/app_export.dart';
import '../models/game_item_model.dart';
import '../models/sidebar_menu_item_model.dart';

class JBet88GamingHubScreenThreeController extends GetxController {
  RxBool showVipRewardsDialog = false.obs;
  RxInt selectedSidebarIndex = 0.obs;
  RxString balanceAmount = 'R\$1980.00'.obs;

  RxList<SidebarMenuItemModel> sidebarMenuItems = <SidebarMenuItemModel>[].obs;
  RxList<GameItemModel> gameItems = <GameItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _initializeSidebarItems();
    _initializeGameItems();
  }

  void _initializeSidebarItems() {
    sidebarMenuItems.value = [
      SidebarMenuItemModel(
        icon: ImageConstant.imgVectorDeepOrangeA400.obs,
        title: 'Hot'.obs,
        isSelected: true.obs,
      ),
      SidebarMenuItemModel(
        icon: ImageConstant.img10733643587.obs,
        title: 'Slot'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        icon: ImageConstant.img136x36.obs,
        title: 'Live'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        icon: ImageConstant.img5.obs,
        title: 'Bingo'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        icon: ImageConstant.img236x36.obs,
        title: 'Table'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        icon: ImageConstant.img7.obs,
        title: 'Fish'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        icon: ImageConstant.img336x36.obs,
        title: 'Egame'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        icon: ImageConstant.img6.obs,
        title: 'Sport'.obs,
        isSelected: false.obs,
      ),
    ];
  }

  void _initializeGameItems() {
    gameItems.value = [
      GameItemModel(
        backgroundImage: ImageConstant.img231000.obs,
        overlayImage: ImageConstant.imgGroup1019.obs,
        title: 'Fortune Ox fortune'.obs,
        hasNotificationBadge: false.obs,
      ),
      GameItemModel(
        backgroundImage: ImageConstant.img491000.obs,
        overlayImage: null,
        title: 'super Ace'.obs,
        hasNotificationBadge: false.obs,
      ),
      GameItemModel(
        backgroundImage: null,
        overlayImage: ImageConstant.imgLogowj93120x56.obs,
        title: 'Money Coming'.obs,
        hasNotificationBadge: false.obs,
        isSpecialBackground: true.obs,
      ),
      GameItemModel(
        backgroundImage: ImageConstant.img102x1000.obs,
        overlayImage: ImageConstant.img1baccarat1.obs,
        playIcon: ImageConstant.imgGroup1024.obs,
        title: 'Roma x'.obs,
        hasNotificationBadge: false.obs,
      ),
      GameItemModel(
        backgroundImage: ImageConstant.img211000.obs,
        overlayImage: ImageConstant.imgBaccarat2.obs,
        playIcon: ImageConstant.imgGroup1024.obs,
        title: 'diamond party'.obs,
        hasNotificationBadge: false.obs,
      ),
      GameItemModel(
        backgroundImage: ImageConstant.img911000.obs,
        overlayImage: ImageConstant.imgBaccarat1.obs,
        playIcon: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
        hasNotificationBadge: true.obs,
        notificationCount: '1'.obs,
      ),
      GameItemModel(
        backgroundImage: ImageConstant.img277771000.obs,
        overlayImage: ImageConstant.imgGroup1029.obs,
        title: 'Roma x'.obs,
        hasNotificationBadge: false.obs,
      ),
      GameItemModel(
        backgroundImage: ImageConstant.img431000.obs,
        overlayImage: ImageConstant.imgGroup1029.obs,
        title: 'diamond party'.obs,
        hasNotificationBadge: false.obs,
      ),
      GameItemModel(
        backgroundImage: ImageConstant.img441000.obs,
        overlayImage: ImageConstant.imgGroup1029.obs,
        title: 'lucky coming'.obs,
        hasNotificationBadge: false.obs,
      ),
      GameItemModel(
        backgroundImage: ImageConstant.img471000.obs,
        overlayImage: null,
        playIcon: ImageConstant.imgGroup1024.obs,
        title: 'Roma x'.obs,
        hasNotificationBadge: false.obs,
      ),
      GameItemModel(
        backgroundImage: ImageConstant.img461000.obs,
        overlayImage: null,
        playIcon: ImageConstant.imgGroup1024.obs,
        title: 'diamond party'.obs,
        hasNotificationBadge: false.obs,
      ),
      GameItemModel(
        backgroundImage: ImageConstant.imgJdbslot092.obs,
        overlayImage: null,
        playIcon: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
        hasNotificationBadge: false.obs,
      ),
      GameItemModel(
        backgroundImage: ImageConstant.img771000.obs,
        overlayImage: null,
        playIcon: ImageConstant.imgGroup1024.obs,
        title: 'Roma x'.obs,
        hasNotificationBadge: false.obs,
      ),
      GameItemModel(
        backgroundImage: ImageConstant.img401000.obs,
        overlayImage: null,
        playIcon: ImageConstant.imgGroup1024.obs,
        title: 'diamond party'.obs,
        hasNotificationBadge: false.obs,
      ),
      GameItemModel(
        backgroundImage: ImageConstant.imgJdbslot105.obs,
        overlayImage: null,
        playIcon: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
        hasNotificationBadge: false.obs,
      ),
    ];
  }

  void onDownloadPressed() {
    // Handle download action
  }

  void onCloseBannerPressed() {
    // Handle close banner action
  }

  void onRefreshBalance() {
    // Handle refresh balance action
  }

  void onWithdrawalPressed() {
    // Handle withdrawal action
  }

  void onDepositPressed() {
    // Handle deposit action
  }

  void onSidebarItemTap(int index) {
    selectedSidebarIndex.value = index;
    // Update selected state for all items
    for (int i = 0; i < sidebarMenuItems.length; i++) {
      sidebarMenuItems[i].isSelected?.value = i == index;
    }
    sidebarMenuItems.refresh();
  }

  void onGameItemTap(int index) {
    // Handle game item tap
  }

  void onVipItemTap(int index) {
    showVipRewardsDialog.value = true;
  }

  void onCloseVipDialog() {
    showVipRewardsDialog.value = false;
  }

  void onReceivedPressed() {
    // Handle received button action
    showVipRewardsDialog.value = false;
  }

  void onBottomNavTap(int index) {
    // Handle bottom navigation tap
  }
}
