import '../../../core/app_export.dart';
import '../../../widgets/custom_sidebar.dart';
import '../../../widgets/custom_winner_list.dart';
import '../models/game_grid_item_model.dart';
import '../models/spin_wheel_gameplay_model.dart';

class SpinWheelGameplayController extends GetxController {
  Rx<SpinWheelGameplayModel> spinWheelGameplayModel =
      SpinWheelGameplayModel().obs;
  RxBool showTicketEventOverlay = true.obs;
  RxInt selectedSidebarIndex = 1.obs;

  RxList<CustomSidebarItem> sidebarItems = <CustomSidebarItem>[].obs;
  RxList<GameGridItemModel> gameItems = <GameGridItemModel>[].obs;
  RxList<CustomWinnerItem> winnerItems = <CustomWinnerItem>[].obs;

  @override
  void onInit() {
    super.onInit();
    initializeSidebarItems();
    initializeGameItems();
    initializeWinnerItems();
  }

  void initializeSidebarItems() {
    sidebarItems.value = [
      CustomSidebarItem(
        iconPath: ImageConstant.imgVectorDeepOrangeA400,
        label: 'Hot',
        routeName: '/hot',
      ),
      CustomSidebarItem(
        iconPath: ImageConstant.img132x32,
        label: 'Collect',
        routeName: '/collect',
        isHighlighted: true,
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

  void initializeGameItems() {
    gameItems.value = [
      GameGridItemModel(
        gameImagePath: ImageConstant
            .img231000.obs, // Modified: Wrapped string in obs for Rx<String>
        overlayIconPath: ImageConstant
            .imgGroup1019.obs, // Modified: Wrapped string in obs for Rx<String>
        title: 'Fortune Ox fortune'
            .obs, // Modified: Wrapped string in obs for Rx<String>
        showTextShadow: true.obs,
      ),
      GameGridItemModel(
        gameImagePath: ImageConstant
            .img491000.obs, // Modified: Wrapped string in obs for Rx<String>
        overlayIconPath: ImageConstant
            .imgGroup1019.obs, // Modified: Wrapped string in obs for Rx<String>
        specialEffectImagePath: ImageConstant.imgGroup120461
            .obs, // Modified: Wrapped string in obs for Rx<String>
        title:
            'super Ace'.obs, // Modified: Wrapped string in obs for Rx<String>
        showTextShadow: true.obs,
      ),
      GameGridItemModel(
        gameImagePath: ImageConstant
            .imgLogowj931.obs, // Modified: Wrapped string in obs for Rx<String>
        overlayIconPath: ImageConstant
            .imgGroup1019.obs, // Modified: Wrapped string in obs for Rx<String>
        title: ''.obs, // Modified: Wrapped string in obs for Rx<String>
        isPlaceholder: true.obs,
        showTextShadow: false.obs,
      ),
      GameGridItemModel(
        gameImagePath: ImageConstant
            .img102x1000.obs, // Modified: Wrapped string in obs for Rx<String>
        overlayIconPath: ImageConstant
            .imgGroup1024.obs, // Modified: Wrapped string in obs for Rx<String>
        baccaratImagePath: ImageConstant.img1baccarat1
            .obs, // Modified: Wrapped string in obs for Rx<String>
        title: 'Money Coming'
            .obs, // Modified: Wrapped string in obs for Rx<String>
        showTextShadow: true.obs,
      ),
      GameGridItemModel(
        gameImagePath: ImageConstant
            .img211000.obs, // Modified: Wrapped string in obs for Rx<String>
        overlayIconPath: ImageConstant
            .imgGroup1024.obs, // Modified: Wrapped string in obs for Rx<String>
        baccaratImagePath: ImageConstant
            .imgBaccarat2.obs, // Modified: Wrapped string in obs for Rx<String>
        title:
            'super Ace'.obs, // Modified: Wrapped string in obs for Rx<String>
        showTextShadow: true.obs,
      ),
      GameGridItemModel(
        gameImagePath: ImageConstant
            .img911000.obs, // Modified: Wrapped string in obs for Rx<String>
        overlayIconPath: ImageConstant
            .imgGroup1024.obs, // Modified: Wrapped string in obs for Rx<String>
        baccaratImagePath: ImageConstant
            .imgBaccarat1.obs, // Modified: Wrapped string in obs for Rx<String>
        title: 'Money Coming'
            .obs, // Modified: Wrapped string in obs for Rx<String>
        badgeCount: 1.obs,
        showTextShadow: true.obs,
      ),
      GameGridItemModel(
        gameImagePath: ImageConstant
            .img277771000.obs, // Modified: Wrapped string in obs for Rx<String>
        overlayIconPath: ImageConstant
            .imgGroup1029.obs, // Modified: Wrapped string in obs for Rx<String>
        title: 'Roma x'.obs, // Modified: Wrapped string in obs for Rx<String>
        showTextShadow: true.obs,
      ),
      GameGridItemModel(
        gameImagePath: ImageConstant
            .img431000.obs, // Modified: Wrapped string in obs for Rx<String>
        overlayIconPath: ImageConstant
            .imgGroup1029.obs, // Modified: Wrapped string in obs for Rx<String>
        title: 'diamond party'
            .obs, // Modified: Wrapped string in obs for Rx<String>
        showTextShadow: true.obs,
      ),
      GameGridItemModel(
        gameImagePath: ImageConstant
            .img441000.obs, // Modified: Wrapped string in obs for Rx<String>
        overlayIconPath: ImageConstant
            .imgGroup1029.obs, // Modified: Wrapped string in obs for Rx<String>
        title: 'lucky coming'
            .obs, // Modified: Wrapped string in obs for Rx<String>
        hasProgressBar: true.obs,
        showTextShadow: true.obs,
      ),
      GameGridItemModel(
        gameImagePath: ImageConstant
            .img471000.obs, // Modified: Wrapped string in obs for Rx<String>
        overlayIconPath: ImageConstant
            .imgGroup1024.obs, // Modified: Wrapped string in obs for Rx<String>
        title: 'Roma x'.obs, // Modified: Wrapped string in obs for Rx<String>
        showTextShadow: true.obs,
      ),
      GameGridItemModel(
        gameImagePath: ImageConstant
            .img461000.obs, // Modified: Wrapped string in obs for Rx<String>
        overlayIconPath: ImageConstant
            .imgGroup1024.obs, // Modified: Wrapped string in obs for Rx<String>
        title: 'diamond party'
            .obs, // Modified: Wrapped string in obs for Rx<String>
        hasRedDot: true.obs,
        showTextShadow: true.obs,
      ),
      GameGridItemModel(
        gameImagePath: ImageConstant.imgJdbslot092
            .obs, // Modified: Wrapped string in obs for Rx<String>
        overlayIconPath: ImageConstant
            .imgGroup1024.obs, // Modified: Wrapped string in obs for Rx<String>
        title: 'lucky coming'
            .obs, // Modified: Wrapped string in obs for Rx<String>
        showTextShadow: true.obs,
      ),
    ];
  }

  void initializeWinnerItems() {
    winnerItems.value = [
      CustomWinnerItem(
        avatarPath: ImageConstant.imgEllipse539,
        username: '123***123',
        bonusAmount: '₱ 1,000,000,000.00',
      ),
      CustomWinnerItem(
        avatarPath: ImageConstant.imgEllipse53920x20,
        username: '123***123',
        bonusAmount: '₱ 1,000,000,000.00',
      ),
      CustomWinnerItem(
        avatarPath: ImageConstant.imgEllipse5391,
        username: '124***123',
        bonusAmount: '₱ 1,000,000,000.00',
      ),
    ];
  }

  void onDownloadPressed() {
    // Handle download action
  }

  void onClosePressed() {
    // Handle close action
  }

  void onBalanceActionTap() {
    // Handle balance action tap
  }

  void onWithdrawalPressed() {
    // Handle withdrawal action
  }

  void onDepositPressed() {
    // Handle deposit action
  }

  void onSidebarItemTap(int index) {
    selectedSidebarIndex.value = index;
    // Handle sidebar navigation based on index
  }

  void onGameItemTap(int index) {
    // Handle game item tap
  }

  void onCloseTicketEvent() {
    showTicketEventOverlay.value = false;
  }

  void onClaimPressed() {
    // Handle claim action
    Get.toNamed(AppRoutes.ticketClaimInfoScreen);
  }

  @override
  void onClose() {
    super.onClose();
  }
}
