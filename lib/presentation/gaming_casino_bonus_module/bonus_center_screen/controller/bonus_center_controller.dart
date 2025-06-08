import '../../../core/app_export.dart';
import '../models/bonus_center_model.dart';

class BonusCenterController extends GetxController {
  Rx<BonusCenterModel> bonusCenterModel = BonusCenterModel().obs;
  RxList<BonusSectionModel> bonusSections = <BonusSectionModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    bonusCenterModel.value = BonusCenterModel();
    _initializeBonusSections();
  }

  void _initializeBonusSections() {
    bonusSections.value = [
      BonusSectionModel(
        icon: ImageConstant.imgInvite1.obs,
        title: 'Invite Bonus'.obs,
        totalAmount: 'Total: ₱19999.80'.obs,
        details: [
          BonusDetailModel(
            label: 'Invite Registration'.obs,
            amount: '₱99'.obs,
          ),
          BonusDetailModel(
            label: 'Invitation Qualified'.obs,
            amount: '₱10'.obs,
          ),
          BonusDetailModel(
            label: 'Invitees Bonus'.obs,
            amount: '₱30'.obs,
          ),
          BonusDetailModel(
            label: 'Invite Deposit'.obs,
            amount: '₱10'.obs,
          ),
          BonusDetailModel(
            label: 'Betting Rebate'.obs,
            amount: '₱4900.70'.obs,
          ),
        ].obs,
        buttonText: 'Share with your social community'.obs,
        buttonAction: 'share'.obs,
      ),
      BonusSectionModel(
        icon: ImageConstant.imgGroup14070.obs,
        title: 'Deposit Bonus'.obs,
        totalAmount: 'Total: ₱399.80'.obs,
        details: [
          BonusDetailModel(
            label: 'First Deposit'.obs,
            amount: '30%'.obs,
            isHighlighted: true.obs,
          ),
          BonusDetailModel(
            label: 'Second Deposit'.obs,
            amount: '30%'.obs,
          ),
          BonusDetailModel(
            label: 'First Daily Deposit'.obs,
            amount: '30%'.obs,
          ),
          BonusDetailModel(
            label: 'Fixed Payment Method Deposit'.obs,
            amount: '30%'.obs,
          ),
        ].obs,
        buttonText: 'First Deposit'.obs,
        buttonAction: 'first_deposit'.obs,
      ),
      BonusSectionModel(
        icon: ImageConstant.imgGroup14071.obs,
        title: 'Spin Bonus'.obs,
        totalAmount: 'Total: ₱7779.80'.obs,
        hasProgressBar: true.obs,
        progressValue: 0.9236.obs,
        progressText: '92.36%'.obs,
        details: [
          BonusDetailModel(
            label: 'Times of draws：'.obs,
            amount: '1'.obs,
          ),
          BonusDetailModel(
            label: 'This round amount：'.obs,
            amount: '₱19999.80'.obs,
          ),
        ].obs,
        buttonText: 'Get ₱1000 for free'.obs,
        buttonAction: 'get_free'.obs,
        eventText: 'Event ends: 2 days 10:09:39'.obs,
        withdrawalText: 'You still need 7.64 to withdraw to Wallet'.obs,
      ),
      BonusSectionModel(
        icon: ImageConstant
            .imgAdd2e694b50907790800188bb93242cee3957bd96358f3sm3f1.obs,
        title: 'Sign-in Bonus'.obs,
        totalAmount: 'Total: ₱5999.80'.obs,
        details: [
          BonusDetailModel(
            label: 'Sign in today：'.obs,
            amount: 'Day 2'.obs,
          ),
          BonusDetailModel(
            label: 'Bonus:'.obs,
            amount: '₱0.22'.obs,
          ),
          BonusDetailModel(
            label: 'Extra :'.obs,
            amount: '₱0.22'.obs,
          ),
        ].obs,
        buttonText: 'View sign-in details'.obs,
        buttonAction: 'view_signin'.obs,
        hasSignInButton: true.obs,
        activityTime: 'Activity Time: 36Day 22:26'.obs,
      ),
      BonusSectionModel(
        icon: ImageConstant.imgMaskGroup32x32.obs,
        title: 'Gifts Code Bonus'.obs,
        totalAmount: 'Total: ₱55.80'.obs,
        details: [
          BonusDetailModel(
            label: 'Cumulative times：'.obs,
            amount: '19'.obs,
          ),
        ].obs,
        description: 'Follow official media to get event codes in time'.obs,
        buttonText: 'Exchage'.obs,
        buttonAction: 'exchange'.obs,
        hasSocialIcons: true.obs,
      ),
      BonusSectionModel(
        icon: ImageConstant.imgMaskGroup.obs,
        title: 'DailyRebate Bonus'.obs,
        totalAmount: 'Total: ₱19999.80'.obs,
        details: [
          BonusDetailModel(
            label: 'Yesterday\'s income:'.obs,
            amount: '₱4933333300.70'.obs,
          ),
          BonusDetailModel(
            label: 'DAILY CASHBACK UP TO'.obs,
            amount: '1%'.obs,
          ),
        ].obs,
        buttonText: 'GO BET'.obs,
        buttonAction: 'go_bet'.obs,
      ),
      BonusSectionModel(
        icon: ImageConstant.imgMaskGroup32x32.obs,
        title: 'MoneyRain Bonus'.obs,
        totalAmount: 'Total: ₱19999.80'.obs,
        hasMoneyRainLayout: true.obs,
        details: [
          BonusDetailModel(
            label: 'Max Drop'.obs,
            amount: '₱7,777'.obs,
          ),
          BonusDetailModel(
            label: 'Per time'.obs,
            amount: '₱20,000'.obs,
          ),
        ].obs,
        buttonText: 'View Details'.obs,
        buttonAction: 'view_details'.obs,
        timeText: 'Time: Next day 10:00:00-11:00:00'.obs,
      ),
      BonusSectionModel(
        icon: ImageConstant.imgMaskGroup1.obs,
        title: 'VIP Bouns'.obs,
        totalAmount: 'Total: ₱19999.80'.obs,
        details: [
          BonusDetailModel(
            label: 'Upgrade Bonus'.obs,
            amount: '₱19777.80'.obs,
          ),
          BonusDetailModel(
            label: 'Weekly Cashback'.obs,
            amount: '₱7799.80'.obs,
          ),
          BonusDetailModel(
            label: 'Weekly Salary'.obs,
            amount: '₱3399.80'.obs,
          ),
          BonusDetailModel(
            label: 'Monthly salary'.obs,
            amount: '₱19999.80'.obs,
          ),
        ].obs,
        buttonText: 'View Vip Bonus'.obs,
        buttonAction: 'view_vip'.obs,
      ),
      BonusSectionModel(
        icon: ImageConstant.imgGroup13081.obs,
        title: 'Cumulative Deposit Bonus'.obs,
        totalAmount: 'Total: ₱99.80'.obs,
        details: [
          BonusDetailModel(
            label: 'Current VIP：'.obs,
            amount: 'VIP1'.obs,
          ),
          BonusDetailModel(
            label: 'Daily Cumulative Deposit:'.obs,
            amount: '₱100'.obs,
          ),
          BonusDetailModel(
            label: 'Estimated Bonus today:'.obs,
            amount: '₱2.00'.obs,
          ),
        ].obs,
        buttonText: 'View Details'.obs,
        buttonAction: 'view_details'.obs,
      ),
      BonusSectionModel(
        icon: ImageConstant.imgFrame14123.obs,
        title: 'Ticket Event Bonus'.obs,
        totalAmount: 'Total: ₱19999.80'.obs,
        details: [
          BonusDetailModel(
            label: 'Red Package'.obs,
            amount: '₱19777.80'.obs,
          ),
          BonusDetailModel(
            label: 'Cash Voucher'.obs,
            amount: '₱7799.80'.obs,
          ),
          BonusDetailModel(
            label: 'Lucky Wheel'.obs,
            amount: '₱3399.80'.obs,
          ),
          BonusDetailModel(
            label: 'Golden Egg'.obs,
            amount: '₱19999.80'.obs,
          ),
        ].obs,
        buttonText: 'View Ticket Event'.obs,
        buttonAction: 'view_ticket'.obs,
      ),
      BonusSectionModel(
        icon: ImageConstant.imgMaskGroup32x32.obs,
        title: 'Exclusive Bonus'.obs,
        totalAmount: 'Total: ₱9222.00'.obs,
        isCompact: true.obs,
      ),
      BonusSectionModel(
        icon: ImageConstant.img17.obs,
        title: 'Experience Bonus'.obs,
        totalAmount: 'Total: ₱0.00'.obs,
        isCompact: true.obs,
        hasComplexIcon: true.obs,
      ),
      BonusSectionModel(
        icon: ImageConstant.imgMaskGroup32x32.obs,
        title: 'Register Handsel'.obs,
        totalAmount: 'Total: ₱125.00'.obs,
        isCompact: true.obs,
      ),
      BonusSectionModel(
        icon: ImageConstant.imgMaskGroupGray90001.obs,
        title: 'App download Bonus'.obs,
        totalAmount: 'Total: ₱125.00'.obs,
        isCompact: true.obs,
      ),
    ];
  }

  void onBalancePressed() {
    // Handle balance press
  }

  void onSectionButtonPressed(String action) {
    switch (action) {
      case 'share':
        _handleShareAction();
        break;
      case 'first_deposit':
        _handleFirstDepositAction();
        break;
      case 'get_free':
        _handleGetFreeAction();
        break;
      case 'view_signin':
        _handleViewSignInAction();
        break;
      case 'exchange':
        _handleExchangeAction();
        break;
      case 'go_bet':
        _handleGoBetAction();
        break;
      case 'view_details':
        _handleViewDetailsAction();
        break;
      case 'view_vip':
        _handleViewVipAction();
        break;
      case 'view_ticket':
        _handleViewTicketAction();
        break;
      default:
        break;
    }
  }

  void onSignInPressed() {
    // Handle sign in action
  }

  void _handleShareAction() {
    // Handle share with social community
  }

  void _handleFirstDepositAction() {
    // Handle first deposit navigation
  }

  void _handleGetFreeAction() {
    // Handle get free money action
  }

  void _handleViewSignInAction() {
    // Handle view sign-in details
  }

  void _handleExchangeAction() {
    // Handle exchange gift code
  }

  void _handleGoBetAction() {
    // Handle go to betting
  }

  void _handleViewDetailsAction() {
    // Handle view details
  }

  void _handleViewVipAction() {
    // Handle view VIP bonus
  }

  void _handleViewTicketAction() {
    // Handle view ticket event
  }
}
