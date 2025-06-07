import '../../../../../core/app_export.dart';
import '../models/menu_option_item_model.dart';
import '../models/narad_gaming_dashboard_model.dart';
import '../models/promotional_feature_item_model.dart';
import '../models/teams_center_item_model.dart';

class NaradGamingDashboardController extends GetxController {
  final naradGamingDashboardModel = Rx<NaradGamingDashboardModel?>(null);
  final teamsCenterItems = <TeamsCenterItemModel>[].obs;
  final promotionalFeatures = <PromotionalFeatureItemModel>[].obs;
  final menuOptions = <MenuOptionItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    naradGamingDashboardModel.value = NaradGamingDashboardModel();
    _initializeTeamsCenterItems();
    _initializePromotionalFeatures();
    _initializeMenuOptions();
  }

  void _initializeTeamsCenterItems() {
    teamsCenterItems.addAll([
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
    ]);
  }

  void _initializePromotionalFeatures() {
    promotionalFeatures.addAll([
      PromotionalFeatureItemModel(
        icon: ImageConstant.imgInvite1.obs,
        title: 'Invite -'.obs,
        subtitle: 'Reconnend friends\nTo join jbet88 and Earn money'.obs,
        highlightText: 'jbet88 and Earn money'.obs,
        showBorder: true.obs,
      ),
      PromotionalFeatureItemModel(
        icon: ImageConstant.imgGroup12769.obs,
        title: 'Spin -'.obs,
        subtitle: 'Win real money ₱500'.obs,
        highlightText: '₱500'.obs,
        showBorder: true.obs,
      ),
      PromotionalFeatureItemModel(
        icon: ImageConstant.imgGroup120051.obs,
        title: 'Cashback -'.obs,
        subtitle: 'Weekly Max:20%'.obs,
        highlightText: 'Max:20%'.obs,
        showBorder: true.obs,
      ),
      PromotionalFeatureItemModel(
        icon: ImageConstant
            .imgAdd2e694b50907790800188bb93242cee3957bd96358f3sm3f1.obs,
        title: 'Sign-in -'.obs,
        subtitle: 'Continuous login\nContinuous rewards'.obs,
        highlightText: ''.obs,
        showBorder: true.obs,
      ),
      PromotionalFeatureItemModel(
        icon: ImageConstant.imgGroup13081.obs,
        title: 'Cumulative Deposit -'.obs,
        subtitle: 'Get Bonus'.obs,
        highlightText: 'Get Bonus'.obs,
        showBorder: false.obs,
      ),
    ]);
  }

  void _initializeMenuOptions() {
    menuOptions.addAll([
      MenuOptionItemModel(
        icon: ImageConstant.imgVectorBlueGray40018x22.obs,
        title: 'VIP'.obs,
        showInstallButton: false.obs,
        showSpecialIcon: false.obs,
      ),
      MenuOptionItemModel(
        icon: ImageConstant.imgVector1.obs,
        title: 'Promotion'.obs,
        showInstallButton: false.obs,
        showSpecialIcon: false.obs,
      ),
      MenuOptionItemModel(
        icon: ImageConstant.imgGroup830.obs,
        title: 'Notification'.obs,
        showInstallButton: false.obs,
        showSpecialIcon: false.obs,
      ),
      MenuOptionItemModel(
        icon: ImageConstant.imgVectorBlueGray40017x20.obs,
        title: 'Download the official App for a ₱28 reward'.obs,
        showInstallButton: true.obs,
        showSpecialIcon: false.obs,
      ),
      MenuOptionItemModel(
        icon: ImageConstant.imgVector20x20.obs,
        title: 'Live Support'.obs,
        showInstallButton: false.obs,
        showSpecialIcon: false.obs,
      ),
      MenuOptionItemModel(
        icon: ImageConstant.imgVectorBlueGray40020x22.obs,
        title: 'Suggestion'.obs,
        showInstallButton: false.obs,
        showSpecialIcon: false.obs,
      ),
      MenuOptionItemModel(
        icon: ImageConstant.imgVectorBlueGray400.obs,
        title: 'Setting'.obs,
        showInstallButton: false.obs,
        showSpecialIcon: true.obs,
      ),
      MenuOptionItemModel(
        icon: ImageConstant.imgVectorBlueGray40019x20.obs,
        title: 'Help Center'.obs,
        showInstallButton: false.obs,
        showSpecialIcon: false.obs,
      ),
      MenuOptionItemModel(
        icon: ImageConstant.imgVectorBlueGray40020x20.obs,
        title: 'Logout'.obs,
        showInstallButton: false.obs,
        showSpecialIcon: false.obs,
      ),
    ]);
  }

  void onWithdrawalTap() {
    // Handle withdrawal action
  }

  void onDepositTap() {
    // Handle deposit action
  }

  void onTeamsCenterItemTap(TeamsCenterItemModel item) {
    // Handle teams center item tap
  }

  void onPromotionalFeatureTap(PromotionalFeatureItemModel item) {
    // Handle promotional feature tap
  }

  void onMenuOptionTap(MenuOptionItemModel item) {
    String title = item.title?.value ?? '';
    switch (title) {
      case 'VIP':
        // Navigate to VIP screen
        break;
      case 'Promotion':
        // Navigate to promotion screen
        break;
      case 'Notification':
        // Navigate to notification screen
        break;
      case 'Download the official App for a ₱28 reward':
        // Handle app download
        break;
      case 'Live Support':
        // Navigate to live support
        break;
      case 'Suggestion':
        // Navigate to suggestion screen
        break;
      case 'Setting':
        // Navigate to settings screen
        break;
      case 'Help Center':
        // Navigate to help center
        break;
      case 'Logout':
        // Handle logout
        break;
    }
  }

  void onTelegramTap() {
    // Handle telegram community tap
  }

  void onFacebookTap() {
    // Handle facebook community tap
  }

  void onFloatingBonusTap() {
    // Handle floating bonus button tap
  }
}
