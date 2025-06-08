import '../../../core/app_export.dart';
import '../models/task_item_model.dart';
import '../models/ticket_event_rewards_model.dart';

class TicketEventRewardsController extends GetxController {
  Rx<TicketEventRewardsModel?> ticketEventRewardsModel =
      Rx<TicketEventRewardsModel?>(null);
  RxList<TaskItemModel> taskItems = <TaskItemModel>[].obs;
  RxInt selectedTabIndex = 0.obs;
  RxBool showCongratulationsModal = true.obs;

  @override
  void onInit() {
    super.onInit();
    initializeData();
  }

  void initializeData() {
    ticketEventRewardsModel.value = TicketEventRewardsModel(
      userId: '939038393'.obs,
      bonusAmount: '₱ 123456789.00'.obs,
    );

    taskItems.value = [
      TaskItemModel(
        icon: ImageConstant.imgFrame14092.obs,
        title: 'First Deposit'.obs,
        description: 'Complete your first deposit '.obs,
        rewardText: 'Earn +1 Lucky wheel ticket'.obs,
        buttonText: 'Deposit'.obs,
        buttonType: TaskButtonType.deposit.obs,
        isCompleted: false.obs,
      ),
      TaskItemModel(
        icon: ImageConstant.imgFrame14092.obs,
        title: 'Fixed Payment Method Deposit'.obs,
        description: 'Complete Fixed Payment Method Deposit '.obs,
        rewardText: 'Earn +2 Golden Egg ticket'.obs,
        buttonText: 'Deposit'.obs,
        buttonType: TaskButtonType.deposit.obs,
        isCompleted: false.obs,
      ),
      TaskItemModel(
        icon: ImageConstant.imgGroup14094.obs,
        title: 'Registration successful'.obs,
        description: 'Registration successful day1 '.obs,
        rewardText: 'Earn +2 Golden Egg ticket'.obs,
        buttonText: 'Claim'.obs,
        buttonType: TaskButtonType.claim.obs,
        isCompleted: false.obs,
      ),
      TaskItemModel(
        icon: ImageConstant.imgGroup14095.obs,
        title: 'Sign in'.obs,
        description: '1 days after signing in'.obs,
        rewardText: ' Earn +1 Golden Egg ticket'.obs,
        progressText: '（0/1）'.obs,
        buttonText: 'View'.obs,
        buttonType: TaskButtonType.view.obs,
        isCompleted: false.obs,
      ),
      TaskItemModel(
        icon: ImageConstant.imgGroup14096.obs,
        title: 'VIP Grade'.obs,
        description: 'Upgrade to vip1\n'.obs,
        rewardText: 'Earn +1 Lucky Wheel ticket'.obs,
        buttonText: 'View'.obs,
        buttonType: TaskButtonType.view.obs,
        isCompleted: false.obs,
      ),
      TaskItemModel(
        icon: ImageConstant.imgGroup14097.obs,
        title: 'Money Rain'.obs,
        description: 'Participate money rain Monday 10:00 —- 11:00'.obs,
        rewardText: ' Earn +1 Golden Egg ticket'.obs,
        buttonText: 'View'.obs,
        buttonType: TaskButtonType.view.obs,
        isCompleted: false.obs,
      ),
    ];
  }

  void onTabChanged(int index) {
    selectedTabIndex.value = index;
    if (index == 1) {
      Get.toNamed(AppRoutes.myTicketRewardsScreen);
    }
  }

  void onTaskButtonPressed(int index) {
    TaskItemModel task = taskItems[index];
    TaskButtonType buttonType = task.buttonType?.value ?? TaskButtonType.view;

    switch (buttonType) {
      case TaskButtonType.deposit:
        handleDeposit();
        break;
      case TaskButtonType.claim:
        handleClaim(index);
        break;
      case TaskButtonType.view:
        handleView();
        break;
    }
  }

  void handleDeposit() {
    // Navigate to deposit screen or handle deposit logic
    print('Navigating to deposit screen');
  }

  void handleClaim(int index) {
    taskItems[index].isCompleted?.value = true;
    showCongratulationsModal.value = true;
  }

  void handleView() {
    // Handle view action or navigate to specific screen
    print('Handling view action');
  }

  void onGotItPressed() {
    showCongratulationsModal.value = false;
  }
}
