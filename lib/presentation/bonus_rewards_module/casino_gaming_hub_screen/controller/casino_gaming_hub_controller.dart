import '../../../../../core/app_export.dart';
import '../models/casino_gaming_hub_model.dart';
import '../models/game_item_model.dart';
import '../models/sidebar_menu_item_model.dart';

class CasinoGamingHubController extends GetxController {
  Rx<CasinoGamingHubModel?> casinoGamingHubModel =
      Rx<CasinoGamingHubModel?>(null);
  RxList<GameItemModel> gameItems = <GameItemModel>[].obs;
  RxList<SidebarMenuItemModel> sidebarMenuItems = <SidebarMenuItemModel>[].obs;
  RxBool isPromoBannerVisible = true.obs;
  RxBool isInstallPromptVisible = true.obs;
  RxInt selectedSidebarIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    casinoGamingHubModel.value = CasinoGamingHubModel();
    initializeGameItems();
    initializeSidebarMenuItems();
  }

  void initializeGameItems() {
    gameItems.value = [
      GameItemModel(
        imagePath: ImageConstant.img231000.obs,
        title: 'Fortune Ox fortune'.obs,
        overlayImagePath: ImageConstant.imgGroup1019.obs,
        badgeNumber: null,
      ),
      GameItemModel(
        imagePath: ImageConstant.img491000.obs,
        title: 'super Ace'.obs,
        overlayImagePath: null,
        badgeNumber: null,
      ),
      GameItemModel(
        imagePath: ImageConstant.imgLogowj93120x56.obs,
        title: 'Money Coming'.obs,
        overlayImagePath: null,
        badgeNumber: null,
        hasCustomBackground: true.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img102x1000.obs,
        title: 'Roma x'.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        badgeNumber: null,
        hasSecondaryOverlay: true.obs,
        secondaryOverlayPath: ImageConstant.img1baccarat188x88.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img211000.obs,
        title: 'diamond party'.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        badgeNumber: null,
        hasSecondaryOverlay: true.obs,
        secondaryOverlayPath: ImageConstant.imgBaccarat288x88.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img911000.obs,
        title: 'lucky coming'.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        badgeNumber: 1.obs,
        hasSecondaryOverlay: true.obs,
        secondaryOverlayPath: ImageConstant.imgBaccarat1.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img277771000.obs,
        title: 'Roma x'.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        badgeNumber: null,
      ),
      GameItemModel(
        imagePath: ImageConstant.img431000.obs,
        title: 'diamond party'.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        badgeNumber: null,
      ),
      GameItemModel(
        imagePath: ImageConstant.img441000.obs,
        title: 'lucky coming'.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        badgeNumber: null,
      ),
      GameItemModel(
        imagePath: ImageConstant.img471000.obs,
        title: 'Roma x'.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        badgeNumber: null,
      ),
      GameItemModel(
        imagePath: ImageConstant.img461000.obs,
        title: 'diamond party'.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        badgeNumber: null,
      ),
      GameItemModel(
        imagePath: ImageConstant.imgJdbslot092.obs,
        title: 'lucky coming'.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        badgeNumber: null,
      ),
      GameItemModel(
        imagePath: ImageConstant.img771000.obs,
        title: 'Roma x'.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        badgeNumber: null,
      ),
      GameItemModel(
        imagePath: ImageConstant.img401000.obs,
        title: 'diamond party'.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        badgeNumber: null,
      ),
      GameItemModel(
        imagePath: ImageConstant.imgJdbslot105.obs,
        title: 'lucky coming'.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        badgeNumber: null,
      ),
    ];
  }

  void initializeSidebarMenuItems() {
    sidebarMenuItems.value = [
      SidebarMenuItemModel(
        iconPath: ImageConstant.imgVectorDeepOrangeA40001.obs,
        title: 'Hot'.obs,
        isSelected: true.obs,
      ),
      SidebarMenuItemModel(
        iconPath: ImageConstant.img10733643587.obs,
        title: 'Slot'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        iconPath: ImageConstant.img136x36.obs,
        title: 'Live'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        iconPath: ImageConstant.img536x36.obs,
        title: 'Bingo'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        iconPath: ImageConstant.img236x36.obs,
        title: 'Table'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        iconPath: ImageConstant.img7.obs,
        title: 'Fish'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        iconPath: ImageConstant.img3.obs,
        title: 'Egame'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        iconPath: ImageConstant.img6.obs,
        title: 'Sport'.obs,
        isSelected: false.obs,
      ),
    ];
  }

  void onDownloadTapped() {
    Get.toNamed(AppRoutes.gamingAppDownloadScreen);
  }

  void closePromoBanner() {
    isPromoBannerVisible.value = false;
  }

  void refreshBalance() {
    // Simulate balance refresh
    casinoGamingHubModel.value?.balance?.value =
        'R\$${(2000 + (DateTime.now().millisecond % 500)).toStringAsFixed(2)}';
    casinoGamingHubModel.refresh();
  }

  void onWithdrawalTapped() {
    // Navigate to withdrawal screen
    print('Withdrawal tapped');
  }

  void onDepositTapped() {
    // Navigate to deposit screen
    print('Deposit tapped');
  }

  void onCollectTapped() {
    Get.toNamed(AppRoutes.signInRewardsScreen);
  }

  void onSidebarItemTapped(int index) {
    selectedSidebarIndex.value = index;

    // Update selected state for all items
    for (int i = 0; i < sidebarMenuItems.length; i++) {
      sidebarMenuItems[i].isSelected?.value = i == index;
    }
    sidebarMenuItems.refresh();
  }

  void onGameItemTapped(GameItemModel gameItem) {
    print('Game tapped: ${gameItem.title?.value}');
    // Handle game selection logic
  }

  void onSupportTapped() {
    print('Support button tapped');
    // Handle support functionality
  }

  void cancelInstallation() {
    isInstallPromptVisible.value = false;
  }

  void installApp() {
    isInstallPromptVisible.value = false;
    Get.toNamed(AppRoutes.gamingAppDownloadScreen);
  }

  @override
  void onClose() {
    super.onClose();
  }
}
