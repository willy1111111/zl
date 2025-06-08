import '../../../core/app_export.dart';
import '../models/task_card_model.dart';
import '../models/ticket_event_rewards_screen_four_model.dart';

class TicketEventRewardsScreenFourController extends GetxController {
  Rx<TicketEventRewardsScreenFourModel> ticketEventRewardsScreenFourModelObj =
      TicketEventRewardsScreenFourModel().obs;

  RxBool showCongratulationsModal = true.obs;
  RxList<TaskCardModel> taskList = <TaskCardModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _initializeTaskList();
  }

  void _initializeTaskList() {
    taskList.value = [
      TaskCardModel(
          icon: ImageConstant.imgFrame14092.obs,
          title: 'First Deposit'.obs,
          description: 'Complete your first deposit '.obs,
          reward: 'Earn +1 Lucky wheel ticket'.obs,
          buttonText: 'Deposit'.obs,
          buttonType: TaskButtonType.green.obs,
          height: 82.obs),
      TaskCardModel(
          icon: ImageConstant.imgFrame14092.obs,
          title: 'Fixed Payment Method Deposit'.obs,
          description: 'Complete Fixed Payment Method Deposit '.obs,
          reward: 'Earn +2 Golden Egg ticket'.obs,
          buttonText: 'Deposit'.obs,
          buttonType: TaskButtonType.green.obs,
          height: 113.obs),
      TaskCardModel(
          icon: ImageConstant.imgGroup14094.obs,
          title: 'Registration successful'.obs,
          description: 'Registration successful day1 '.obs,
          reward: 'Earn +2 Golden Egg ticket'.obs,
          buttonText: 'Claim'.obs,
          buttonType: TaskButtonType.orange.obs,
          height: 97.obs),
      TaskCardModel(
          icon: ImageConstant.imgGroup14095.obs,
          title: 'Sign in'.obs,
          description: '1 days after signing in'.obs,
          reward: ' Earn +1 Golden Egg ticket'.obs,
          buttonText: 'View'.obs,
          buttonType: TaskButtonType.green.obs,
          height: 82.obs,
          progressText: '（0/1）'.obs),
      TaskCardModel(
          icon: ImageConstant.imgGroup14096.obs,
          title: 'VIP Grade'.obs,
          description: 'Upgrade to vip1'.obs,
          reward: 'Earn +1 Lucky Wheel ticket'.obs,
          buttonText: 'View'.obs,
          buttonType: TaskButtonType.green.obs,
          height: 82.obs),
      TaskCardModel(
          icon: ImageConstant.imgGroup14097.obs,
          title: 'Money Rain'.obs,
          description: 'Participate money rain Monday 10:00 —- 11:00'.obs,
          reward: ' Earn +1 Golden Egg ticket'.obs,
          buttonText: 'View'.obs,
          buttonType: TaskButtonType.green.obs,
          height: 97.obs),
    ];
  }

  void onTabChanged() {
    Get.toNamed(AppRoutes.myTicketRewardsScreen);
  }

  void onTaskButtonPressed(int index) {
    TaskCardModel task = taskList[index];

    switch (task.buttonText!.value) {
      case 'Deposit':
        _handleDepositAction();
        break;
      case 'Claim':
        _handleClaimAction(index);
        break;
      case 'View':
        _handleViewAction(index);
        break;
    }
  }

  void _handleDepositAction() {
    // Navigate to deposit screen or handle deposit logic
    Get.snackbar('Deposit', 'Redirecting to deposit page',
        backgroundColor: appTheme.colorFF85D4, colorText: appTheme.whiteCustom);
  }

  void _handleClaimAction(int index) {
    // Handle claim logic
    showCongratulationsModal.value = true;
  }

  void _handleViewAction(int index) {
    // Handle view action based on task type
    TaskCardModel task = taskList[index];

    if (task.title!.value == 'Sign in') {
      // Navigate to sign in page
      Get.snackbar('Sign In', 'Redirecting to sign in page',
          backgroundColor: appTheme.colorFF85D4,
          colorText: appTheme.whiteCustom);
    } else if (task.title!.value == 'VIP Grade') {
      // Navigate to VIP page
      Get.snackbar('VIP Grade', 'Redirecting to VIP page',
          backgroundColor: appTheme.colorFF85D4,
          colorText: appTheme.whiteCustom);
    } else if (task.title!.value == 'Money Rain') {
      // Navigate to Money Rain page
      Get.snackbar('Money Rain', 'Redirecting to Money Rain page',
          backgroundColor: appTheme.colorFF85D4,
          colorText: appTheme.whiteCustom);
    }
  }

  void onGotItPressed() {
    showCongratulationsModal.value = false;
  }
}
