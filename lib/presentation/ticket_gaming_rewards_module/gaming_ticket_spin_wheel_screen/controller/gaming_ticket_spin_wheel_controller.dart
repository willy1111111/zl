import 'dart:async';

import '../../../core/app_export.dart';
import '../../../widgets/custom_sidebar.dart';
import '../../../widgets/custom_winner_list.dart';
import '../models/game_item_model.dart';
import '../models/gaming_ticket_spin_wheel_model.dart';
import '../models/wheel_prize_model.dart';

class GamingTicketSpinWheelController extends GetxController {
  Rx<GamingTicketSpinWheelModel> gamingTicketSpinWheelModel =
      GamingTicketSpinWheelModel().obs;

  // Observable variables
  RxBool showEventOverlay = true.obs;
  RxInt selectedSidebarIndex = 1.obs; // Collect is highlighted
  RxString hours = '01'.obs;
  RxString minutes = '21'.obs;
  RxString seconds = '06'.obs;

  // Timer for countdown
  Timer? countdownTimer;

  // Lists
  RxList<CustomSidebarItem> sidebarItems = <CustomSidebarItem>[].obs;
  RxList<GameItemModel> gameItems = <GameItemModel>[].obs;
  RxList<WheelPrizeModel> wheelPrizes = <WheelPrizeModel>[].obs;
  RxList<CustomWinnerItem> winnerItems = <CustomWinnerItem>[].obs;

  @override
  void onInit() {
    super.onInit();
    gamingTicketSpinWheelModel.value = GamingTicketSpinWheelModel();
    initializeSidebarItems();
    initializeGameItems();
    initializeWheelPrizes();
    initializeWinnerItems();
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

  void initializeGameItems() {
    gameItems.value = [
      // Row 1
      GameItemModel(
        backgroundImage: ImageConstant.img231000.obs,
        iconImage: ImageConstant.imgGroup1019.obs,
        title: 'Fortune Ox fortune'.obs,
      ),
      GameItemModel(
        backgroundImage: ImageConstant.img491000.obs,
        iconImage: ImageConstant.imgGroup1019.obs,
        overlayImage: ImageConstant.imgGroup120461.obs,
        title: 'super Ace'.obs,
      ),
      GameItemModel(
        backgroundImage: ImageConstant.imgLogowj931.obs,
        iconImage: ImageConstant.imgGroup1019.obs,
        title: 'Money Coming'.obs,
        isSpecial: true.obs,
      ),
      // Row 2
      GameItemModel(
        backgroundImage: ImageConstant.img102x1000.obs,
        overlayImage: ImageConstant.img1baccarat1.obs,
        iconImage: ImageConstant.imgGroup1024.obs,
        title: 'super Ace'.obs,
      ),
      GameItemModel(
        backgroundImage: ImageConstant.img211000.obs,
        overlayImage: ImageConstant.imgBaccarat2.obs,
        iconImage: ImageConstant.imgGroup1024.obs,
        title: 'diamond party'.obs,
      ),
      GameItemModel(
        backgroundImage: ImageConstant.img911000.obs,
        overlayImage: ImageConstant.imgBaccarat1.obs,
        iconImage: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
        badgeCount: 1.obs,
        showBadge: true.obs,
      ),
      // Row 3
      GameItemModel(
        backgroundImage: ImageConstant.img277771000.obs,
        iconImage: ImageConstant.imgGroup1029.obs,
        title: 'Roma x'.obs,
      ),
      GameItemModel(
        backgroundImage: ImageConstant.img431000.obs,
        iconImage: ImageConstant.imgGroup1029.obs,
        title: 'diamond party'.obs,
      ),
      GameItemModel(
        backgroundImage: ImageConstant.img441000.obs,
        iconImage: ImageConstant.imgGroup1029.obs,
        title: 'lucky coming'.obs,
        hasProgressBar: true.obs,
      ),
      // Row 4
      GameItemModel(
        backgroundImage: ImageConstant.img471000.obs,
        iconImage: ImageConstant.imgGroup1024.obs,
        title: 'Roma x'.obs,
      ),
      GameItemModel(
        backgroundImage: ImageConstant.img461000.obs,
        iconImage: ImageConstant.imgGroup1024.obs,
        title: 'diamond party'.obs,
        hasRedDot: true.obs,
      ),
      GameItemModel(
        backgroundImage: ImageConstant.imgJdbslot092.obs,
        iconImage: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
      ),
    ];
  }

  void initializeWheelPrizes() {
    wheelPrizes.value = [
      WheelPrizeModel(
        imagePath: ImageConstant.imgZhu1.obs,
        prizeValue: ''.obs,
        top: 476.0.obs,
        left: 169.0.obs,
        imageWidth: 40.0.obs,
        imageHeight: 34.0.obs,
      ),
      WheelPrizeModel(
        imagePath: ImageConstant.img52.obs,
        prizeValue: '₱55'.obs,
        top: 458.0.obs,
        left: 211.0.obs,
        imageWidth: 40.0.obs,
        imageHeight: 26.0.obs,
      ),
      WheelPrizeModel(
        imagePath: ImageConstant.img202405201132541.obs,
        prizeValue: '₱？'.obs,
        top: 366.0.obs,
        left: 120.0.obs,
        imageWidth: 39.0.obs,
        imageHeight: 39.0.obs,
      ),
      WheelPrizeModel(
        imagePath: ImageConstant.img1240x30.obs,
        prizeValue: '₱？'.obs,
        top: 408.0.obs,
        left: 103.0.obs,
        imageWidth: 30.0.obs,
        imageHeight: 40.0.obs,
      ),
      WheelPrizeModel(
        imagePath: ImageConstant.imgImage452.obs,
        prizeValue: '₱55'.obs,
        top: 351.0.obs,
        left: 174.0.obs,
        imageWidth: 30.0.obs,
        imageHeight: 30.0.obs,
      ),
      WheelPrizeModel(
        imagePath: ImageConstant.imgQweqweqwe1.obs,
        prizeValue: '₱55'.obs,
        top: 413.0.obs,
        left: 229.0.obs,
        imageWidth: 29.0.obs,
        imageHeight: 35.0.obs,
      ),
      WheelPrizeModel(
        imagePath: ImageConstant.imgWheelspin1.obs,
        prizeValue: ''.obs,
        top: 395.0.obs,
        left: 155.0.obs,
        imageWidth: 68.0.obs,
        imageHeight: 67.0.obs,
      ),
      WheelPrizeModel(
        imagePath: ImageConstant.imgImage921.obs,
        prizeValue: '₱？'.obs,
        top: 365.0.obs,
        left: 220.0.obs,
        imageWidth: 39.0.obs,
        imageHeight: 39.0.obs,
      ),
      WheelPrizeModel(
        imagePath: ImageConstant.imgImage453.obs,
        prizeValue: '₱88'.obs,
        top: 459.0.obs,
        left: 128.0.obs,
        imageWidth: 30.0.obs,
        imageHeight: 30.0.obs,
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

  void startCountdown() {
    countdownTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      int currentSeconds = int.parse(seconds.value);
      int currentMinutes = int.parse(minutes.value);
      int currentHours = int.parse(hours.value);

      if (currentSeconds > 0) {
        currentSeconds--;
      } else if (currentMinutes > 0) {
        currentSeconds = 59;
        currentMinutes--;
      } else if (currentHours > 0) {
        currentSeconds = 59;
        currentMinutes = 59;
        currentHours--;
      } else {
        timer.cancel();
        return;
      }

      seconds.value = currentSeconds.toString().padLeft(2, '0');
      minutes.value = currentMinutes.toString().padLeft(2, '0');
      hours.value = currentHours.toString().padLeft(2, '0');
    });
  }

  void onDownloadPressed() {
    // Handle download button press
  }

  void onClosePressed() {
    // Handle close button press
  }

  void onBalanceActionTap() {
    // Handle balance action tap
  }

  void onWithdrawalPressed() {
    // Handle withdrawal button press
  }

  void onDepositPressed() {
    // Handle deposit button press
  }

  void onSidebarItemTap(int index) {
    selectedSidebarIndex.value = index;
    // Handle sidebar navigation
  }

  void onGameCardTap(GameItemModel gameItem) {
    // Handle game card tap
  }

  void onEventOptionTap(String eventType) {
    switch (eventType) {
      case 'golden_egg':
        Get.toNamed(AppRoutes.goldenEggTicketCollectionScreen);
        break;
      case 'luck_wheel':
        Get.toNamed(AppRoutes.luckyWheelTicketEventScreen);
        break;
      case 'cash_voucher':
        Get.toNamed(AppRoutes.cashVoucherRewardScreen);
        break;
    }
  }

  void onPreviousEvent() {
    // Handle previous event navigation
  }

  void onNextEvent() {
    // Handle next event navigation
  }

  void closeEventOverlay() {
    showEventOverlay.value = false;
  }

  void onClaimPressed() {
    Get.toNamed(AppRoutes.ticketClaimInfoScreen);
  }
}
