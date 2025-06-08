import '../../../core/app_export.dart';
import '../../../widgets/custom_sidebar.dart';
import '../models/game_failure_dialog_screen_model.dart';
import '../models/game_grid_item_model.dart';

class GameFailureDialogScreenController extends GetxController {
  Rx<GameFailureDialogScreenModel> gameFailureDialogScreenModel =
      GameFailureDialogScreenModel().obs;
  RxBool showDialog = true.obs;
  RxInt selectedSidebarIndex = 1.obs;
  RxList<GameGridItemModel> gameItems = <GameGridItemModel>[].obs;
  RxList<CustomSidebarItem> sidebarItems = <CustomSidebarItem>[].obs;

  @override
  void onInit() {
    super.onInit();
    initializeGameItems();
    initializeSidebarItems();
  }

  void initializeGameItems() {
    gameItems.value = [
      GameGridItemModel(
        gameImagePath: ImageConstant.img231000.obs,
        overlayImagePath: ImageConstant.imgGroup1019.obs,
        title: 'Fortune Ox fortune'.obs,
        overlayWidth: 18.obs,
        overlayHeight: 34.obs,
      ),
      GameGridItemModel(
        gameImagePath: ImageConstant.img491000.obs,
        overlayImagePath: ImageConstant.imgGroup1019.obs,
        specialOverlayPath: ImageConstant.imgGroup120461.obs,
        title: 'super Ace'.obs,
        overlayWidth: 18.obs,
        overlayHeight: 34.obs,
      ),
      GameGridItemModel(
        gameImagePath: ImageConstant.imgLogowj931.obs,
        overlayImagePath: ImageConstant.imgGroup1019.obs,
        title: 'Money Coming'.obs,
        isLogoCard: true.obs,
        overlayWidth: 18.obs,
        overlayHeight: 34.obs,
      ),
      GameGridItemModel(
        gameImagePath: ImageConstant.img102x1000.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        baccaratImagePath: ImageConstant.img1baccarat1.obs,
        title: 'Roma x'.obs,
        overlayWidth: 18.obs,
        overlayHeight: 34.obs,
      ),
      GameGridItemModel(
        gameImagePath: ImageConstant.img211000.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        baccaratImagePath: ImageConstant.imgBaccarat2.obs,
        title: 'diamond party'.obs,
        overlayWidth: 18.obs,
        overlayHeight: 34.obs,
      ),
      GameGridItemModel(
        gameImagePath: ImageConstant.img911000.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        baccaratImagePath: ImageConstant.imgBaccarat1.obs,
        title: 'lucky coming'.obs,
        hasNotificationDot: true.obs,
        badgeImagePath: ImageConstant.imgGroup11853.obs,
        overlayWidth: 18.obs,
        overlayHeight: 34.obs,
      ),
      GameGridItemModel(
        gameImagePath: ImageConstant.img277771000.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        title: 'Roma x'.obs,
        overlayWidth: 18.obs,
        overlayHeight: 34.obs,
      ),
      GameGridItemModel(
        gameImagePath: ImageConstant.img431000.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        title: 'diamond party'.obs,
        overlayWidth: 18.obs,
        overlayHeight: 34.obs,
      ),
      GameGridItemModel(
        gameImagePath: ImageConstant.img441000.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        title: 'lucky coming'.obs,
        hasBadge: true.obs,
        badgeNumber: '99'.obs,
        overlayWidth: 18.obs,
        overlayHeight: 34.obs,
      ),
      GameGridItemModel(
        gameImagePath: ImageConstant.img471000.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        title: 'Roma x'.obs,
        overlayWidth: 18.obs,
        overlayHeight: 34.obs,
      ),
      GameGridItemModel(
        gameImagePath: ImageConstant.img461000.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        title: 'diamond party'.obs,
        hasNotificationDot: true.obs,
        overlayWidth: 18.obs,
        overlayHeight: 34.obs,
      ),
      GameGridItemModel(
        gameImagePath: ImageConstant.imgJdbslot092.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
        overlayWidth: 18.obs,
        overlayHeight: 34.obs,
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
    // Handle download button press
  }

  void onClosePressed() {
    // Handle close button press
  }

  void onRefreshBalance() {
    // Handle refresh balance action
  }

  void onWithdrawalPressed() {
    // Handle withdrawal button press
  }

  void onDepositPressed() {
    // Handle deposit button press
  }

  void onSidebarItemTap(int index, CustomSidebarItem item) {
    selectedSidebarIndex.value = index;
    // Handle sidebar navigation
  }

  void onGameItemTap(GameGridItemModel gameItem) {
    // Handle game item tap
  }

  void onFabPressed() {
    // Handle floating action button press
  }

  void closeDialog() {
    showDialog.value = false;
  }

  void onGotItPressed() {
    showDialog.value = false;
  }
}
