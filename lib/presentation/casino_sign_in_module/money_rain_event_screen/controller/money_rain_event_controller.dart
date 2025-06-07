import '../../../../../core/app_export.dart';
import '../models/floating_money_model.dart';
import '../models/game_item_model.dart';
import '../models/money_rain_event_model.dart';
import '../models/schedule_day_model.dart';
import '../models/sidebar_menu_item_model.dart';
import '../models/time_slot_model.dart';

class MoneyRainEventController extends GetxController {
  Rx<MoneyRainEventModel> moneyRainEventModel = MoneyRainEventModel().obs;

  RxBool isMoneyRainModalVisible = false.obs;
  RxString balanceAmount = 'R\$1980.00'.obs;
  RxString jackpotAmount = '14,091,688.88'.obs;
  RxInt selectedSidebarIndex = 0.obs;
  RxString countdownTimer = '00:00:01'.obs;

  late RxList<FloatingMoneyModel> floatingMoneyItems;
  late RxList<GameItemModel> gameItems;
  late RxList<SidebarMenuItemModel> sidebarItems;
  late RxList<ScheduleDayModel> scheduleDays;
  late RxList<TimeSlotModel> timeSlots;

  @override
  void onInit() {
    super.onInit();
    moneyRainEventModel.value = MoneyRainEventModel();
    _initializeFloatingMoney();
    _initializeGameItems();
    _initializeSidebarItems();
    _initializeScheduleDays();
    _initializeTimeSlots();
    _startCountdownTimer();
  }

  void _initializeFloatingMoney() {
    floatingMoneyItems = <FloatingMoneyModel>[
      FloatingMoneyModel(
          imagePath: ImageConstant.img6554,
          top: 34,
          left: 177,
          width: 53,
          height: 54),
      FloatingMoneyModel(
          imagePath: ImageConstant.img6563,
          top: 89,
          left: 75,
          width: 69,
          height: 70),
      FloatingMoneyModel(
          imagePath: ImageConstant.img6564,
          top: 0,
          left: 0,
          width: 54,
          height: 61),
      FloatingMoneyModel(
          imagePath: ImageConstant.img6563,
          top: 100,
          left: 221,
          width: 69,
          height: 70),
      FloatingMoneyModel(
          imagePath: ImageConstant.img6563,
          top: 680,
          left: 154,
          width: 69,
          height: 70),
      FloatingMoneyModel(
          imagePath: ImageConstant.img6563,
          top: 585,
          left: 3,
          width: 69,
          height: 70),
      FloatingMoneyModel(
          imagePath: ImageConstant.img6567,
          top: 614,
          left: 146,
          width: 52,
          height: 52),
      FloatingMoneyModel(
          imagePath: ImageConstant.img6567,
          top: 592,
          left: 244,
          width: 52,
          height: 52),
      FloatingMoneyModel(
          imagePath: ImageConstant.img6568,
          top: 661,
          left: 310,
          width: 50,
          height: 49),
      FloatingMoneyModel(
          imagePath: ImageConstant.img6568,
          top: 582,
          left: 71,
          width: 50,
          height: 49),
      FloatingMoneyModel(
          imagePath: ImageConstant.img6568,
          top: 744,
          left: 220,
          width: 50,
          height: 49),
      FloatingMoneyModel(
          imagePath: ImageConstant.img6568,
          top: 742,
          left: 101,
          width: 50,
          height: 49),
      FloatingMoneyModel(
          imagePath: ImageConstant.img6555,
          top: 34,
          left: 295,
          width: 53,
          height: 48),
      FloatingMoneyModel(
          imagePath: ImageConstant.img6572,
          top: 0,
          left: 100,
          width: 51,
          height: 45),
      FloatingMoneyModel(
          imagePath: ImageConstant.img6555,
          top: 676,
          left: 66,
          width: 53,
          height: 48),
    ].obs;
  }

  void _initializeGameItems() {
    gameItems = <GameItemModel>[
      GameItemModel(
        imagePath: ImageConstant.img231000,
        title: 'Fortune Ox fortune',
        overlayImage: ImageConstant.imgGroup1019,
        hasNotification: false,
      ),
      GameItemModel(
        imagePath: ImageConstant.img491000,
        title: 'super Ace',
        hasNotification: false,
      ),
      GameItemModel(
        imagePath: ImageConstant.imgLogowj93120x56,
        title: '',
        hasNotification: false,
        backgroundColor: appTheme.colorFF3035,
      ),
      GameItemModel(
        imagePath: ImageConstant.img102x1000,
        title: 'Roma x',
        overlayImage: ImageConstant.img1baccarat1,
        iconImage: ImageConstant.imgGroup1024,
        hasNotification: false,
      ),
      GameItemModel(
        imagePath: ImageConstant.img211000,
        title: 'diamond party',
        overlayImage: ImageConstant.imgBaccarat2,
        iconImage: ImageConstant.imgGroup1024,
        hasNotification: false,
      ),
      GameItemModel(
        imagePath: ImageConstant.img911000,
        title: 'Money Coming',
        overlayImage: ImageConstant.imgBaccarat1,
        iconImage: ImageConstant.imgGroup1024,
        hasNotification: true,
        notificationCount: 1,
      ),
      GameItemModel(
        imagePath: ImageConstant.img277771000,
        title: 'Roma x',
        iconImage: ImageConstant.imgGroup1029,
        hasNotification: false,
      ),
      GameItemModel(
        imagePath: ImageConstant.img431000,
        title: 'diamond party',
        iconImage: ImageConstant.imgGroup1029,
        hasNotification: false,
      ),
      GameItemModel(
        imagePath: ImageConstant.img441000,
        title: 'lucky coming',
        iconImage: ImageConstant.imgGroup1029,
        hasNotification: false,
      ),
    ].obs;
  }

  void _initializeSidebarItems() {
    sidebarItems = <SidebarMenuItemModel>[
      SidebarMenuItemModel(
        imagePath: ImageConstant.imgVectorDeepOrangeA40001,
        title: 'Hot',
        isActive: true,
      ),
      SidebarMenuItemModel(
        imagePath: ImageConstant.img10733643587,
        title: 'Slot',
        isActive: false,
      ),
      SidebarMenuItemModel(
        imagePath: ImageConstant.img136x36,
        title: 'Live',
        isActive: false,
      ),
      SidebarMenuItemModel(
        imagePath: ImageConstant.img5,
        title: 'Bingo',
        isActive: false,
      ),
      SidebarMenuItemModel(
        imagePath: ImageConstant.img2,
        title: 'Table',
        isActive: false,
      ),
      SidebarMenuItemModel(
        imagePath: ImageConstant.img736x36,
        title: 'Fish',
        isActive: false,
      ),
    ].obs;
  }

  void _initializeScheduleDays() {
    scheduleDays = <ScheduleDayModel>[
      ScheduleDayModel(day: 'Mon.', isActive: false),
      ScheduleDayModel(day: 'Tues.', isActive: false),
      ScheduleDayModel(day: 'Wed.', isActive: false),
      ScheduleDayModel(day: 'Thu.', isActive: true),
      ScheduleDayModel(day: 'Fri.', isActive: false),
      ScheduleDayModel(day: 'Sat.', isActive: false),
      ScheduleDayModel(day: 'Sun.', isActive: false),
    ].obs;
  }

  void _initializeTimeSlots() {
    timeSlots = <TimeSlotModel>[
      TimeSlotModel(time: '01:00-02:59', isActive: false),
      TimeSlotModel(time: '02:00-02:59', isActive: false),
      TimeSlotModel(time: '03:00-03:59', isActive: true),
      TimeSlotModel(time: '04:00-04:59', isActive: true),
      TimeSlotModel(time: '05:00-05:59', isActive: true),
      TimeSlotModel(time: '06:00-06:59', isActive: true),
    ].obs;
  }

  void _startCountdownTimer() {
    int seconds = 1;
    Stream.periodic(Duration(seconds: 1), (i) {
      final hours = (seconds ~/ 3600).toString().padLeft(2, '0');
      final minutes = ((seconds % 3600) ~/ 60).toString().padLeft(2, '0');
      final secs = (seconds % 60).toString().padLeft(2, '0');

      countdownTimer.value = '$hours:$minutes:$secs';
      seconds++;

      if (seconds > 3600) seconds = 1;

      return seconds;
    }).listen((_) {});
  }

  void onDownloadPressed() {
    // Handle download action
  }

  void onClosePressed() {
    // Handle close action
  }

  void onWithdrawalPressed() {
    // Handle withdrawal action
  }

  void onDepositPressed() {
    // Handle deposit action
  }

  void onGamePressed(GameItemModel game) {
    // Handle game selection
  }

  void onCollectPressed() {
    // Handle collect action
  }

  void onSidebarItemPressed(SidebarMenuItemModel item) {
    // Update active state
    for (int i = 0; i < sidebarItems.length; i++) {
      sidebarItems[i].isActive?.value =
          false; // Modified: Use value property for Rx<bool>
    }
    item.isActive?.value = true; // Modified: Use value property for Rx<bool>
    sidebarItems.refresh();
  }

  void showMoneyRainModal() {
    isMoneyRainModalVisible.value = true;
  }

  void closeMoneyRainModal() {
    isMoneyRainModalVisible.value = false;
  }

  @override
  void onClose() {
    super.onClose();
  }
}
