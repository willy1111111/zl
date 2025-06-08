import '../../../core/app_export.dart';
import '../models/spin_wheel_dashboard_model.dart';
import '../models/transaction_item_model.dart';

class SpinWheelDashboardController extends GetxController {
  Rx<SpinWheelDashboardModel?> dashboardModel =
      Rx<SpinWheelDashboardModel?>(null);
  RxList<TransactionItemModel> transactionItems = <TransactionItemModel>[].obs;
  RxInt selectedTabIndex = 1.obs;
  RxDouble wheelRotation = 0.0.obs;
  RxBool isSpinning = false.obs;

  @override
  void onInit() {
    super.onInit();
    initializeData();
  }

  void initializeData() {
    dashboardModel.value = SpinWheelDashboardModel(
      balance: '992.59'.obs,
      withdrawalRequirement: '3.07'.obs,
      progressPercentage: 70.obs,
      spinBonusTotal: '₱17,288,717.93'.obs,
      userName: 'Sanikhan'.obs,
      userWinAmount: 'BNT 27.66'.obs,
    );

    transactionItems.value = [
      TransactionItemModel(
        userId: '140***090'.obs,
        spinType: '+1 Free Spin'.obs,
        rewardAmount: '₱493.70'.obs,
        rewardIconPath: ImageConstant.imgImage19x19.obs,
        timestamp: '2023-09-09 19:00:00'.obs,
      ),
      TransactionItemModel(
        userId: '140***090'.obs,
        spinType: '-'.obs,
        rewardAmount: '+1'.obs,
        rewardIconPath: ImageConstant.imgImage3.obs,
        timestamp: '2023-09-09 19:00:00'.obs,
      ),
      TransactionItemModel(
        userId: '140***090'.obs,
        spinType: '+1 Free Spin'.obs,
        rewardAmount: '₱3.70'.obs,
        rewardIconPath: ImageConstant.imgImage4.obs,
        timestamp: '2023-09-09 19:00:00'.obs,
      ),
      TransactionItemModel(
        userId: '140***090'.obs,
        spinType: '+1 Free Spin'.obs,
        rewardAmount: '₱83.70'.obs,
        rewardIconPath: ImageConstant.imgMargin19x19.obs,
        timestamp: '2023-09-09 19:00:00'.obs,
      ),
    ];
  }

  void onWithdrawTap() {
    // Navigate to withdrawal screen or show withdrawal modal
    Get.snackbar(
      'Withdrawal',
      'Withdrawal functionality to be implemented',
      backgroundColor: appTheme.colorFF3236,
      colorText: appTheme.whiteCustom,
    );
  }

  void onSpinTap() {
    if (!(isSpinning.value)) {
      isSpinning.value = true;

      // Generate random rotation (at least 2 full rotations)
      double randomRotation =
          (2 + (DateTime.now().millisecondsSinceEpoch % 100) / 100) * 360;
      wheelRotation.value = wheelRotation.value + randomRotation / 360;

      // Reset spinning state after animation completes
      Future.delayed(Duration(seconds: 3), () {
        isSpinning.value = false;
        _showSpinResult();
      });
    }
  }

  void _showSpinResult() {
    // Show spin result
    Get.snackbar(
      'Spin Result',
      'You won ₱493.70!',
      backgroundColor: appTheme.colorFF85D4,
      colorText: appTheme.whiteCustom,
      duration: Duration(seconds: 3),
    );
  }

  void onInviteFriendsTap() {
    Get.toNamed(AppRoutes.luckySpinInvitationGuideScreen);
  }

  void onTabTap(int index) {
    selectedTabIndex.value = index;
  }

  void onInfoTap() {
    Get.toNamed(AppRoutes.spinGameRulesModalScreen);
  }

  void onNotificationTap() {
    // Handle notification tap
    Get.snackbar(
      'Notifications',
      'You have 1 new notification',
      backgroundColor: appTheme.colorFF3236,
      colorText: appTheme.whiteCustom,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }
}
