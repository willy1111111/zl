import '../../../core/app_export.dart';
import '../models/floating_overlay_model.dart';
import '../models/game_category_model.dart';
import '../models/game_item_model.dart';
import '../models/narad_casino_game_hub_model.dart';

class NaradCasinoGameHubController extends GetxController {
  // Main screen model
  Rx<NaradCasinoGameHubModel> naradCasinoGameHubModel =
      NaradCasinoGameHubModel().obs;

  // Observable variables
  RxString balance = '₱1980.00'.obs;
  RxString jackpotAmount = '14,091,688.88'.obs;
  RxInt selectedCategoryIndex = 0.obs;
  RxInt selectedBottomNavIndex = 0.obs;

  // Collections
  RxList<GameCategoryModel> gameCategories = <GameCategoryModel>[].obs;
  RxList<GameItemModel> gameItems = <GameItemModel>[].obs;

  // Floating overlays
  Rx<FloatingOverlayModel> vipClubOverlay = FloatingOverlayModel().obs;
  Rx<FloatingOverlayModel> moneyRainOverlay = FloatingOverlayModel().obs;
  Rx<FloatingOverlayModel> noticeOverlay = FloatingOverlayModel().obs;

  @override
  void onInit() {
    super.onInit();
    initializeData();
  }

  void initializeData() {
    // Initialize game categories
    gameCategories.value = [
      GameCategoryModel(
        icon: ImageConstant.imgVectorDeepOrangeA400.obs,
        title: 'Hot'.obs,
        isSelected: true.obs,
        hasGradient: true.obs,
      ),
      GameCategoryModel(
        icon: ImageConstant.img10733643587.obs,
        title: 'Slot'.obs,
        isSelected: false.obs,
        hasGradient: false.obs,
      ),
      GameCategoryModel(
        icon: ImageConstant.img136x36.obs,
        title: 'Live'.obs,
        isSelected: false.obs,
        hasGradient: false.obs,
      ),
      GameCategoryModel(
        icon: ImageConstant.img5.obs,
        title: 'Bingo'.obs,
        isSelected: false.obs,
        hasGradient: false.obs,
      ),
      GameCategoryModel(
        icon: ImageConstant.img236x36.obs,
        title: 'Table'.obs,
        isSelected: false.obs,
        hasGradient: false.obs,
      ),
      GameCategoryModel(
        icon: ImageConstant.img7.obs,
        title: 'Fish'.obs,
        isSelected: false.obs,
        hasGradient: false.obs,
      ),
      GameCategoryModel(
        icon: ImageConstant.img336x36.obs,
        title: 'Egame'.obs,
        isSelected: false.obs,
        hasGradient: false.obs,
      ),
      GameCategoryModel(
        icon: ImageConstant.img6.obs,
        title: 'Sport'.obs,
        isSelected: false.obs,
        hasGradient: false.obs,
      ),
    ];

    // Initialize game items
    gameItems.value = [
      GameItemModel(
        gameImage: ImageConstant.img231000.obs,
        gameName: 'Fortune Ox fortune'.obs,
        badgeImage: ImageConstant.imgGroup1019.obs,
        hasBadge: true.obs,
        isRounded: true.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img491000.obs,
        gameName: 'super Ace'.obs,
        badgeImage: ''.obs,
        hasBadge: false.obs,
        isRounded: true.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.imgLogowj931.obs,
        gameName: 'Money Coming'.obs,
        badgeImage: ''.obs,
        hasBadge: false.obs,
        isRounded: true.obs,
        hasSpecialBackground: true.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img102x1000.obs,
        overlayImage: ImageConstant.img1baccarat1.obs,
        gameName: 'Roma x'.obs,
        badgeImage: ImageConstant.imgGroup1024.obs,
        hasBadge: true.obs,
        isRounded: true.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img211000.obs,
        overlayImage: ImageConstant.imgBaccarat2.obs,
        gameName: 'diamond party'.obs,
        badgeImage: ImageConstant.imgGroup1024.obs,
        hasBadge: true.obs,
        isRounded: true.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img911000.obs,
        overlayImage: ImageConstant.imgBaccarat1.obs,
        gameName: 'lucky coming'.obs,
        badgeImage: ImageConstant.imgGroup1024.obs,
        hasBadge: true.obs,
        isRounded: true.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img277771000.obs,
        gameName: 'Roma x'.obs,
        badgeImage: ImageConstant.imgGroup1029.obs,
        hasBadge: true.obs,
        isRounded: true.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img431000.obs,
        gameName: 'diamond party'.obs,
        badgeImage: ImageConstant.imgGroup1029.obs,
        hasBadge: true.obs,
        isRounded: true.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img441000.obs,
        gameName: 'lucky coming'.obs,
        badgeImage: ImageConstant.imgGroup1029.obs,
        hasBadge: true.obs,
        isRounded: true.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img471000.obs,
        gameName: 'Roma x'.obs,
        badgeImage: ImageConstant.imgGroup1024.obs,
        hasBadge: true.obs,
        isRounded: true.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img461000.obs,
        gameName: 'diamond party'.obs,
        badgeImage: ImageConstant.imgGroup1024.obs,
        hasBadge: true.obs,
        isRounded: true.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.imgJdbslot092.obs,
        gameName: 'lucky coming'.obs,
        badgeImage: ImageConstant.imgGroup1024.obs,
        hasBadge: true.obs,
        isRounded: true.obs,
      ),
    ];

    // Initialize floating overlays
    vipClubOverlay.value = FloatingOverlayModel(
      backgroundImage: ImageConstant
          .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12001.obs,
      overlayImage: ImageConstant
          .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12002.obs,
      iconImage: ImageConstant.img233311.obs,
      effectImage: ImageConstant.img1moneyrain1.obs,
      buttonImage: ImageConstant.img16.obs,
      buttonText: 'Receive'.obs,
      badgeCount: 2.obs,
      hasBadge: true.obs,
    );

    moneyRainOverlay.value = FloatingOverlayModel(
      backgroundImage: ImageConstant
          .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12001.obs,
      overlayImage: ImageConstant
          .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12002.obs,
      iconImage: ImageConstant.img233312.obs,
      effectImage: ImageConstant.img1moneyrain2.obs,
      buttonImage: ImageConstant.img1630x96.obs,
      buttonText: '23:00 Start'.obs,
      badgeCount: 0.obs,
      hasBadge: false.obs,
    );

    noticeOverlay.value = FloatingOverlayModel(
      backgroundImage: ImageConstant
          .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12001.obs,
      overlayImage: ImageConstant
          .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12002.obs,
      iconImage: ImageConstant.img233313.obs,
      effectImage: ImageConstant.img1moneyrain3.obs,
      buttonImage: ImageConstant.img1630x96.obs,
      buttonText: 'Details'.obs,
      badgeCount: 0.obs,
      hasBadge: false.obs,
    );
  }

  void onDownloadTap() {
    // Handle download app action
    Get.snackbar('Download', 'App download initiated');
  }

  void onCloseTap() {
    // Handle close banner action
    Get.snackbar('Notice', 'Banner closed');
  }

  void onCategoryTap(int index) {
    selectedCategoryIndex.value = index;

    // Update selected state for categories
    for (int i = 0; i < gameCategories.length; i++) {
      gameCategories[i].isSelected!.value = i == index;
    }

    // Filter games based on selected category
    filterGamesByCategory(index);
  }

  void filterGamesByCategory(int categoryIndex) {
    // Implementation for filtering games based on category
    // For now, we'll keep all games visible
    update();
  }

  void onGameTap(int index) {
    // Handle game selection
    Get.snackbar('Game Selected',
        'Playing ${gameItems[index].gameName?.value ?? 'Unknown Game'}');
  }

  void onWithdrawalTap() {
    // Handle withdrawal action
    Get.snackbar('Withdrawal', 'Withdrawal screen opened');
  }

  void onDepositTap() {
    // Handle deposit action
    Get.snackbar('Deposit', 'Deposit screen opened');
  }

  void onPromotionalBannerTap() {
    // Handle promotional banner tap
    Get.snackbar('Promotion', 'Promotional banner clicked');
  }

  void onRefreshBalance() {
    // Handle balance refresh
    Get.snackbar('Balance', 'Balance refreshed');
  }

  void onCollectTap() {
    // Handle collect jackpot action
    Get.snackbar('Collect', 'Jackpot collection initiated');
  }

  void onVipClubTap() {
    // Handle VIP club overlay tap
    Get.snackbar('VIP Club', 'VIP Club accessed');
  }

  void onMoneyRainTap() {
    // Handle money rain event tap
    Get.snackbar('Money Rain', 'Money Rain event accessed');
  }

  void onNoticeTap() {
    // Navigate to notice screen
    Get.toNamed(AppRoutes.noticeNotificationsScreen);
  }

  void onBottomNavTap(int index) {
    selectedBottomNavIndex.value = index;

    // Handle navigation based on index
    switch (index) {
      case 0:
        // Home - already on this screen
        break;
      case 1:
        // Promotion
        Get.snackbar('Navigation', 'Promotion screen');
        break;
      case 2:
        // Invite
        Get.snackbar('Navigation', 'Invite screen');
        break;
      case 3:
        // Deposit
        onDepositTap();
        break;
      case 4:
        // Teams
        Get.snackbar('Navigation', 'Teams screen');
        break;
    }
  }
}
