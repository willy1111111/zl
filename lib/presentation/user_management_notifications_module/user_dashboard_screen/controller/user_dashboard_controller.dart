import '../../../core/app_export.dart';
import '../models/menu_option_item_model.dart';
import '../models/promotional_feature_item_model.dart';
import '../models/teams_center_item_model.dart';
import '../models/user_dashboard_model.dart';

class UserDashboardController extends GetxController {
  Rx<UserDashboardModel?> userDashboardModel = Rx<UserDashboardModel?>(null);
  RxList<TeamsCenterItemModel> teamsCenterItems = <TeamsCenterItemModel>[].obs;
  RxList<PromotionalFeatureItemModel> promotionalFeatures =
      <PromotionalFeatureItemModel>[].obs;
  RxList<MenuOptionItemModel> menuOptions = <MenuOptionItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    initializeUserDashboard();
    initializeTeamsCenterItems();
    initializePromotionalFeatures();
    initializeMenuOptions();
  }

  void initializeUserDashboard() {
    userDashboardModel.value = UserDashboardModel(
      userName: 'User name'.obs,
      userPhone: '98955464616'.obs,
      vipLevel: 'VIP 4'.obs,
      totalBalance: '₱ 693.00'.obs,
      totalBonusClaimed: '₱ 1324.00'.obs,
    );
  }

  void initializeTeamsCenterItems() {
    teamsCenterItems.value = [
      TeamsCenterItemModel(
        icon: ImageConstant.imgVector26x26.obs,
        title: 'Betting Record'.obs,
      ),
      TeamsCenterItemModel(
        icon: ImageConstant.imgVector26x20.obs,
        title: 'Account Record'.obs,
      ),
      TeamsCenterItemModel(
        icon: ImageConstant.imgVector25x26.obs,
        title: 'Deposit Record'.obs,
      ),
      TeamsCenterItemModel(
        icon: ImageConstant.imgVector26x24.obs,
        title: 'Withdrawal Record'.obs,
      ),
    ];
  }

  void initializePromotionalFeatures() {
    promotionalFeatures.value = [
      PromotionalFeatureItemModel(
        icon: ImageConstant.imgInvite1.obs,
        title: 'Invite -'.obs,
        description: 'Reconnend friends\nTo join'.obs,
        highlightText: ' jbet88 and Earn money'.obs,
      ),
      PromotionalFeatureItemModel(
        icon: ImageConstant.imgGroup12769.obs,
        title: 'Spin -'.obs,
        description: 'Win real money '.obs,
        highlightText: '₱500'.obs,
      ),
      PromotionalFeatureItemModel(
        icon: ImageConstant.imgGroup120051.obs,
        title: 'Cashback -'.obs,
        description: 'Weekly '.obs,
        highlightText: 'Max:20%'.obs,
      ),
      PromotionalFeatureItemModel(
        icon: ImageConstant
            .imgAdd2e694b50907790800188bb93242cee3957bd96358f3sm3f1.obs,
        title: 'Sign-in -'.obs,
        description: 'Continuous login\nContinuous rewards'.obs,
        highlightText: ''.obs,
      ),
      PromotionalFeatureItemModel(
        icon: ImageConstant.imgGroup13081Yellow100.obs,
        title: 'Cumulative Deposit -'.obs,
        description: ''.obs,
        highlightText: 'Get Bonus'.obs,
      ),
    ];
  }

  void initializeMenuOptions() {
    menuOptions.value = [
      MenuOptionItemModel(
        icon: ImageConstant.imgVectorBlueGray40018x22.obs,
        title: 'VIP'.obs,
        hasInstallButton: false.obs,
      ),
      MenuOptionItemModel(
        icon: ImageConstant.imgVector1.obs,
        title: 'Promotion'.obs,
        hasInstallButton: false.obs,
      ),
      MenuOptionItemModel(
        icon: ImageConstant.imgGroup830.obs,
        title: 'Notification'.obs,
        hasInstallButton: false.obs,
      ),
      MenuOptionItemModel(
        icon: ImageConstant.imgVectorBlueGray40017x20.obs,
        title: 'Download the official App for a ₱28 reward'.obs,
        hasInstallButton: true.obs,
      ),
      MenuOptionItemModel(
        icon: ImageConstant.imgVector20x20.obs,
        title: 'Live Support'.obs,
        hasInstallButton: false.obs,
      ),
      MenuOptionItemModel(
        icon: ImageConstant.imgVectorBlueGray40020x22.obs,
        title: 'Suggestion'.obs,
        hasInstallButton: false.obs,
      ),
      MenuOptionItemModel(
        icon: ImageConstant.imgVectorBlueGray400.obs,
        title: 'Setting'.obs,
        hasInstallButton: false.obs,
      ),
      MenuOptionItemModel(
        icon: ImageConstant.imgVectorBlueGray40019x20.obs,
        title: 'Help Center'.obs,
        hasInstallButton: false.obs,
      ),
      MenuOptionItemModel(
        icon: ImageConstant.imgVectorBlueGray40020x20.obs,
        title: 'Logout'.obs,
        hasInstallButton: false.obs,
      ),
    ];
  }

  void onWithdrawalPressed() {
    // Handle withdrawal action
  }

  void onDepositPressed() {
    // Handle deposit action
  }

  void onTeamsCenterItemPressed(TeamsCenterItemModel item) {
    // Handle teams center item press
  }

  void onPromotionalFeaturePressed(PromotionalFeatureItemModel item) {
    // Handle promotional feature press
  }

  void onMenuOptionPressed(MenuOptionItemModel item) {
    String title = item.title?.value ?? '';
    if (title == 'Notification') {
      Get.toNamed(AppRoutes.notificationsScreen);
    } else if (title == 'Setting') {
      Get.toNamed(AppRoutes.userProfileSettingsScreen);
    }
    // Handle other menu options
  }

  void onInstallButtonPressed() {
    // Handle install button press
  }
}
