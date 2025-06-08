import '../../../core/app_export.dart';
import '../../../widgets/custom_sidebar.dart';
import '../models/game_card_item_model.dart';

class LuckyWheelSpinController extends GetxController {
  RxBool showLuckyWheelDialog = true.obs;
  RxInt selectedSidebarIndex = 1.obs;
  RxList<GameCardItemModel> gameItems = <GameCardItemModel>[].obs;
  Rx<List<CustomSidebarItem>> sidebarItems = Rx<List<CustomSidebarItem>>([]);

  @override
  void onInit() {
    super.onInit();
    initializeGameItems();
    initializeSidebarItems();
  }

  void initializeGameItems() {
    gameItems.value = [
      GameCardItemModel(
        gameImagePath: ImageConstant.img231000.obs,
        title: 'Fortune Ox fortune'.obs,
        overlayImagePath: ImageConstant.imgGroup1019.obs,
        overlayWidth: 34.h.obs,
        overlayHeight: 18.h.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img491000.obs,
        title: 'super Ace'.obs,
        overlayImagePath: ImageConstant.imgGroup1019.obs,
        overlayWidth: 34.h.obs,
        overlayHeight: 18.h.obs,
        hasSpecialOverlay: true.obs,
        specialOverlayPath: ImageConstant.imgGroup120461.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.imgLogowj931.obs,
        title: ''.obs,
        overlayImagePath: ImageConstant.imgGroup1019.obs,
        overlayWidth: 34.h.obs,
        overlayHeight: 18.h.obs,
        isLogoCard: true.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img102x1000.obs,
        title: 'Roma x'.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        overlayWidth: 34.h.obs,
        overlayHeight: 18.h.obs,
        secondaryOverlayPath: ImageConstant.img1baccarat1.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img211000.obs,
        title: 'diamond party'.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        overlayWidth: 34.h.obs,
        overlayHeight: 18.h.obs,
        secondaryOverlayPath: ImageConstant.imgBaccarat2.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img911000.obs,
        title: 'Money Coming'.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        overlayWidth: 34.h.obs,
        overlayHeight: 18.h.obs,
        secondaryOverlayPath: ImageConstant.imgBaccarat1.obs,
        showNotificationDot: true.obs,
        notificationText: '1'.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img277771000.obs,
        title: 'Roma x'.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        overlayWidth: 34.h.obs,
        overlayHeight: 18.h.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img431000.obs,
        title: 'diamond party'.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        overlayWidth: 34.h.obs,
        overlayHeight: 18.h.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img441000.obs,
        title: 'lucky coming'.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        overlayWidth: 34.h.obs,
        overlayHeight: 18.h.obs,
        showBadge: true.obs,
        badgeImagePath: ImageConstant.imgGroup827.obs,
        badgeText: '99'.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img471000.obs,
        title: 'Roma x'.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        overlayWidth: 34.h.obs,
        overlayHeight: 18.h.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img461000.obs,
        title: 'diamond party'.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        overlayWidth: 34.h.obs,
        overlayHeight: 18.h.obs,
        showNotificationDot: true.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.imgJdbslot092.obs,
        title: 'lucky coming'.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        overlayWidth: 34.h.obs,
        overlayHeight: 18.h.obs,
      ),
    ];
  }

  void initializeSidebarItems() {
    sidebarItems.value = [
      CustomSidebarItem(
        iconPath: ImageConstant.imgVectorDeepOrangeA400,
        label: 'Hot',
        routeName: '/hot',
        iconHeight: 27.h,
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
    Get.snackbar(
      'Download',
      'App download started',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void onClosePressed() {
    Get.back();
  }

  void onBalanceActionTap() {
    Get.snackbar(
      'Balance',
      'Add balance functionality',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void onWithdrawalPressed() {
    Get.snackbar(
      'Withdrawal',
      'Withdrawal functionality',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void onDepositPressed() {
    Get.snackbar(
      'Deposit',
      'Deposit functionality',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void onGameCardTap(int index) {
    Get.snackbar(
      'Game Selected',
      'Opening ${gameItems[index].title?.value ?? 'game'}',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void onSidebarItemTap(int index, CustomSidebarItem item) {
    selectedSidebarIndex.value = index;
    Get.snackbar(
      'Category Selected',
      'Selected ${item.label}',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void closeLuckyWheelDialog() {
    showLuckyWheelDialog.value = false;
  }

  void onConfirmPrize() {
    Get.snackbar(
      'Prize Confirmed',
      '₱19.20 added to your account',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: appTheme.colorFF85D4,
      colorText: appTheme.whiteCustom,
    );
    showLuckyWheelDialog.value = false;
  }
}
