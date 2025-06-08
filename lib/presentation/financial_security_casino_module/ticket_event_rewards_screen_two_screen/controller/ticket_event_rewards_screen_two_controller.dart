import '../../../core/app_export.dart';
import '../models/task_item_model.dart';
import '../models/ticket_event_rewards_screen_two_model.dart';

class TicketEventRewardsScreenTwoController extends GetxController {
  Rx<TicketEventRewardsScreenTwoModel> ticketEventRewardsScreenTwoModelObj =
      TicketEventRewardsScreenTwoModel().obs;

  RxInt selectedTabIndex = 0.obs;
  RxBool showModal = true.obs;
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
        reward: 'Earn +1 Lucky wheel ticket'.obs,
        buttonText: 'Deposit'.obs,
        buttonType: TaskButtonType.green.obs,
      ),
      TaskItemModel(
        icon: ImageConstant.imgFrame14092.obs,
        title: 'Fixed Payment Method Deposit'.obs,
        description: 'Complete Fixed Payment Method Deposit '.obs,
        reward: 'Earn +2 Golden Egg ticket'.obs,
        buttonText: 'Deposit'.obs,
        buttonType: TaskButtonType.green.obs,
      ),
      TaskItemModel(
        icon: ImageConstant.imgGroup14094.obs,
        title: 'Registration successful'.obs,
        description: 'Registration successful day1 '.obs,
        reward: 'Earn +2 Golden Egg ticket'.obs,
        buttonText: 'Claim'.obs,
        buttonType: TaskButtonType.orange.obs,
      ),
      TaskItemModel(
        icon: ImageConstant.imgGroup14095.obs,
        title: 'Sign in'.obs,
        description: '1 days after signing in'.obs,
        reward: ' Earn +1 Golden Egg ticket'.obs,
        buttonText: 'View'.obs,
        buttonType: TaskButtonType.green.obs,
        progress: '（0/1）'.obs,
      ),
      TaskItemModel(
        icon: ImageConstant.imgGroup14096.obs,
        title: 'VIP Grade'.obs,
        description: 'Upgrade to vip1\n'.obs,
        reward: 'Earn +1 Lucky Wheel ticket'.obs,
        buttonText: 'View'.obs,
        buttonType: TaskButtonType.green.obs,
      ),
      TaskItemModel(
        icon: ImageConstant.imgGroup14097.obs,
        title: 'Money Rain'.obs,
        description: 'Participate money rain Monday 10:00 —- 11:00'.obs,
        reward: ' Earn +1 Golden Egg ticket'.obs,
        buttonText: 'View'.obs,
        buttonType: TaskButtonType.green.obs,
      ),
    ];
  }

  void selectTab(int index) {
    selectedTabIndex.value = index;
    if (index == 1) {
      Get.toNamed(AppRoutes.myTicketRewardsScreen);
    }
  }

  void closeModal() {
    showModal.value = false;
  }

  void onTaskButtonPressed(TaskItemModel task) {
    String buttonText = task.buttonText?.value ?? '';
    if (buttonText == 'Deposit') {
      // Navigate to deposit screen or show deposit options
    } else if (buttonText == 'Claim') {
      // Handle claim action
      showModal.value = true;
    } else if (buttonText == 'View') {
      // Navigate to respective view screen
    }
  }
}
