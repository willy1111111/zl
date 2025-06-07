import '../../../../../core/app_export.dart';
import '../models/jbet88_user_dashboard_model.dart';
import '../models/main_menu_item_model.dart';
import '../models/settings_menu_item_model.dart';
import '../models/teams_center_item_model.dart';

class Jbet88UserDashboardController extends GetxController {
  Rx<Jbet88UserDashboardModel> dashboardModelObj =
      Jbet88UserDashboardModel().obs;

  RxList<TeamsCenterItemModel> teamsCenterItems = <TeamsCenterItemModel>[].obs;
  RxList<MainMenuItemModel> mainMenuItems = <MainMenuItemModel>[].obs;
  RxList<SettingsMenuItemModel> settingsMenuItems =
      <SettingsMenuItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _initializeData();
  }

  void _initializeData() {
    dashboardModelObj.value = Jbet88UserDashboardModel(
      userName: 'User name'.obs,
      userId: '98955464616'.obs,
      vipLevel: 'VIP 4'.obs,
      totalBalance: '₱ 693.00'.obs,
      totalBonusClaimed: '₱ 1324.00'.obs,
    );

    teamsCenterItems.value = [
      TeamsCenterItemModel(
        icon: ImageConstant.imgVector26x26.obs,
        title: 'Betting\nRecord'.obs,
      ),
      TeamsCenterItemModel(
        icon: ImageConstant.imgVector26x20.obs,
        title: 'Account\nRecord'.obs,
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

    mainMenuItems.value = [
      MainMenuItemModel(
        icon: ImageConstant.imgInvite1.obs,
        title: 'Invite -'.obs,
        subtitle: 'Reconnend friends\nTo join'.obs,
        highlightText: 'jbet88 and Earn money'.obs,
      ),
      MainMenuItemModel(
        icon: ImageConstant.imgFrame2131330004.obs,
        title: 'Spin -'.obs,
        subtitle: 'Win real money'.obs,
        highlightText: '₱500'.obs,
      ),
      MainMenuItemModel(
        icon: ImageConstant.imgGroup120051.obs,
        title: 'Cashback -'.obs,
        subtitle: 'Weekly'.obs,
        highlightText: 'Max:20%'.obs,
      ),
      MainMenuItemModel(
        icon: ImageConstant
            .imgAdd2e694b50907790800188bb93242cee3957bd96358f3sm3f1.obs,
        title: 'Sign-in -'.obs,
        subtitle: 'Continuous login\nContinuous rewards'.obs,
      ),
      MainMenuItemModel(
        icon: ImageConstant.imgGroup13081.obs,
        title: 'Cumulative Deposit -'.obs,
        highlightText: 'Get Bonus'.obs,
      ),
      MainMenuItemModel(
        icon: ImageConstant.imgFrame14123.obs,
        title: 'Ticket Event'.obs,
      ),
    ];

    settingsMenuItems.value = [
      SettingsMenuItemModel(
        icon: ImageConstant.imgVectorBlueGray40018x22.obs,
        title: 'VIP'.obs,
        iconWidth: 22.0
            .obs, // Modified: Changed RxInt to RxDouble for type compatibility
        iconHeight: 18.0
            .obs, // Modified: Changed RxInt to RxDouble for type compatibility
      ),
      SettingsMenuItemModel(
        icon: ImageConstant.imgVector1.obs,
        title: 'Promotion'.obs,
      ),
      SettingsMenuItemModel(
        icon: ImageConstant.imgGroup830.obs,
        title: 'Notification'.obs,
        iconWidth: 22.0
            .obs, // Modified: Changed RxInt to RxDouble for type compatibility
      ),
      SettingsMenuItemModel(
        icon: ImageConstant.imgVectorBlueGray40017x20.obs,
        title: 'Download the official App for a ₱28 reward'.obs,
        iconHeight: 17.0
            .obs, // Modified: Changed RxInt to RxDouble for type compatibility
        showButton: true.obs,
        buttonText: 'INSTALALL'.obs,
      ),
      SettingsMenuItemModel(
        icon: ImageConstant.imgVector20x20.obs,
        title: 'Live Support'.obs,
      ),
      SettingsMenuItemModel(
        icon: ImageConstant.imgVectorBlueGray40020x22.obs,
        title: 'Suggestion'.obs,
        iconWidth: 22.0
            .obs, // Modified: Changed RxInt to RxDouble for type compatibility
      ),
      SettingsMenuItemModel(
        icon: ImageConstant.imgVectorBlueGray400.obs,
        title: 'Setting'.obs,
      ),
      SettingsMenuItemModel(
        icon: ImageConstant.imgVectorBlueGray40019x20.obs,
        title: 'Help Center'.obs,
        iconHeight: 19.0
            .obs, // Modified: Changed RxInt to RxDouble for type compatibility
      ),
      SettingsMenuItemModel(
        icon: ImageConstant.img1BlueGray400.obs,
        title: 'Phone Verification-'.obs,
        subtitle: 'Get Bonus +₱38'.obs,
      ),
      SettingsMenuItemModel(
        icon: ImageConstant.imgVectorBlueGray40020x20.obs,
        title: 'Logout'.obs,
      ),
    ];
  }

  void onWithdrawalTap() {
    // Handle withdrawal button tap
  }

  void onDepositTap() {
    // Handle deposit button tap
  }

  void onMainMenuItemTap(int index) {
    // Handle main menu item tap based on index
  }

  void onSettingsMenuItemTap(int index) {
    // Handle settings menu item tap based on index
  }

  void onExchangeGiftCodeTap() {
    // Handle gift code exchange
  }

  void onTelegramTap() {
    // Handle telegram link
  }

  void onFacebookTap() {
    // Handle facebook link
  }

  void onFloatingActionButtonTap() {
    // Handle floating action button tap
  }
}
