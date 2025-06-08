import '../../../core/app_export.dart';
import '../models/gaming_casino_vip_rewards_screen_two_model.dart';

class GamingCasinoVipRewardsScreenTwoController extends GetxController {
  Rx<GamingCasinoVipRewardsScreenTwoModel>
      gamingCasinoVipRewardsScreenTwoModelObj =
      GamingCasinoVipRewardsScreenTwoModel().obs;

  RxString balanceAmount = 'R\$1980.00'.obs;
  RxBool showVipModal = true.obs;
  RxString rewardAmount = '₱453'.obs;
  RxString timeLeft = 'Time left to collect:6day 23:59:59'.obs;
  RxInt selectedCategoryIndex = 0.obs;

  RxList<GameItemModel> gameItems = <GameItemModel>[].obs;
  RxList<CategoryItemModel> categoryItems = <CategoryItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _initializeGameItems();
    _initializeCategoryItems();
  }

  void _initializeGameItems() {
    gameItems.value = [
      GameItemModel(
        imagePath: ImageConstant.img231000.obs,
        overlayImagePath: ImageConstant.imgGroup1019.obs,
        title: 'Fortune Ox fortune'.obs,
        hasNotification: false.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img491000.obs,
        title: 'super Ace'.obs,
        hasNotification: false.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.imgLogowj93120x56.obs,
        title: 'Money Coming'.obs,
        hasNotification: false.obs,
        isCustomBackground: true.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img102x1000.obs,
        overlayImagePath: ImageConstant.img1baccarat1.obs,
        playIconPath: ImageConstant.imgGroup1024.obs,
        title: 'Fortune Ox fortune'.obs,
        hasNotification: false.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img211000.obs,
        overlayImagePath: ImageConstant.imgBaccarat2.obs,
        playIconPath: ImageConstant.imgGroup1024.obs,
        title: 'super Ace'.obs,
        hasNotification: false.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img911000.obs,
        overlayImagePath: ImageConstant.imgBaccarat1.obs,
        playIconPath: ImageConstant.imgGroup1024.obs,
        title: 'Money Coming'.obs,
        hasNotification: true.obs,
        notificationCount: 1.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img277771000.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        title: 'Roma x'.obs,
        hasNotification: false.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img431000.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        title: 'diamond party'.obs,
        hasNotification: false.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img441000.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        title: 'lucky coming'.obs,
        hasNotification: false.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img471000.obs,
        playIconPath: ImageConstant.imgGroup1024.obs,
        title: 'Roma x'.obs,
        hasNotification: false.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img461000.obs,
        playIconPath: ImageConstant.imgGroup1024.obs,
        title: 'diamond party'.obs,
        hasNotification: false.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.imgJdbslot092.obs,
        playIconPath: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
        hasNotification: false.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img771000.obs,
        playIconPath: ImageConstant.imgGroup1024.obs,
        title: 'Roma x'.obs,
        hasNotification: false.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img401000.obs,
        playIconPath: ImageConstant.imgGroup1024.obs,
        title: 'diamond party'.obs,
        hasNotification: false.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.imgJdbslot105.obs,
        playIconPath: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
        hasNotification: false.obs,
      ),
    ];
  }

  void _initializeCategoryItems() {
    categoryItems.value = [
      CategoryItemModel(
        iconPath: ImageConstant.imgVectorDeepOrangeA400.obs,
        title: 'Hot'.obs,
        isSelected: true.obs,
      ),
      CategoryItemModel(
        iconPath: ImageConstant.img10733643587.obs,
        title: 'Slot'.obs,
        isSelected: false.obs,
      ),
      CategoryItemModel(
        iconPath: ImageConstant.img136x36.obs,
        title: 'Live'.obs,
        isSelected: false.obs,
      ),
      CategoryItemModel(
        iconPath: ImageConstant.img5.obs,
        title: 'Bingo'.obs,
        isSelected: false.obs,
      ),
      CategoryItemModel(
        iconPath: ImageConstant.img236x36.obs,
        title: 'Table'.obs,
        isSelected: false.obs,
      ),
      CategoryItemModel(
        iconPath: ImageConstant.img7.obs,
        title: 'Fish'.obs,
        isSelected: false.obs,
      ),
      CategoryItemModel(
        iconPath: ImageConstant.img336x36.obs,
        title: 'Egame'.obs,
        isSelected: false.obs,
      ),
      CategoryItemModel(
        iconPath: ImageConstant.img6.obs,
        title: 'Sport'.obs,
        isSelected: false.obs,
      ),
    ];
  }

  void onDownloadTap() {
    // Handle download action
  }

  void onCloseBannerTap() {
    // Handle close banner action
  }

  void onRefreshBalanceTap() {
    // Handle refresh balance action
  }

  void onWithdrawalTap() {
    Get.toNamed(AppRoutes.gCashDepositRecordScreen);
  }

  void onDepositTap() {
    Get.toNamed(AppRoutes.gCashDepositRecordScreen);
  }

  void onCloseNotificationTap() {
    // Handle close notification action
  }

  void onGameTap(GameItemModel gameItem) {
    // Handle game tap action
  }

  void onCategoryTap(int index) {
    selectedCategoryIndex.value = index;
    for (int i = 0; i < categoryItems.length; i++) {
      categoryItems[i].isSelected?.value = i == index;
    }
    categoryItems.refresh();
  }

  void onVipItemTap(int index) {
    if (index == 4) {
      showVipModal.value = true;
    }
  }

  void onCollectTap() {
    // Handle collect action
  }

  void onBottomNavTap(int index) {
    switch (index) {
      case 0:
        Get.toNamed(AppRoutes.gamingCasinoVipRewardsScreen);
        break;
      case 1:
        Get.toNamed(AppRoutes.bonusCenterScreen);
        break;
      case 2:
        Get.toNamed(AppRoutes.experienceBonusGameScreen);
        break;
      case 3:
        Get.toNamed(AppRoutes.gCashDepositRecordScreen);
        break;
      case 4:
        Get.toNamed(AppRoutes.achievementBonusReceivedScreen);
        break;
    }
  }

  void onCloseModalTap() {
    showVipModal.value = false;
  }

  void onPreviousRewardTap() {
    // Handle previous reward navigation
  }

  void onNextRewardTap() {
    // Handle next reward navigation
  }

  void onReceivedTap() {
    // Handle received button action
  }
}
