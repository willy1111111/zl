import '../../../core/app_export.dart';
import '../models/bonus_card_model.dart';
import '../models/bonus_dashboard_model.dart';

class BonusDashboardController extends GetxController {
  Rx<BonusDashboardModel> bonusDashboardModel = BonusDashboardModel().obs;

  RxList<BonusCardModel> bonusCards = <BonusCardModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    initializeBonusCards();
  }

  void initializeBonusCards() {
    bonusCards.value = [
      // Spin Bonus Card
      BonusCardModel(
        iconPath: ImageConstant.img8.obs,
        title: 'Spin Bonus'.obs,
        totalAmount: 'Total: ₱7779.80'.obs,
        cardType: BonusCardType.spinBonus.obs,
        details: {
          'Times of draws': '1',
          'This round amount': '₱19999.80',
        },
        progressPercentage: 78.0.obs,
        progressText: '92.36%'.obs,
        progressSubtext: '212'.obs,
        description: 'You still need 7.64 to withdraw to Wallet'.obs,
        actionButtonText: 'Get ₱1000 for free'.obs,
        timeRemaining: 'Event ends: 2 days 10:09:39'.obs,
      ),

      // Sign-in Bonus Card
      BonusCardModel(
        iconPath: ImageConstant
            .imgAdd2e694b50907790800188bb93242cee3957bd96358f3sm3f1.obs,
        title: 'Sign-in Bonus'.obs,
        totalAmount: 'Total: ₱5999.80'.obs,
        cardType: BonusCardType.signInBonus.obs,
        details: {
          'Sign in today': 'Day 2',
          'Bonus': '₱0.22',
          'Extra': '₱0.22',
        },
        actionButtonText: 'View sign-in details'.obs,
        secondaryButtonText: 'Sign in'.obs,
        activityTime: 'Activity Time: 36Day 22:26'.obs,
      ),

      // Deposit Bonus Card
      BonusCardModel(
        iconPath: ImageConstant.imgVector25x26.obs,
        title: 'Deposit Bonus'.obs,
        totalAmount: 'Total: ₱399.80'.obs,
        cardType: BonusCardType.depositBonus.obs,
        depositTypes: [
          DepositTypeModel(
              name: 'First Deposit'.obs,
              percentage: '30%'.obs,
              isHighlighted: true.obs),
          DepositTypeModel(name: 'Second Deposit'.obs, percentage: '30%'.obs),
          DepositTypeModel(
              name: 'First Daily Deposit'.obs, percentage: '30%'.obs),
          DepositTypeModel(
              name: 'Fixed Payment Method Deposit'.obs, percentage: '30%'.obs),
        ],
        actionButtonText: 'First Deposit'.obs,
      ),

      // Invite Bonus Card
      BonusCardModel(
        iconPath: ImageConstant.imgInvite132x32.obs,
        title: 'Invite Bonus'.obs,
        totalAmount: 'Total: ₱19999.80'.obs,
        cardType: BonusCardType.inviteBonus.obs,
        inviteDetails: [
          InviteDetailModel(
              label: 'Invite Registration'.obs, amount: '₱99'.obs),
          InviteDetailModel(label: 'Invite Deposit'.obs, amount: '₱10'.obs),
          InviteDetailModel(
              label: 'Invitation Qualified'.obs, amount: '₱10'.obs),
          InviteDetailModel(
              label: 'Betting Rebate'.obs, amount: '₱4900.70'.obs),
          InviteDetailModel(label: 'Invitees Bonus'.obs, amount: '₱30'.obs),
        ],
        actionButtonText: 'Share with your social community'.obs,
      ),

      // Daily Rebate Bonus Card
      BonusCardModel(
        iconPath: ImageConstant.imgMaskGroup32x32.obs,
        title: 'DailyRebate Bonus'.obs,
        totalAmount: 'Total: ₱19999.80'.obs,
        cardType: BonusCardType.dailyRebateBonus.obs,
        details: {
          'Yesterday\'s income': '₱4933333300.70',
          'DAILY CASHBACK UP TO': '1%',
        },
        actionButtonText: 'GO BET'.obs,
      ),

      // Gifts Code Bonus Card
      BonusCardModel(
        iconPath: ImageConstant.imgMaskGroup1.obs,
        title: 'Gifts Code Bonus'.obs,
        totalAmount: 'Total: ₱55.80'.obs,
        cardType: BonusCardType.giftsCodeBonus.obs,
        details: {
          'Cumulative times': '19',
        },
        description: 'Follow official media to get event codes in time'.obs,
        socialIcons: [
          ImageConstant.imgGroup13079,
          ImageConstant.imgSocialMedia,
        ],
        actionButtonText: 'Exchage'.obs,
      ),

      // Money Rain Bonus Card
      BonusCardModel(
        iconPath: ImageConstant.imgMaskGroup1.obs,
        title: 'MoneyRain Bonus'.obs,
        totalAmount: 'Total: ₱19999.80'.obs,
        cardType: BonusCardType.moneyRainBonus.obs,
        rainDetails: [
          RainDetailModel(
            icon: ImageConstant.img761.obs,
            label: 'Max Drop'.obs,
            amount: '₱7,777'.obs,
          ),
          RainDetailModel(
            icon: ImageConstant.img761.obs,
            label: 'Per time'.obs,
            amount: '₱20,000'.obs,
          ),
        ],
        actionButtonText: 'View Details'.obs,
        timeInfo: 'Time: Next day 10:00:00-11:00:00'.obs,
      ),

      // VIP Bonus Card
      BonusCardModel(
        iconPath: ImageConstant.imgMaskGroup2.obs,
        title: 'VIP Bouns'.obs,
        totalAmount: 'Total: ₱19999.80'.obs,
        cardType: BonusCardType.vipBonus.obs,
        vipDetails: [
          VipDetailModel(label: 'Upgrade Bonus'.obs, amount: '₱19777.80'.obs),
          VipDetailModel(label: 'Weekly Cashback'.obs, amount: '₱7799.80'.obs),
          VipDetailModel(label: 'Weekly Salary'.obs, amount: '₱3399.80'.obs),
          VipDetailModel(label: 'Monthly salary'.obs, amount: '₱19999.80'.obs),
        ],
        actionButtonText: 'View Vip Bonus'.obs,
      ),

      // Cumulative Deposit Bonus Card
      BonusCardModel(
        iconPath: ImageConstant.imgGroup13081.obs,
        title: 'Cumulative Deposit Bonus'.obs,
        totalAmount: 'Total: ₱99.80'.obs,
        cardType: BonusCardType.cumulativeDepositBonus.obs,
        details: {
          'Current VIP': 'VIP1',
          'Daily Cumulative Deposit': '₱100',
          'Estimated Bonus today': '₱2.00',
        },
        actionButtonText: 'View Details'.obs,
      ),

      // Ticket Event Bonus Card
      BonusCardModel(
        iconPath: ImageConstant.imgFrame14123.obs,
        title: 'Ticket Event Bonus'.obs,
        totalAmount: 'Total: ₱19999.80'.obs,
        cardType: BonusCardType.ticketEventBonus.obs,
        ticketDetails: [
          TicketDetailModel(label: 'Red Package'.obs, amount: '₱19777.80'.obs),
          TicketDetailModel(label: 'Cash Voucher'.obs, amount: '₱7799.80'.obs),
          TicketDetailModel(label: 'Lucky Wheel'.obs, amount: '₱3399.80'.obs),
          TicketDetailModel(label: 'Golden Egg'.obs, amount: '₱19999.80'.obs),
        ],
        actionButtonText: 'View Ticket Event'.obs,
      ),

      // Exclusive Bonus Card
      BonusCardModel(
        iconPath: ImageConstant.imgMaskGroup1.obs,
        title: 'Exclusive Bonus'.obs,
        totalAmount: 'Total: ₱9222.00'.obs,
        cardType: BonusCardType.simpleBonus.obs,
      ),

      // Register Handsel Card
      BonusCardModel(
        iconPath: ImageConstant.imgMaskGroup1.obs,
        title: 'Register Handsel'.obs,
        totalAmount: 'Total: ₱125.00'.obs,
        cardType: BonusCardType.simpleBonus.obs,
      ),

      // Phone Verification Bonus Card
      BonusCardModel(
        iconPath: ImageConstant.imgImage1271.obs,
        title: 'Phone Verification Bonus'.obs,
        totalAmount: 'Total: ₱125.00'.obs,
        cardType: BonusCardType.phoneVerificationBonus.obs,
        hasOverlayIcon: true.obs,
        overlayText: '₱'.obs,
      ),
    ];
  }

  void onBonusCardAction(BonusCardModel bonusCard) {
    // Handle bonus card specific actions
    switch (bonusCard.cardType?.value) {
      case BonusCardType.spinBonus:
        handleSpinBonusAction();
        break;
      case BonusCardType.signInBonus:
        handleSignInBonusAction();
        break;
      case BonusCardType.depositBonus:
        handleDepositBonusAction();
        break;
      case BonusCardType.inviteBonus:
        handleInviteBonusAction();
        break;
      default:
        handleGenericBonusAction(bonusCard);
    }
  }

  void handleSpinBonusAction() {
    // Handle spin bonus specific action
    Get.snackbar('Spin Bonus', 'Spin bonus action triggered');
  }

  void handleSignInBonusAction() {
    // Handle sign-in bonus specific action
    Get.snackbar('Sign-in Bonus', 'Sign-in bonus action triggered');
  }

  void handleDepositBonusAction() {
    // Handle deposit bonus specific action
    Get.snackbar('Deposit Bonus', 'Deposit bonus action triggered');
  }

  void handleInviteBonusAction() {
    // Handle invite bonus specific action
    Get.snackbar('Invite Bonus', 'Invite bonus action triggered');
  }

  void handleGenericBonusAction(BonusCardModel bonusCard) {
    // Handle generic bonus action
    Get.snackbar(
        'Bonus Action', '${bonusCard.title?.value ?? ''} action triggered');
  }

  void onSecondaryAction(BonusCardModel bonusCard) {
    // Handle secondary button actions
    Get.snackbar('Secondary Action',
        '${bonusCard.secondaryButtonText?.value ?? ''} action triggered');
  }
}
