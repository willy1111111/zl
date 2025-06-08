import '../../../core/app_export.dart';
import '../models/task_item_model.dart';
import '../models/ticket_event_rewards_screen_three_model.dart';

class TicketEventRewardsScreenThreeController extends GetxController {
  Rx<TicketEventRewardsScreenThreeModel> ticketEventRewardsScreenThreeModelObj =
      TicketEventRewardsScreenThreeModel().obs;

  RxInt selectedTabIndex = 0.obs;
  RxBool showCongratulationsModal = false.obs;
  RxList<TaskItemModel> taskItems = <TaskItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    initializeTaskItems();
  }

  void initializeTaskItems() {
    taskItems.value = [
      TaskItemModel(
        icon: ImageConstant.imgFrame14092.obs,
        title: 'First Deposit'.obs,
        description: 'Complete your first deposit '.obs,
        rewardText: 'Earn +1 Lucky wheel ticket'.obs,
        buttonText: 'Deposit'.obs,
        buttonType: TaskButtonType.deposit.obs,
      ),
      TaskItemModel(
        icon: ImageConstant.imgFrame14092.obs,
        title: 'Fixed Payment Method Deposit'.obs,
        description: 'Complete Fixed Payment Method Deposit '.obs,
        rewardText: 'Earn +2 Golden Egg ticket'.obs,
        buttonText: 'Deposit'.obs,
        buttonType: TaskButtonType.deposit.obs,
      ),
      TaskItemModel(
        icon: ImageConstant.imgGroup14094.obs,
        title: 'Registration successful'.obs,
        description: 'Registration successful day1 '.obs,
        rewardText: 'Earn +2 Golden Egg ticket'.obs,
        buttonText: 'Claim'.obs,
        buttonType: TaskButtonType.claim.obs,
      ),
      TaskItemModel(
        icon: ImageConstant.imgGroup14095.obs,
        title: 'Sign in'.obs,
        description: '1 days after signing in'.obs,
        rewardText: ' Earn +1 Golden Egg ticket'.obs,
        buttonText: 'View'.obs,
        buttonType: TaskButtonType.view.obs,
        progressText: '（0/1）'.obs,
      ),
      TaskItemModel(
        icon: ImageConstant.imgGroup14096.obs,
        title: 'VIP Grade'.obs,
        description: 'Upgrade to vip1\n'.obs,
        rewardText: 'Earn +1 Lucky Wheel ticket'.obs,
        buttonText: 'View'.obs,
        buttonType: TaskButtonType.view.obs,
      ),
      TaskItemModel(
        icon: ImageConstant.imgGroup14097.obs,
        title: 'Money Rain'.obs,
        description: 'Participate money rain Monday 10:00 —- 11:00'.obs,
        rewardText: ' Earn +1 Golden Egg ticket'.obs,
        buttonText: 'View'.obs,
        buttonType: TaskButtonType.view.obs,
      ),
    ];
  }

  void onTaskButtonPressed(TaskItemModel task) {
    switch (task.buttonType?.value) {
      case TaskButtonType.claim:
        showCongratulationsModal.value = true;
        break;
      case TaskButtonType.deposit:
        handleDepositAction();
        break;
      case TaskButtonType.view:
        handleViewAction();
        break;
      default:
        break;
    }
  }

  void handleDepositAction() {
    // Handle deposit navigation or action
    print('Deposit action triggered');
  }

  void handleViewAction() {
    // Handle view navigation or action
    print('View action triggered');
  }

  void closeCongratulationsModal() {
    showCongratulationsModal.value = false;
  }

  void switchTab(int index) {
    selectedTabIndex.value = index;
    if (index == 1) {
      // Navigate to My Ticket screen if needed
      Get.toNamed(AppRoutes.myTicketRewardsScreen);
    }
  }
}
