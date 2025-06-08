import '../../../core/app_export.dart';
import '../models/red_package_ticket_event_model.dart';
import '../models/sidebar_item_model.dart';
import '../models/winner_item_model.dart';

class RedPackageTicketEventController extends GetxController {
  Rx<RedPackageTicketEventModel> redPackageTicketEventModel =
      RedPackageTicketEventModel().obs;

  // Observable variables
  RxString balanceAmount = '₱1980.00'.obs;
  RxInt selectedSidebarIndex = 1.obs; // Collect is selected
  RxString days = '02'.obs;
  RxString hours = '01'.obs;
  RxString minutes = '21'.obs;
  RxString seconds = '06'.obs;
  RxDouble progress = 0.1.obs;

  // Lists
  RxList<SidebarItemModel> sidebarItems = <SidebarItemModel>[].obs;
  RxList<WinnerItemModel> winners = <WinnerItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    redPackageTicketEventModel.value = RedPackageTicketEventModel();
    _initializeSidebarItems();
    _initializeWinners();
    _startCountdownTimer();
  }

  void _initializeSidebarItems() {
    sidebarItems.value = [
      SidebarItemModel(
        iconPath: ImageConstant.imgVectorDeepOrangeA400.obs,
        label: 'Hot'.obs,
        isSelected: false.obs,
      ),
      SidebarItemModel(
        iconPath: ImageConstant.img132x32.obs,
        label: 'Collect'.obs,
        isSelected: true.obs,
      ),
      SidebarItemModel(
        iconPath: ImageConstant.img10733643587.obs,
        label: 'Slot'.obs,
        isSelected: false.obs,
      ),
      SidebarItemModel(
        iconPath: ImageConstant.img103.obs,
        label: 'Live'.obs,
        isSelected: false.obs,
      ),
      SidebarItemModel(
        iconPath: ImageConstant.img5.obs,
        label: 'Bingo'.obs,
        isSelected: false.obs,
      ),
      SidebarItemModel(
        iconPath: ImageConstant.img2.obs,
        label: 'Table'.obs,
        isSelected: false.obs,
      ),
      SidebarItemModel(
        iconPath: ImageConstant.img7.obs,
        label: 'Fish'.obs,
        isSelected: false.obs,
      ),
      SidebarItemModel(
        iconPath: ImageConstant.img3.obs,
        label: 'Egame'.obs,
        isSelected: false.obs,
      ),
      SidebarItemModel(
        iconPath: ImageConstant.img6.obs,
        label: 'Sport'.obs,
        isSelected: false.obs,
      ),
    ];
  }

  void _initializeWinners() {
    winners.value = [
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

  void _startCountdownTimer() {
    // Simulate countdown timer
    // In real implementation, this would be connected to actual timer logic
  }

  void onDownloadPressed() {
    // Handle download button press
    print('Download pressed');
  }

  void onClosePressed() {
    // Handle close button press
    Get.back();
  }

  void onBalanceActionTap() {
    // Handle balance action tap
    print('Balance action tapped');
  }

  void onWithdrawalPressed() {
    // Handle withdrawal button press
    print('Withdrawal pressed');
  }

  void onDepositPressed() {
    // Handle deposit button press
    print('Deposit pressed');
  }

  void onSidebarItemTap(int index) {
    selectedSidebarIndex.value = index;
    // Update selected state
    for (int i = 0; i < sidebarItems.length; i++) {
      sidebarItems[i].isSelected?.value = i == index;
    }
    sidebarItems.refresh();
  }

  void onPreviousPressed() {
    // Handle previous navigation
    print('Previous pressed');
  }

  void onNextPressed() {
    // Handle next navigation
    print('Next pressed');
  }

  void onLuckyWheelTap() {
    // Navigate to lucky wheel
    Get.toNamed(AppRoutes.luckyWheelTicketEventScreen);
  }

  void onRedPackageTap() {
    // Current screen, no navigation needed
    print('Red Package tapped');
  }

  void onCashVoucherTap() {
    // Navigate to cash voucher
    Get.toNamed(AppRoutes.cashVoucherRewardScreen);
  }

  void onClaimPressed() {
    // Handle claim button press
    print('Claim pressed');
    // You might want to show a success dialog or navigate to confirmation
  }

  void onEventClosePressed() {
    // Close the event overlay
    Get.back();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
