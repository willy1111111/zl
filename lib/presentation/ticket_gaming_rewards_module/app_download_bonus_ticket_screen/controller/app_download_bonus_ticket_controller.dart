import '../../../core/app_export.dart';
import '../models/app_download_bonus_ticket_model.dart';
import '../models/game_item_model.dart';
import '../models/sidebar_item_model.dart';
import '../models/winner_item_model.dart';

class AppDownloadBonusTicketController extends GetxController {
  Rx<AppDownloadBonusTicketModel> appDownloadBonusTicketModel =
      AppDownloadBonusTicketModel().obs;

  // Observable variables
  RxBool showEventOverlay = true.obs;
  RxInt selectedSidebarIndex = 1.obs;
  RxString days = '02'.obs;
  RxString hours = '01'.obs;
  RxString minutes = '21'.obs;
  RxString seconds = '06'.obs;

  // List variables
  RxList<GameItemModel> gameItems = <GameItemModel>[].obs;
  RxList<WinnerItemModel> winnerItems = <WinnerItemModel>[].obs;
  RxList<SidebarItemModel> sidebarItems = <SidebarItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    appDownloadBonusTicketModel.value = AppDownloadBonusTicketModel();
    _initializeData();
    _startCountdownTimer();
  }

  void _initializeData() {
    // Initialize sidebar items
    sidebarItems.value = [
      SidebarItemModel(
        iconPath: ImageConstant.imgVectorDeepOrangeA400.obs,
        label: 'Hot'.obs,
        routeName: '/hot'.obs,
        isSelected: false.obs,
      ),
      SidebarItemModel(
        iconPath: ImageConstant.img132x32.obs,
        label: 'Collect'.obs,
        routeName: '/collect'.obs,
        isSelected: true.obs,
      ),
      SidebarItemModel(
        iconPath: ImageConstant.img10733643587.obs,
        label: 'Slot'.obs,
        routeName: '/slot'.obs,
        isSelected: false.obs,
      ),
      SidebarItemModel(
        iconPath: ImageConstant.img103.obs,
        label: 'Live'.obs,
        routeName: '/live'.obs,
        isSelected: false.obs,
      ),
      SidebarItemModel(
        iconPath: ImageConstant.img5.obs,
        label: 'Bingo'.obs,
        routeName: '/bingo'.obs,
        isSelected: false.obs,
      ),
      SidebarItemModel(
        iconPath: ImageConstant.img2.obs,
        label: 'Table'.obs,
        routeName: '/table'.obs,
        isSelected: false.obs,
      ),
      SidebarItemModel(
        iconPath: ImageConstant.img7.obs,
        label: 'Fish'.obs,
        routeName: '/fish'.obs,
        isSelected: false.obs,
      ),
      SidebarItemModel(
        iconPath: ImageConstant.img3.obs,
        label: 'Egame'.obs,
        routeName: '/egame'.obs,
        isSelected: false.obs,
      ),
      SidebarItemModel(
        iconPath: ImageConstant.img6.obs,
        label: 'Sport'.obs,
        routeName: '/sport'.obs,
        isSelected: false.obs,
      ),
    ];

    // Initialize winner items
    winnerItems.value = [
      WinnerItemModel(
        avatarPath: ImageConstant.imgEllipse539.obs,
        username: '123***123'.obs,
        bonusAmount: '₱ 1,000,000,000.00'.obs,
      ),
      WinnerItemModel(
        avatarPath: ImageConstant.imgEllipse53920x20.obs,
        username: '123***123'.obs,
        bonusAmount: '₱ 1,000,000,000.00'.obs,
      ),
      WinnerItemModel(
        avatarPath: ImageConstant.imgEllipse5391.obs,
        username: '124***123'.obs,
        bonusAmount: '₱ 1,000,000,000.00'.obs,
      ),
    ];

    // Initialize game items
    gameItems.value = [
      GameItemModel(
        imagePath: ImageConstant.img231000.obs,
        overlayIconPath: ImageConstant.imgGroup1019.obs,
        title: 'Fortune Ox fortune'.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img491000.obs,
        overlayIconPath: ImageConstant.imgGroup1019.obs,
        title: 'super Ace'.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img102x1000.obs,
        overlayIconPath: ImageConstant.imgGroup1024.obs,
        title: 'Money Coming'.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img211000.obs,
        overlayIconPath: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img911000.obs,
        overlayIconPath: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
        hasNotification: true.obs,
      ),
    ];
  }

  void _startCountdownTimer() {
    // Simple countdown timer implementation
    Future.delayed(Duration(seconds: 1), () {
      int currentSeconds = int.parse(seconds.value);
      if (currentSeconds > 0) {
        seconds.value = (currentSeconds - 1).toString().padLeft(2, '0');
      } else {
        seconds.value = '59';
        int currentMinutes = int.parse(minutes.value);
        if (currentMinutes > 0) {
          minutes.value = (currentMinutes - 1).toString().padLeft(2, '0');
        } else {
          minutes.value = '59';
          int currentHours = int.parse(hours.value);
          if (currentHours > 0) {
            hours.value = (currentHours - 1).toString().padLeft(2, '0');
          } else {
            hours.value = '23';
            int currentDays = int.parse(days.value);
            if (currentDays > 0) {
              days.value = (currentDays - 1).toString().padLeft(2, '0');
            }
          }
        }
      }
      _startCountdownTimer();
    });
  }

  void onDownloadPressed() {
    // Handle download button press
    Get.snackbar('Download', 'Download started');
  }

  void onClosePressed() {
    // Handle close button press
    Get.back();
  }

  void onWithdrawalPressed() {
    // Handle withdrawal button press
    Get.snackbar('Withdrawal', 'Withdrawal action');
  }

  void onDepositPressed() {
    // Handle deposit button press
    Get.snackbar('Deposit', 'Deposit action');
  }

  void onBalanceRefresh() {
    // Handle balance refresh
    Get.snackbar('Balance', 'Balance refreshed');
  }

  void onGameTap(int index) {
    // Handle game tile tap
    Get.snackbar('Game', 'Game ${index + 1} selected');
  }

  void onSidebarItemTap(int index) {
    selectedSidebarIndex.value = index;

    // Update selected state
    for (int i = 0; i < sidebarItems.length; i++) {
      sidebarItems[i].isSelected?.value = i == index;
    }

    // Navigate based on selection
    String routeName = sidebarItems[index].routeName?.value ?? '';
    if (routeName.isNotEmpty) {
      Get.snackbar('Navigation', 'Navigating to $routeName');
    }
  }

  void onEventOptionTap(int index) {
    switch (index) {
      case 0:
        Get.toNamed(AppRoutes.luckyWheelTicketEventScreen);
        break;
      case 1:
        Get.toNamed(AppRoutes.redPackageTicketEventScreen);
        break;
      case 2:
        Get.toNamed(AppRoutes.cashVoucherRewardScreen);
        break;
    }
  }

  void onPreviousEvent() {
    // Handle previous event navigation
    Get.snackbar('Navigation', 'Previous event');
  }

  void onNextEvent() {
    // Handle next event navigation
    Get.snackbar('Navigation', 'Next event');
  }

  void closeEventOverlay() {
    showEventOverlay.value = false;
  }

  void onClaimPressed() {
    // Handle claim button press
    Get.toNamed(AppRoutes.treasureChestTicketClaimScreen);
  }

  @override
  void onClose() {
    super.onClose();
  }
}
