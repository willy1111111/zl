import '../../../core/app_export.dart';
import '../../../widgets/custom_sidebar.dart';
import '../models/game_card_item_model.dart';
import '../models/golden_egg_reward_dialog_model.dart';

class GoldenEggRewardDialogController extends GetxController {
  Rx<GoldenEggRewardDialogModel> goldenEggRewardDialogModelObj =
      GoldenEggRewardDialogModel().obs;

  RxBool showRewardDialog = true.obs;
  RxString prizeAmount = '₱19.20'.obs;
  RxInt selectedSidebarIndex = 1.obs;

  RxList<GameCardItemModel> gameCards = <GameCardItemModel>[].obs;
  RxList<CustomSidebarItem> sidebarItems = <CustomSidebarItem>[].obs;

  @override
  void onInit() {
    super.onInit();
    initializeGameCards();
    initializeSidebarItems();
  }

  void initializeGameCards() {
    gameCards.value = [
      GameCardItemModel(
        gameImagePath: ImageConstant.img231000.obs,
        overlayImagePath: ImageConstant.imgGroup1019.obs,
        title: 'Fortune Ox fortune'.obs,
        overlayWidth: 18.obs,
        overlayHeight: 34.obs,
        showNotificationDot: false.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img491000.obs,
        overlayImagePath: ImageConstant.imgGroup1019.obs,
        specialOverlayPath: ImageConstant.imgGroup120461.obs,
        title: 'super Ace'.obs,
        overlayWidth: 18.obs,
        overlayHeight: 34.obs,
        showNotificationDot: false.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.imgLogowj931.obs,
        overlayImagePath: ImageConstant.imgGroup1019.obs,
        title: 'Money Coming'.obs,
        isLogoCard: true.obs,
        overlayWidth: 18.obs,
        overlayHeight: 34.obs,
        showNotificationDot: false.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img102x1000.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        backgroundOverlayPath: ImageConstant.img1baccarat1.obs,
        title: 'Roma x'.obs,
        overlayWidth: 18.obs,
        overlayHeight: 34.obs,
        showNotificationDot: false.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img211000.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        backgroundOverlayPath: ImageConstant.imgBaccarat2.obs,
        title: 'diamond party'.obs,
        overlayWidth: 18.obs,
        overlayHeight: 34.obs,
        showNotificationDot: false.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img911000.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        backgroundOverlayPath: ImageConstant.imgBaccarat1.obs,
        title: 'lucky coming'.obs,
        overlayWidth: 18.obs,
        overlayHeight: 34.obs,
        showNotificationDot: true.obs,
        notificationNumber: '1'.obs,
        notificationTop: 64.obs,
        notificationRight: 1.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img277771000.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        title: 'Roma x'.obs,
        overlayWidth: 18.obs,
        overlayHeight: 34.obs,
        showNotificationDot: false.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img431000.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        title: 'diamond party'.obs,
        overlayWidth: 18.obs,
        overlayHeight: 34.obs,
        showNotificationDot: false.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img441000.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        title: 'lucky coming'.obs,
        overlayWidth: 18.obs,
        overlayHeight: 34.obs,
        showNotificationDot: false.obs,
        hasSpecialLine: true.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img471000.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        title: 'Roma x'.obs,
        overlayWidth: 18.obs,
        overlayHeight: 34.obs,
        showNotificationDot: false.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img461000.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        title: 'diamond party'.obs,
        overlayWidth: 18.obs,
        overlayHeight: 34.obs,
        showNotificationDot: true.obs,
        notificationTop: 18.obs,
        notificationRight: 27.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.imgJdbslot092.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
        overlayWidth: 18.obs,
        overlayHeight: 34.obs,
        showNotificationDot: false.obs,
      ),
    ];
  }

  void initializeSidebarItems() {
    sidebarItems.value = [
      CustomSidebarItem(
        iconPath: ImageConstant.imgVectorDeepOrangeA400,
        label: 'Hot',
        routeName: '/hot',
        iconHeight: 27,
      ),
      CustomSidebarItem(
        iconPath: ImageConstant.img132x32,
        label: 'Collect',
        routeName: '/collect',
      ),
      CustomSidebarItem(
        iconPath: ImageConstant.img10733643587,
        label: 'Slot',
        routeName: '/slot',
      ),
      CustomSidebarItem(
        iconPath: ImageConstant.img103,
        label: 'Live',
        routeName: '/live',
      ),
      CustomSidebarItem(
        iconPath: ImageConstant.img5,
        label: 'Bingo',
        routeName: '/bingo',
      ),
      CustomSidebarItem(
        iconPath: ImageConstant.img2,
        label: 'Table',
        routeName: '/table',
      ),
      CustomSidebarItem(
        iconPath: ImageConstant.img7,
        label: 'Fish',
        routeName: '/fish',
      ),
      CustomSidebarItem(
        iconPath: ImageConstant.img3,
        label: 'Egame',
        routeName: '/egame',
      ),
      CustomSidebarItem(
        iconPath: ImageConstant.img6,
        label: 'Sport',
        routeName: '/sport',
      ),
    ];
  }

  void onDownloadPressed() {
    // Handle download button action
  }

  void onClosePressed() {
    Get.back();
  }

  void onBalanceRefresh() {
    // Handle balance refresh action
  }

  void onWithdrawalPressed() {
    // Handle withdrawal action
  }

  void onDepositPressed() {
    // Handle deposit action
  }

  void onSidebarItemTap(int index, CustomSidebarItem item) {
    selectedSidebarIndex.value = index;
    // Handle sidebar navigation
  }

  void onGameCardTap(GameCardItemModel gameCard, int index) {
    // Handle game card tap action
  }

  void onCloseRewardDialog() {
    showRewardDialog.value = false;
  }

  void onConfirmReward() {
    showRewardDialog.value = false;
    // Handle reward confirmation
  }
}
