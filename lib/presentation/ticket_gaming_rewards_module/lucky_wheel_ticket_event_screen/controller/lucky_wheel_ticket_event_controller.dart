import 'dart:async';

import '../../../core/app_export.dart';
import '../../../widgets/custom_sidebar.dart';
import '../models/game_grid_item_model.dart';
import '../models/lucky_wheel_ticket_event_model.dart';
import '../models/winner_item_model.dart';

class LuckyWheelTicketEventController extends GetxController {
  Rx<LuckyWheelTicketEventModel> luckyWheelTicketEventModel =
      LuckyWheelTicketEventModel().obs;

  RxString hours = '01'.obs;
  RxString minutes = '21'.obs;
  RxString seconds = '06'.obs;

  RxList<CustomSidebarItem> sidebarItems = <CustomSidebarItem>[].obs;
  RxList<WinnerItemModel> winnerItems = <WinnerItemModel>[].obs;
  RxList<GameGridItemModel> gameItems = <GameGridItemModel>[].obs;

  RxBool isSpinning = false.obs;
  RxDouble progress = 0.1.obs;

  Timer? countdownTimer;

  @override
  void onInit() {
    super.onInit();
    luckyWheelTicketEventModel.value = LuckyWheelTicketEventModel();
    initializeSidebarItems();
    initializeWinnerItems();
    initializeGameItems();
    startCountdown();
  }

  @override
  void onClose() {
    countdownTimer?.cancel();
    super.onClose();
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

  void initializeWinnerItems() {
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
  }

  void initializeGameItems() {
    gameItems.value = [
      GameGridItemModel(
        gameImagePath: ImageConstant.img231000.obs,
        overlayIconPath: ImageConstant.imgGroup1019.obs,
        title: 'Fortune Ox fortune'.obs,
      ),
      GameGridItemModel(
        gameImagePath: ImageConstant.img491000.obs,
        overlayIconPath: ImageConstant.imgGroup1019.obs,
        specialEffectPath: ImageConstant.imgGroup120461.obs,
        title: 'super Ace'.obs,
      ),
      GameGridItemModel(
        isLogo: true.obs,
        logoPath: ImageConstant.imgLogowj931.obs,
        overlayIconPath: ImageConstant.imgGroup1019.obs,
        title: ''.obs,
      ),
      GameGridItemModel(
        gameImagePath: ImageConstant.img102x1000.obs,
        overlayImagePath: ImageConstant.img1baccarat1.obs,
        overlayIconPath: ImageConstant.imgGroup1024.obs,
        title: 'Roma x'.obs,
      ),
      GameGridItemModel(
        gameImagePath: ImageConstant.img211000.obs,
        overlayImagePath: ImageConstant.imgBaccarat2.obs,
        overlayIconPath: ImageConstant.imgGroup1024.obs,
        title: 'diamond party'.obs,
      ),
      GameGridItemModel(
        gameImagePath: ImageConstant.img911000.obs,
        overlayImagePath: ImageConstant.imgBaccarat1.obs,
        overlayIconPath: ImageConstant.imgGroup1024.obs,
        title: 'Money Coming'.obs,
        badgeCount: 1.obs,
      ),
    ];
  }

  void startCountdown() {
    countdownTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      int currentSeconds = int.parse(seconds.value);
      int currentMinutes = int.parse(minutes.value);
      int currentHours = int.parse(hours.value);

      if (currentSeconds > 0) {
        currentSeconds--;
      } else if (currentMinutes > 0) {
        currentMinutes--;
        currentSeconds = 59;
      } else if (currentHours > 0) {
        currentHours--;
        currentMinutes = 59;
        currentSeconds = 59;
      } else {
        timer.cancel();
        onCountdownComplete();
        return;
      }

      seconds.value = currentSeconds.toString().padLeft(2, '0');
      minutes.value = currentMinutes.toString().padLeft(2, '0');
      hours.value = currentHours.toString().padLeft(2, '0');
    });
  }

  void onCountdownComplete() {
    Get.snackbar(
      'Event Ended',
      'The ticket event has ended',
      snackPosition: SnackPosition.TOP,
      backgroundColor: appTheme.orangeCustom,
      colorText: appTheme.whiteCustom,
    );
  }

  void onDownloadPressed() {
    Get.snackbar(
      'Download',
      'Download started',
      snackPosition: SnackPosition.TOP,
      backgroundColor: appTheme.greenCustom,
      colorText: appTheme.whiteCustom,
    );
  }

  void onClosePressed() {
    Get.back();
  }

  void onWithdrawalPressed() {
    Get.snackbar(
      'Withdrawal',
      'Withdrawal function accessed',
      snackPosition: SnackPosition.TOP,
      backgroundColor: appTheme.orangeCustom,
      colorText: appTheme.whiteCustom,
    );
  }

  void onDepositPressed() {
    Get.snackbar(
      'Deposit',
      'Deposit function accessed',
      snackPosition: SnackPosition.TOP,
      backgroundColor: appTheme.greenCustom,
      colorText: appTheme.whiteCustom,
    );
  }

  void onBalanceRefresh() {
    Get.snackbar(
      'Balance',
      'Balance refreshed',
      snackPosition: SnackPosition.TOP,
      backgroundColor: appTheme.blueCustom,
      colorText: appTheme.whiteCustom,
    );
  }

  void onEventClosePressed() {
    Get.back();
  }

  void onGoldenEggPressed() {
    Get.toNamed(AppRoutes.goldenEggTicketCollectionScreen);
  }

  void onLuckWheelPressed() {
    // Current screen, no navigation needed
  }

  void onCashVoucherPressed() {
    Get.toNamed(AppRoutes.cashVoucherRewardScreen);
  }

  void onWheelSpin() {
    if (!(isSpinning.value)) {
      isSpinning.value = true;

      Future.delayed(Duration(seconds: 3), () {
        isSpinning.value = false;
        showWinResult();
      });
    }
  }

  void showWinResult() {
    Get.snackbar(
      'Congratulations!',
      'You won ₱88!',
      snackPosition: SnackPosition.TOP,
      backgroundColor: appTheme.amberCustom,
      colorText: appTheme.blackCustom,
      duration: Duration(seconds: 3),
    );
  }

  void onClaimPressed() {
    if (progress.value >= 1.0) {
      Get.snackbar(
        'Claim',
        'Reward claimed successfully!',
        snackPosition: SnackPosition.TOP,
        backgroundColor: appTheme.greenCustom,
        colorText: appTheme.whiteCustom,
      );
    } else {
      Get.snackbar(
        'Progress Incomplete',
        'Complete the progress to claim reward',
        snackPosition: SnackPosition.TOP,
        backgroundColor: appTheme.orangeCustom,
        colorText: appTheme.whiteCustom,
      );
    }
  }

  void onSidebarItemTap(int index) {
    // Handle sidebar navigation based on index
    switch (index) {
      case 0:
        // Hot section
        break;
      case 1:
        // Collect section - current
        break;
      case 2:
        // Slot section
        break;
      case 3:
        // Live section
        break;
      case 4:
        // Bingo section
        break;
      case 5:
        // Table section
        break;
      case 6:
        // Fish section
        break;
      case 7:
        // Egame section
        break;
      case 8:
        // Sport section
        break;
    }
  }
}
