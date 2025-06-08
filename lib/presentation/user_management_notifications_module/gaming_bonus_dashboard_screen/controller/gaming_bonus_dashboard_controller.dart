import '../../../core/app_export.dart';
import '../models/deposit_bonus_item_model.dart';
import '../models/gaming_bonus_dashboard_model.dart';
import '../models/invite_bonus_item_model.dart';

class GamingBonusDashboardController extends GetxController {
  Rx<GamingBonusDashboardModel> gamingBonusDashboardModel =
      GamingBonusDashboardModel().obs;
  Rx<InviteBonusItemModel> inviteBonusModel = InviteBonusItemModel().obs;
  Rx<DepositBonusItemModel> depositBonusModel = DepositBonusItemModel().obs;

  RxBool isNoticesDialogVisible = true.obs;
  RxString totalBonusAmount = '₱100000.00'.obs;
  RxString currentBalance = '₱1980.00'.obs;

  @override
  void onInit() {
    super.onInit();
    _initializeData();
  }

  void _initializeData() {
    // Initialize invite bonus data
    inviteBonusModel.value = InviteBonusItemModel(
      iconPath: ImageConstant.imgInvite136x36.obs,
      title: 'Invite Bonus'.obs,
      totalAmount: '₱19999.80'.obs,
      inviteRegistration: '₱99'.obs,
      inviteDeposit: '₱10'.obs,
      invitationQualified: '₱10'.obs,
      bettingRebate: '₱4900.70'.obs,
      inviteesBonus: '₱30'.obs,
      actionText: 'Share with your social community'.obs,
    );

    // Initialize deposit bonus data
    depositBonusModel.value = DepositBonusItemModel(
      iconPath: ImageConstant.imgFrame6.obs,
      title: 'Deposit Bonus'.obs,
      totalAmount: '₱399.80'.obs,
      firstDepositPercentage: '30%'.obs,
      secondDepositPercentage: '30%'.obs,
      firstDailyDepositPercentage: '30%'.obs,
      fixedPaymentMethodPercentage: '30%'.obs,
      actionText: 'First Deposit'.obs,
    );
  }

  void onBalancePressed() {
    // Handle balance tap action
    Get.snackbar(
      'Balance',
      'Current balance: ${currentBalance.value}',
      backgroundColor: appTheme.colorFF2528,
      colorText: appTheme.colorFFFFFF,
    );
  }

  void closeNoticesDialog() {
    isNoticesDialogVisible.value = false;
  }

  void onInviteBonusPressed() {
    // Handle invite bonus action
    Get.snackbar(
      'Invite Bonus',
      'Share with your social community',
      backgroundColor: appTheme.colorFF2528,
      colorText: appTheme.colorFF85D4,
    );
  }

  void onDepositBonusPressed() {
    // Handle deposit bonus action
    Get.snackbar(
      'Deposit Bonus',
      'First Deposit bonus available',
      backgroundColor: appTheme.colorFF2528,
      colorText: appTheme.colorFF85D4,
    );
  }
}
