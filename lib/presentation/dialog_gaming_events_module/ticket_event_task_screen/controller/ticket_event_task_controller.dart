import '../../../core/app_export.dart';
import '../../../widgets/custom_bottom_navigation_bar.dart';
import '../../../widgets/custom_sidebar.dart';
import '../models/game_item_model.dart';
import '../models/task_item_model.dart';
import '../models/ticket_event_task_model.dart';

class TicketEventTaskController extends GetxController {
  var ticketEventTaskModel = Rx<TicketEventTaskModel?>(null);
  var showTicketDialog = false.obs;
  var selectedSidebarIndex = 1.obs;
  var selectedBottomIndex = 0.obs;

  RxList<GameItemModel> gameItems = <GameItemModel>[].obs;
  RxList<TaskItemModel> taskItems = <TaskItemModel>[].obs;

  List<CustomSidebarItem> sidebarItems = [];
  List<CustomBottomNavItem> bottomNavItems = [];

  @override
  void onInit() {
    super.onInit();
    ticketEventTaskModel.value = TicketEventTaskModel();
    _initializeGameItems();
    _initializeTaskItems();
    _initializeSidebarItems();
    _initializeBottomNavItems();
    showTicketDialog.value = true;
  }

  void _initializeGameItems() {
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
        title: 'Fortune Ox fortune'.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        showNotificationDot: false.obs,
      ),
      GameItemModel(
        gameImagePath: ImageConstant.img211000.obs,
        title: 'super Ace'.obs,
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

  void _initializeTaskItems() {
    taskItems.value = [
      TaskItemModel(
        title: 'Link a withdrawal card'.obs,
        buttonText: 'Bind'.obs,
        buttonVariant: TaskButtonVariant.gold.obs,
        taskType: TaskType.simple.obs,
      ),
      TaskItemModel(
        title: 'Verify mobile number'.obs,
        buttonText: 'Complete'.obs,
        buttonVariant: TaskButtonVariant.dark.obs,
        taskType: TaskType.simple.obs,
      ),
      TaskItemModel(
        title: 'Share to specific list ≥ '.obs,
        highlightText: '10'.obs,
        buttonText: 'Share'.obs,
        buttonVariant: TaskButtonVariant.gold.obs,
        taskType: TaskType.progress.obs,
        progressPercent: '0%'.obs,
        progressCount: '0/10'.obs,
        progressValue: 0.05.obs,
      ),
      TaskItemModel(
        title: 'Amount to deposit-After claiming the ticket ≥ '.obs,
        highlightText: '₱999'.obs,
        buttonText: 'Deposit'.obs,
        buttonVariant: TaskButtonVariant.gold.obs,
        taskType: TaskType.progress.obs,
        progressPercent: '10%'.obs,
        progressCount: '0/₱999'.obs,
        progressValue: 0.05.obs,
      ),
      TaskItemModel(
        title: 'Current Valid Bet: '.obs,
        currentBet: '₱100'.obs,
        description:
            'After claiming the ticket,the validbet in solt,FH,must be ≥ '.obs,
        highlightText: '₱999'.obs,
        buttonText: 'Go Play'.obs,
        buttonVariant: TaskButtonVariant.gold.obs,
        taskType: TaskType.complex.obs,
        progressPercent: '20%'.obs,
        progressCount: '0/₱999'.obs,
        progressValue: 0.36.obs,
      ),
      TaskItemModel(
        title: 'Successfully Registers ≥ '.obs,
        currentBet: '10'.obs,
        description:
            'After claiming the ticket,Each additional invitee who successfully registers ≥ '
                .obs,
        highlightText: '₱999'.obs,
        buttonText: 'Invite'.obs,
        buttonVariant: TaskButtonVariant.gold.obs,
        taskType: TaskType.complex.obs,
        progressPercent: '0%'.obs,
        progressCount: '0/₱999'.obs,
        progressValue: 0.04.obs,
      ),
    ];
  }

  void _initializeSidebarItems() {
    sidebarItems = [
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
  }

  void _initializeBottomNavItems() {
    bottomNavItems = [
      CustomBottomNavItem(
        label: 'Home',
        routeName: '/home',
        iconPath: ImageConstant.imgGroup13059,
      ),
      CustomBottomNavItem(
        label: 'Deposit',
        routeName: '/deposit',
        iconPath: ImageConstant.imgGroup13060,
      ),
      CustomBottomNavItem(
        label: 'Spin',
        routeName: '/spin',
        iconPath: ImageConstant.imgGroup13061,
        notificationBadgePath: ImageConstant.imgRedA70001,
      ),
      CustomBottomNavItem(
        label: 'Invite',
        routeName: '/invite',
        iconPath: '',
      ),
      CustomBottomNavItem(
        label: 'Teams',
        routeName: '/teams',
        iconPath: ImageConstant.imgGroup13062,
      ),
    ];
  }

  void onDownloadPressed() {
    // Handle download action
  }

  void onClosePressed() {
    // Handle close action
  }

  void onRefreshBalance() {
    // Handle refresh balance
  }

  void onWithdrawalPressed() {
    // Handle withdrawal action
  }

  void onDepositPressed() {
    // Handle deposit action
  }

  void onSidebarItemTap(int index, CustomSidebarItem item) {
    selectedSidebarIndex.value = index;
    // Handle sidebar navigation
  }

  void onGameTap(int index) {
    // Handle game selection
  }

  void onFabPressed() {
    // Handle FAB action
  }

  void onBottomNavTap(int index) {
    selectedBottomIndex.value = index;
    // Handle bottom navigation
  }

  void onCloseDialog() {
    showTicketDialog.value = false;
  }

  void onTaskButtonPressed(int index) {
    final task = taskItems[index];
    switch (task.buttonText?.value) {
      case 'Bind':
        // Handle bind action
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
      default:
        break;
    }
  }
}
