import '../../../../../core/app_export.dart';
import '../models/agent_level_system_model.dart';
import '../models/faq_item_model.dart';
import '../models/income_item_model.dart';
import '../models/team_member_model.dart';

class AgentLevelSystemController extends GetxController {
  Rx<AgentLevelSystemModel> agentLevelSystemModel = AgentLevelSystemModel().obs;
  RxList<TeamMemberModel> teamMembers = <TeamMemberModel>[].obs;
  RxList<IncomeItemModel> incomeItems = <IncomeItemModel>[].obs;
  RxList<FaqItemModel> faqItems = <FaqItemModel>[].obs;
  RxInt expandedFaqIndex = (-1).obs;
  RxInt selectedTabIndex = 6.obs;

  @override
  void onInit() {
    super.onInit();
    initializeData();
  }

  void initializeData() {
    agentLevelSystemModel.value = AgentLevelSystemModel();

    // Initialize income items
    incomeItems.value = [
      IncomeItemModel(
        number: '1'.obs,
        title: 'Each Registration Bonus '.obs,
        amount: '+₱2'.obs,
        imagePath: ImageConstant.imgGroup2131329922.obs,
        arrowPath: ImageConstant.imgGroup2131329900.obs,
      ),
      IncomeItemModel(
        number: '2'.obs,
        title: 'Each Deposit Bonus '.obs,
        amount: '+₱5'.obs,
        imagePath: ImageConstant.imgGroup2131329922.obs,
        arrowPath: ImageConstant.imgGroup2131329900.obs,
      ),
      IncomeItemModel(
        number: '3'.obs,
        title: 'Maximum achievement reward\nis '.obs,
        amount: '+₱8888'.obs,
        imagePath: ImageConstant.imgGroup2131329922.obs,
        arrowPath: ImageConstant.imgGroup2131329900.obs,
      ),
      IncomeItemModel(
        number: '4'.obs,
        title: 'Agent Ranking Rewards up to '.obs,
        amount: '+₱8999'.obs,
        imagePath: ImageConstant.imgGroup2131329922.obs,
        arrowPath: ImageConstant.imgGroup2131329900.obs,
      ),
      IncomeItemModel(
        number: '5'.obs,
        title: 'Qualified Bonuses can receive up to '.obs,
        amount: '+₱58'.obs,
        subtitle: ' Per Qualified User'.obs,
        imagePath: ImageConstant.imgGroup2131329922.obs,
        arrowPath: ImageConstant.imgGroup2131329900.obs,
      ),
      IncomeItemModel(
        number: '6'.obs,
        title: ' Deposit Rebate'.obs,
        amount: 'UP TO 1.1%'.obs,
        imagePath: ImageConstant.imgGroup2131329922.obs,
        arrowPath: ImageConstant.imgGroup2131329900.obs,
      ),
      IncomeItemModel(
        number: '7'.obs,
        title: ' Betting Rebate in 4 levels'.obs,
        amount: '1%'.obs,
        imagePath: ImageConstant.imgGroup2131329922.obs,
        arrowPath: ImageConstant.imgGroup2131329900.obs,
      ),
    ];

    // Initialize FAQ items
    faqItems.value = [
      FaqItemModel(
        question: 'How does the invite system work?'.obs,
        answer:
            'When you share your referral link with any of your friends, family or advertise the link and a player sign up at our site that player becomes your referral and they will earn you commissions & extra rewards by playing at JILITAKA'
                .obs,
        isExpanded: true.obs,
        arrowPath: ImageConstant.imgGroup2131329900.obs,
      ),
      FaqItemModel(
        question: 'Can I see the data of my invition?'.obs,
        answer: ''.obs,
        isExpanded: false.obs,
        arrowPath: ImageConstant.imgGroup2131329900.obs,
      ),
      FaqItemModel(
        question: 'How much can I earn from my invition?'.obs,
        answer: ''.obs,
        isExpanded: false.obs,
        arrowPath: ImageConstant.imgGroup2131329900.obs,
      ),
      FaqItemModel(
        question:
            'How much does it cost to participate in the nationwide promotion?'
                .obs,
        answer: ''.obs,
        isExpanded: false.obs,
        arrowPath: ImageConstant.imgGroup2131329900.obs,
      ),
    ];

    expandedFaqIndex.value = 0;
  }

  void onTabChanged(int index) {
    selectedTabIndex.value = index;
    // Handle navigation based on tab index
    switch (index) {
      case 0:
        // Navigate to invite screen
        break;
      case 1:
        Get.toNamed(AppRoutes.achievementBonusScreen);
        break;
      case 2:
        // Navigate to ranking screen
        break;
      case 3:
        // Navigate to teams screen
        break;
      case 4:
        // Navigate to incomes screen
        break;
      case 5:
        // Navigate to records screen
        break;
      case 6:
        // Current FAQ screen
        break;
    }
  }

  void toggleFaq(int index) {
    if (expandedFaqIndex.value == index) {
      expandedFaqIndex.value = -1;
      faqItems[index].isExpanded?.value = false;
    } else {
      if (expandedFaqIndex.value != -1) {
        faqItems[expandedFaqIndex.value].isExpanded?.value = false;
      }
      expandedFaqIndex.value = index;
      faqItems[index].isExpanded?.value = true;
    }
  }

  void onInvitePressed() {
    // Handle invite button press
    // Navigate to invite screen or show invite modal
  }

  @override
  void onClose() {
    super.onClose();
  }
}
