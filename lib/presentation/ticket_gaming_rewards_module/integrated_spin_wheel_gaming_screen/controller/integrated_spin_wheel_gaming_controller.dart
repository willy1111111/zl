import '../../../core/app_export.dart';
import '../../../widgets/custom_sidebar.dart';
import '../../../widgets/custom_winner_list.dart';
import '../models/game_item_model.dart';
import '../models/integrated_spin_wheel_gaming_model.dart';

class IntegratedSpinWheelGamingController extends GetxController {
  Rx<IntegratedSpinWheelGamingModel> integratedSpinWheelGamingModelObj =
      IntegratedSpinWheelGamingModel().obs;

  RxBool showTicketEventModal = true.obs;
  RxDouble wheelRotation = 0.0.obs;
  RxInt selectedSidebarIndex = 1.obs;

  RxList<CustomSidebarItem> sidebarItems = <CustomSidebarItem>[].obs;
  RxList<GameItemModel> gameItems = <GameItemModel>[].obs;
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
      GameItemModel(
        gameImage: ImageConstant.img231000.obs,
        overlayIcon: ImageConstant.imgGroup1019.obs,
        title: 'Fortune Ox fortune'.obs,
        gameType: GameType.basic.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img491000.obs,
        overlayIcon: ImageConstant.imgGroup1019.obs,
        specialEffect: ImageConstant.imgGroup120461.obs,
        title: 'super Ace'.obs,
        gameType: GameType.special.obs,
      ),
      GameItemModel(
        gameImage: ''.obs,
        overlayIcon: ImageConstant.imgGroup1019.obs,
        title: 'Money Coming'.obs,
        gameType: GameType.placeholder.obs,
        logoImage: ImageConstant.imgLogowj931.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img102x1000.obs,
        overlayImage: ImageConstant.img1baccarat1.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        title: 'Roma x'.obs,
        gameType: GameType.overlay.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img211000.obs,
        overlayImage: ImageConstant.imgBaccarat2.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        title: 'diamond party'.obs,
        gameType: GameType.overlay.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img911000.obs,
        overlayImage: ImageConstant.imgBaccarat1.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
        gameType: GameType.withBadge.obs,
        badgeCount: 1.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img277771000.obs,
        overlayIcon: ImageConstant.imgGroup1029.obs,
        title: 'Roma x'.obs,
        gameType: GameType.basic.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img431000.obs,
        overlayIcon: ImageConstant.imgGroup1029.obs,
        title: 'diamond party'.obs,
        gameType: GameType.basic.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img441000.obs,
        overlayIcon: ImageConstant.imgGroup1029.obs,
        title: 'lucky coming'.obs,
        gameType: GameType.withProgress.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img471000.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        title: 'Roma x'.obs,
        gameType: GameType.basic.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img461000.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        title: 'diamond party'.obs,
        gameType: GameType.withRedDot.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.imgJdbslot092.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
        gameType: GameType.basic.obs,
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
    // Handle download button press
  }

  void onClosePressed() {
    // Handle close button press
  }

  void onWithdrawalPressed() {
    // Handle withdrawal button press
  }

  void onDepositPressed() {
    // Handle deposit button press
  }

  void onBalanceRefresh() {
    // Handle balance refresh
  }

  void onSidebarItemTap(int index) {
    selectedSidebarIndex.value = index;
  }

  void onGameItemTap(int index) {
    // Handle game item tap
  }

  void onFabTap() {
    showTicketEventModal.value = true;
  }

  void onCloseModal() {
    showTicketEventModal.value = false;
  }

  void onClaimPressed() {
    wheelRotation.value += 4.0;
    // Handle claim button press and spin wheel
  }
}
