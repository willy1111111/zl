import '../../../core/app_export.dart';
import '../models/task_item_model.dart';
import '../models/ticket_event_model.dart';

class TicketEventController extends GetxController {
  Rx<TicketEventModel> ticketEventModel = TicketEventModel().obs;
  RxInt selectedTabIndex = 0.obs;
  RxList<TaskItemModel> tasks = <TaskItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    ticketEventModel.value = TicketEventModel();
    initializeTasks();
  }

  void initializeTasks() {
    tasks.value = [
      TaskItemModel(
        title: 'First Deposit'.obs,
        description: 'Complete your first deposit '.obs,
        rewardText: 'Earn +1 Lucky wheel ticket'.obs,
        iconPath: ImageConstant.imgFrame14092.obs,
        buttonText: 'Deposit'.obs,
        buttonType: TaskButtonType.green.obs,
      ),
      TaskItemModel(
        title: 'Fixed Payment Method Deposit'.obs,
        description: 'Complete Fixed Payment Method Deposit '.obs,
        rewardText: 'Earn +2 Golden Egg ticket'.obs,
        iconPath: ImageConstant.imgFrame14092.obs,
        buttonText: 'Deposit'.obs,
        buttonType: TaskButtonType.green.obs,
      ),
      TaskItemModel(
        title: 'Registration successful'.obs,
        description: 'Registration successful day1 '.obs,
        rewardText: 'Earn +2 Golden Egg ticket'.obs,
        iconPath: ImageConstant.imgGroup14094.obs,
        buttonText: 'Claim'.obs,
        buttonType: TaskButtonType.orange.obs,
      ),
      TaskItemModel(
        title: 'Sign in'.obs,
        description: '1 days after signing in'.obs,
        rewardText: ' Earn +1 Golden Egg ticket'.obs,
        iconPath: ImageConstant.imgGroup14095.obs,
        buttonText: 'View'.obs,
        buttonType: TaskButtonType.green.obs,
        progressText: '（0/1）'.obs,
      ),
      TaskItemModel(
        title: 'VIP Grade'.obs,
        description: 'Upgrade to vip1\n'.obs,
        rewardText: 'Earn +1 Lucky Wheel ticket'.obs,
        iconPath: ImageConstant.imgGroup14096.obs,
        buttonText: 'View'.obs,
        buttonType: TaskButtonType.green.obs,
      ),
      TaskItemModel(
        title: 'Money Rain'.obs,
        description: 'Participate money rain Monday 10:00 —- 11:00'.obs,
        rewardText: ' Earn +1 Golden Egg ticket'.obs,
        iconPath: ImageConstant.imgGroup14097Gray90001.obs,
        buttonText: 'View'.obs,
        buttonType: TaskButtonType.green.obs,
      ),
      TaskItemModel(
        title: 'Invite Registration'.obs,
        description: 'Each additional invitee who successfully registers '.obs,
        rewardText: 'Earn +1 Golden Egg ticket'.obs,
        iconPath: ImageConstant.imgGroup14098.obs,
        buttonText: 'View'.obs,
        buttonType: TaskButtonType.green.obs,
      ),
      TaskItemModel(
        title: 'Invite Deposit'.obs,
        description:
            'Each additional invitee who successfully\ndeposits any amount'.obs,
        rewardText: ' Earn +1 Golden Egg ticket'.obs,
        iconPath: ImageConstant.imgGroup14098.obs,
        buttonText: 'View'.obs,
        buttonType: TaskButtonType.green.obs,
      ),
      TaskItemModel(
        title: 'Invitation qualified'.obs,
        description: 'Each additional invitee who Invitation qualified '.obs,
        rewardText: 'Earn +1 Golden Egg ticket'.obs,
        iconPath: ImageConstant.imgGroup14098.obs,
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

  void handleTaskAction(TaskItemModel task) {
    String buttonText = task.buttonText?.value ?? '';

    switch (buttonText.toLowerCase()) {
      case 'deposit':
        // Navigate to deposit screen or handle deposit action
        Get.snackbar(
          'Action',
          'Navigating to deposit screen',
          backgroundColor: appTheme.colorFF2528,
          colorText: appTheme.whiteCustom,
        );
        break;
      case 'claim':
        // Handle claim action
        Get.snackbar(
          'Success',
          'Reward claimed successfully',
          backgroundColor: appTheme.colorFF85D4,
          colorText: appTheme.colorFF1E20,
        );
        break;
      case 'view':
        // Handle view action
        Get.snackbar(
          'Info',
          'Viewing task details',
          backgroundColor: appTheme.colorFF2528,
          colorText: appTheme.whiteCustom,
        );
        break;
      default:
        break;
    }
  }
}
