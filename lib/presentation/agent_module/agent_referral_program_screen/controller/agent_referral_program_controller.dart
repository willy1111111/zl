import '../../../../core/app_export.dart';
import '../models/agent_referral_program_model.dart';

class AgentReferralProgramController extends GetxController {
  RxList<AgentReferralProgramModel> incomeItems =
      <AgentReferralProgramModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _initializeIncomeItems();
  }

  void _initializeIncomeItems() {
    incomeItems.value = [
      AgentReferralProgramModel(
        number: '1'.obs,
        title: 'Each Registration Bonus  '.obs,
        amount: '+₱2'.obs,
        backgroundImagePath: ImageConstant.imgGroup2131329928.obs,
        expandIconPath: ImageConstant.imgGroup2131329900.obs,
      ),
      AgentReferralProgramModel(
        number: '2'.obs,
        title: 'Each Deposit Bonus '.obs,
        amount: '+₱5'.obs,
        backgroundImagePath: ImageConstant.imgGroup2131329928.obs,
        expandIconPath: ImageConstant.imgGroup2131329900.obs,
      ),
      AgentReferralProgramModel(
        number: '3'.obs,
        title: 'Maximum achievement reward\nis '.obs,
        amount: '+₱8888'.obs,
        backgroundImagePath: ImageConstant.imgGroup2131329928.obs,
        expandIconPath: ImageConstant.imgGroup2131329900.obs,
        isMultiLine: true.obs,
      ),
      AgentReferralProgramModel(
        number: '4'.obs,
        title: 'Agent Ranking Rewards up to '.obs,
        amount: '+₱8999'.obs,
        backgroundImagePath: ImageConstant.imgGroup2131329928.obs,
        expandIconPath: ImageConstant.imgGroup2131329900.obs,
      ),
      AgentReferralProgramModel(
        number: '5'.obs,
        title: 'Qualified Bonuses can receive up to '.obs,
        amount: '+₱58'.obs,
        subtitle: ' Per Qualified User'.obs,
        backgroundImagePath: ImageConstant.imgGroup2131329928.obs,
        expandIconPath: ImageConstant.imgGroup2131329900.obs,
      ),
      AgentReferralProgramModel(
        number: '6'.obs,
        title: ' Deposit Rebate'.obs,
        amount: 'UP TO 1.1%'.obs,
        backgroundImagePath: ImageConstant.imgGroup2131329928.obs,
        expandIconPath: ImageConstant.imgGroup2131329900.obs,
        isAmountFirst: true.obs,
      ),
      AgentReferralProgramModel(
        number: '7'.obs,
        title: ' Betting Rebate in 4 levels'.obs,
        amount: '1%'.obs,
        backgroundImagePath: ImageConstant.imgGroup2131329928.obs,
        expandIconPath: ImageConstant.imgGroup2131329900.obs,
        isAmountFirst: true.obs,
      ),
    ];
  }

  void onRegisterTap() {
    // Handle register & earn button tap
    print('Register & Earn tapped');
  }

  void onInviteTap() {
    // Handle invite button tap
    print('Invite tapped');
  }

  void onIncomeItemTap(int index) {
    // Handle income item tap for expansion
    print('Income item $index tapped');
  }
}
