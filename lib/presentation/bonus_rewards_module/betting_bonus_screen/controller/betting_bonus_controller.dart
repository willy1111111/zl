import '../../../../../core/app_export.dart';
import '../../../widgets/custom_bottom_navigation_bar.dart';
import '../../../widgets/custom_tab_bar.dart';
import '../models/betting_bonus_model.dart';

class BettingBonusController extends GetxController {
  RxList<BonusTableRowModel> bonusTableRows = <BonusTableRowModel>[].obs;

  List<CustomTabItem> tabItems = [
    CustomTabItem(
      iconPath: ImageConstant.imgFrame,
      label: 'invite',
      routeName: '/invite',
    ),
    CustomTabItem(
      iconPath: ImageConstant.imgFrameBlueGray40020x20,
      label: 'Achievement',
      routeName: '/achievement',
    ),
    CustomTabItem(
      iconPath: ImageConstant.imgFrame20x20,
      label: 'Teams',
      routeName: '/teams',
    ),
    CustomTabItem(
      iconPath: ImageConstant.imgFrameBlueGray400,
      label: 'Incomes',
      routeName: '/incomes',
    ),
    CustomTabItem(
      iconPath: ImageConstant.imgGroup1321314646,
      label: 'bonus',
      routeName: '/bonus',
    ),
    CustomTabItem(
      iconPath: ImageConstant.imgFrame1,
      label: 'FAQ',
      routeName: '/faq',
    ),
  ];

  List<CustomBottomNavItem> bottomBarItemList = [
    CustomBottomNavItem(
      title: 'Home',
      routeName: AppRoutes.gamingHomeScreen,
      iconPath: ImageConstant.imgGroup13007,
    ),
    CustomBottomNavItem(
      title: 'Deposit',
      routeName: AppRoutes.depositBonusHistoryScreen,
      iconPath: ImageConstant.imgGroup13004,
    ),
    CustomBottomNavItem(
      title: 'Invite',
      routeName: AppRoutes.qualifiedBonusScreen,
      iconPath: ImageConstant.imgInvite1,
      floatingIconPath: ImageConstant.imgInvite1,
    ),
    CustomBottomNavItem(
      title: 'Promotion',
      routeName: AppRoutes.casinoGamingHubScreen,
      iconPath: ImageConstant.imgGroup13067,
    ),
    CustomBottomNavItem(
      title: 'Teams',
      routeName: AppRoutes.achievementBonusScreen,
      iconPath: ImageConstant.imgGroup13046,
    ),
  ];

  @override
  void onInit() {
    super.onInit();
    _initializeBonusTableData();
  }

  void _initializeBonusTableData() {
    bonusTableRows.value = [
      BonusTableRowModel(
        date: '2023-09-09 19:00'.obs,
        team: '898****33'.obs,
        bonus: '+₱ 9.80'.obs,
      ),
      BonusTableRowModel(
        date: '2023-09-09 19:00'.obs,
        team: '898****33'.obs,
        bonus: '+₱ 9.80'.obs,
      ),
      BonusTableRowModel(
        date: '2023-09-09 19:00'.obs,
        team: '898****33'.obs,
        bonus: '+₱ 9.80'.obs,
      ),
      BonusTableRowModel(
        date: '2023-09-09 19:00'.obs,
        team: '898****33'.obs,
        bonus: '+₱ 9.80'.obs,
      ),
    ];
  }

  void onTabChanged(int index) {
    // Handle tab navigation
    if (index < tabItems.length) {
      Get.toNamed(tabItems[index].routeName);
    }
  }

  void onBottomNavChanged(int index) {
    if (index < bottomBarItemList.length) {
      Get.toNamed(bottomBarItemList[index].routeName);
    }
  }
}
