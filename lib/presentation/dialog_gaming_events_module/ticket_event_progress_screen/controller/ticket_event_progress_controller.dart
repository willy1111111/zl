import '../../../core/app_export.dart';
import '../../../widgets/custom_sidebar.dart';
import '../models/game_item_model.dart';
import '../models/task_item_model.dart';
import '../models/ticket_event_progress_model.dart';

class TicketEventProgressController extends GetxController {
  Rx<TicketEventProgressModel> ticketEventProgressModel =
      TicketEventProgressModel().obs;

  RxBool isModalVisible = true.obs;
  RxInt selectedSidebarIndex = 1.obs;
  RxList<GameItemModel> gameItems = <GameItemModel>[].obs;
  RxList<TaskItemModel> taskItems = <TaskItemModel>[].obs;

  List<CustomSidebarItem> sidebarItems = [
    CustomSidebarItem(
      iconPath: ImageConstant.imgVectorDeepOrangeA400,
      label: 'Hot',
      routeName: '/hot',
      iconHeight: 27,
    ),
    CustomSidebarItem(
      iconPath: ImageConstant.img132x32,
      label: 'Collect',
      routeName: '/collect',
    ),
    CustomSidebarItem(
      iconPath: ImageConstant.img10733643587,
      label: 'Slot',
      routeName: '/slot',
    ),
    CustomSidebarItem(
      iconPath: ImageConstant.img103,
      label: 'Live',
      routeName: '/live',
    ),
    CustomSidebarItem(
      iconPath: ImageConstant.img5,
      label: 'Bingo',
      routeName: '/bingo',
    ),
    CustomSidebarItem(
      iconPath: ImageConstant.img2,
      label: 'Table',
      routeName: '/table',
    ),
    CustomSidebarItem(
      iconPath: ImageConstant.img7,
      label: 'Fish',
      routeName: '/fish',
    ),
    CustomSidebarItem(
      iconPath: ImageConstant.img3,
      label: 'Egame',
      routeName: '/egame',
    ),
    CustomSidebarItem(
      iconPath: ImageConstant.img6,
      label: 'Sport',
      routeName: '/sport',
    ),
  ];

  @override
  void onInit() {
    super.onInit();
    ticketEventProgressModel.value = TicketEventProgressModel();
    initializeGameItems();
    initializeTaskItems();
  }

  void initializeGameItems() {
    gameItems.value = [
      GameItemModel(
        gameImagePath: ImageConstant.img231000.obs,
        title: 'Fortune Ox fortune'.obs,
        overlayImagePath: ImageConstant.imgGroup1019.obs,
        showNotificationDot: false.obs,
      ),
      GameItemModel(
        gameImagePath: ImageConstant.img491000.obs,
        title: 'super Ace'.obs,
        overlayImagePath: ImageConstant.imgGroup1019.obs,
        showNotificationDot: false.obs,
      ),
      GameItemModel(
        gameImagePath: ImageConstant.img102x1000.obs,
        title: 'Roma x'.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        showNotificationDot: false.obs,
      ),
      GameItemModel(
        gameImagePath: ImageConstant.img211000.obs,
        title: 'diamond party'.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        showNotificationDot: false.obs,
      ),
      GameItemModel(
        gameImagePath: ImageConstant.img911000.obs,
        title: 'Money Coming'.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        showNotificationDot: true.obs,
      ),
      GameItemModel(
        gameImagePath: ImageConstant.img277771000.obs,
        title: 'Roma x'.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        showNotificationDot: false.obs,
      ),
      GameItemModel(
        gameImagePath: ImageConstant.img431000.obs,
        title: 'diamond party'.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        showNotificationDot: false.obs,
      ),
      GameItemModel(
        gameImagePath: ImageConstant.img441000.obs,
        title: 'lucky coming'.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        showNotificationDot: false.obs,
      ),
      GameItemModel(
        gameImagePath: ImageConstant.img471000.obs,
        title: 'Roma x'.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        showNotificationDot: false.obs,
      ),
      GameItemModel(
        gameImagePath: ImageConstant.img461000.obs,
        title: 'diamond party'.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        showNotificationDot: true.obs,
      ),
      GameItemModel(
        gameImagePath: ImageConstant.imgJdbslot092.obs,
        title: 'lucky coming'.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        showNotificationDot: false.obs,
      ),
    ];
  }

  void initializeTaskItems() {
    taskItems.value = [
      TaskItemModel(
        title: 'Link a withdrawal card'.obs,
        buttonText: 'Bind'.obs,
        taskType: TaskType.simple,
        isCompleted: false.obs,
      ),
      TaskItemModel(
        title: 'Verify mobile number'.obs,
        buttonText: 'Verify'.obs,
        taskType: TaskType.simple,
        isCompleted: false.obs,
      ),
      TaskItemModel(
        title: 'Share to specific list ≥ '.obs,
        highlightedText: '10'.obs,
        buttonText: 'Share'.obs,
        taskType: TaskType.withProgress,
        progressValue: 0.0.obs, // Modified: Changed from RxInt to RxDouble
        progressText: '0%'.obs,
        statusText: '0/10'.obs,
        isCompleted: false.obs,
      ),
      TaskItemModel(
        title: 'Amount to deposit-After claiming the ticket ≥ '.obs,
        highlightedText: '₱999'.obs,
        buttonText: 'Deposit'.obs,
        taskType: TaskType.withProgress,
        progressValue: 10.0.obs, // Modified: Changed from RxInt to RxDouble
        progressText: '10%'.obs,
        statusText: '0/₱999'.obs,
        isCompleted: false.obs,
      ),
      TaskItemModel(
        title: 'Current Valid Bet: '.obs,
        highlightedText: '₱100'.obs,
        subtitle:
            'After claiming the ticket,the validbet in solt,FH,must be ≥ '.obs,
        subtitleHighlight: '₱999'.obs,
        buttonText: 'Go Play'.obs,
        taskType: TaskType.withSubtitle,
        progressValue: 20.0.obs, // Modified: Changed from RxInt to RxDouble
        progressText: '20%'.obs,
        statusText: '0/₱999'.obs,
        isCompleted: false.obs,
      ),
      TaskItemModel(
        title: 'Successfully Registers ≥ '.obs,
        highlightedText: '10'.obs,
        subtitle:
            'After claiming the ticket,Each additional invitee who successfully registers ≥ '
                .obs,
        subtitleHighlight: '₱999'.obs,
        buttonText: 'Invite'.obs,
        taskType: TaskType.withSubtitle,
        progressValue: 0.0.obs, // Modified: Changed from RxInt to RxDouble
        progressText: '0%'.obs,
        statusText: '0/₱999'.obs,
        isCompleted: false.obs,
      ),
    ];
  }

  void closeModal() {
    isModalVisible.value = false;
  }

  void closePromoBar() {
    // Handle promo bar close action
  }

  void onDownloadPressed() {
    // Handle download button press
  }

  void onRefreshBalance() {
    // Handle balance refresh
  }

  void onWithdrawalPressed() {
    // Handle withdrawal button press
  }

  void onDepositPressed() {
    // Handle deposit button press
  }

  void onSidebarItemTap(int index, CustomSidebarItem item) {
    selectedSidebarIndex.value = index;
    // Handle sidebar navigation
  }

  void onGameCardTap(int index) {
    // Handle game card tap
  }

  void onTaskButtonPressed(int index) {
    final task = taskItems[index];
    // Handle task button press based on task type
    switch (task.buttonText?.value) {
      case 'Bind':
        // Handle bind action
        break;
      case 'Verify':
        // Handle verify action
        break;
      case 'Share':
        // Handle share action
        break;
      case 'Deposit':
        // Handle deposit action
        break;
      case 'Go Play':
        // Handle go play action
        break;
      case 'Invite':
        // Handle invite action
        break;
    }
  }
}
