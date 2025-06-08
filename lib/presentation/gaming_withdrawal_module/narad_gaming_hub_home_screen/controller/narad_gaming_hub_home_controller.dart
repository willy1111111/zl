import '../../../core/app_export.dart';
import '../models/game_item_model.dart';
import '../models/narad_gaming_hub_home_model.dart';
import '../models/overlay_notification_model.dart';
import '../models/side_navigation_item_model.dart';

class NaradGamingHubHomeController extends GetxController {
  Rx<NaradGamingHubHomeModel> naradGamingHubHomeModelObj =
      NaradGamingHubHomeModel().obs;

  RxList<GameItemModel> gameItems = <GameItemModel>[].obs;
  RxList<SideNavigationItemModel> sideNavigationItems =
      <SideNavigationItemModel>[].obs;
  RxList<OverlayNotificationModel> overlayNotifications =
      <OverlayNotificationModel>[].obs;

  RxInt selectedBottomNavIndex = 0.obs;
  RxString currentBalance = '₱1980.00'.obs;

  @override
  void onInit() {
    super.onInit();
    initializeGameItems();
    initializeSideNavigationItems();
    initializeOverlayNotifications();
  }

  void initializeGameItems() {
    gameItems.value = [
      GameItemModel(
        gameImage: ImageConstant.img231000.obs,
        overlayIcon: ImageConstant.imgGroup1019.obs,
        title: 'Fortune Ox fortune'.obs,
        hasOverlay: true.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img491000.obs,
        title: 'super Ace'.obs,
        hasOverlay: true.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.imgLogowj931.obs,
        title: 'Money Coming'.obs,
        isCustomBackground: true.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img102x1000.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        title: 'Roma x'.obs,
        hasBackgroundOverlay: true.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img211000.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        title: 'diamond party'.obs,
        hasBackgroundOverlay: true.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img911000.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
        hasBackgroundOverlay: true.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img277771000.obs,
        overlayIcon: ImageConstant.imgGroup1029.obs,
        title: 'Roma x'.obs,
        hasOverlay: true.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img431000.obs,
        overlayIcon: ImageConstant.imgGroup1029.obs,
        title: 'diamond party'.obs,
        hasOverlay: true.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img441000.obs,
        overlayIcon: ImageConstant.imgGroup1029.obs,
        title: 'lucky coming'.obs,
        hasOverlay: true.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img471000.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        title: 'Roma x'.obs,
        hasOverlay: true.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img461000.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        title: 'diamond party'.obs,
        hasOverlay: true.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.imgJdbslot092.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
        hasOverlay: true.obs,
      ),
    ];
  }

  void initializeSideNavigationItems() {
    sideNavigationItems.value = [
      SideNavigationItemModel(
        icon: ImageConstant.img10733643587.obs,
        title: 'Slot'.obs,
        type: 'slot'.obs,
      ),
      SideNavigationItemModel(
        icon: ImageConstant.img136x36.obs,
        title: 'Live'.obs,
        type: 'live'.obs,
      ),
      SideNavigationItemModel(
        icon: ImageConstant.img5.obs,
        title: 'Bingo'.obs,
        type: 'bingo'.obs,
      ),
      SideNavigationItemModel(
        icon: ImageConstant.img236x36.obs,
        title: 'Table'.obs,
        type: 'table'.obs,
      ),
      SideNavigationItemModel(
        icon: ImageConstant.img7.obs,
        title: 'Fish'.obs,
        type: 'fish'.obs,
      ),
      SideNavigationItemModel(
        icon: ImageConstant.img336x36.obs,
        title: 'Egame'.obs,
        type: 'egame'.obs,
      ),
      SideNavigationItemModel(
        icon: ImageConstant.img6.obs,
        title: 'Sport'.obs,
        type: 'sport'.obs,
      ),
    ];
  }

  void initializeOverlayNotifications() {
    overlayNotifications.value = [
      OverlayNotificationModel(
        backgroundImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12001.obs,
        overlayImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12002.obs,
        contentImage: ImageConstant.img23331.obs,
        badgeCount: 6.obs,
        timerText: '20Day 23:12'.obs,
        buttonText: 'Receive'.obs,
        positionTop: 323.obs,
        positionLeft: 131.obs,
        showBadge: true.obs,
        showTimer: true.obs,
      ),
      OverlayNotificationModel(
        backgroundImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12001.obs,
        overlayImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12002.obs,
        contentImage: ImageConstant.img2333199x91.obs,
        buttonText: 'Details'.obs,
        positionTop: 419.obs,
        positionLeft: 47.obs,
        showBadge: false.obs,
        showTimer: false.obs,
      ),
      OverlayNotificationModel(
        backgroundImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12001.obs,
        overlayImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12002.obs,
        contentImage: ImageConstant.img233311.obs,
        badgeCount: 2.obs,
        buttonText: 'Receive'.obs,
        positionTop: 535.obs,
        positionLeft: 23.obs,
        showBadge: true.obs,
        showTimer: false.obs,
      ),
      OverlayNotificationModel(
        backgroundImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12001.obs,
        overlayImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12002.obs,
        contentImage: ImageConstant.img233312.obs,
        buttonText: '23:00 Start'.obs,
        positionTop: 293.obs,
        positionRight: 3.obs,
        showBadge: false.obs,
        showTimer: false.obs,
      ),
    ];
  }

  void onDownloadTap() {
    // Handle download button tap
    Get.snackbar('Download', 'App download started');
  }

  void onCloseTap() {
    // Handle close promotional banner
    Get.snackbar('Info', 'Promotional banner closed');
  }

  void onRefreshBalance() {
    // Handle balance refresh
    Get.snackbar('Balance', 'Balance refreshed');
  }

  void onWithdrawalTap() {
    // Navigate to withdrawal screen
    Get.snackbar('Navigation', 'Navigate to withdrawal');
  }

  void onDepositTap() {
    // Navigate to deposit screen
    Get.snackbar('Navigation', 'Navigate to deposit');
  }

  void onHotButtonTap() {
    // Handle hot games section
    Get.snackbar('Hot Games', 'Navigate to hot games');
  }

  void onSideNavigationTap(SideNavigationItemModel item) {
    // Handle side navigation tap
    Get.snackbar('Navigation', 'Navigate to ${item.title?.value ?? ""}');
  }

  void onGameItemTap(GameItemModel gameItem) {
    // Handle game item tap
    Get.snackbar('Game', 'Starting ${gameItem.title?.value ?? ""}');
  }

  void onOverlayNotificationTap(OverlayNotificationModel notification) {
    // Handle overlay notification tap
    Get.snackbar(
        'Notification', '${notification.buttonText?.value ?? ""} clicked');
  }

  void onBottomNavChanged(int index) {
    selectedBottomNavIndex.value = index;
    switch (index) {
      case 0:
        // Already on home
        break;
      case 1:
        // Navigate to promotion
        Get.snackbar('Navigation', 'Navigate to Promotion');
        break;
      case 2:
        // Navigate to invite
        Get.snackbar('Navigation', 'Navigate to Invite');
        break;
      case 3:
        // Navigate to deposit
        Get.snackbar('Navigation', 'Navigate to Deposit');
        break;
      case 4:
        // Navigate to teams
        Get.snackbar('Navigation', 'Navigate to Teams');
        break;
    }
  }
}
