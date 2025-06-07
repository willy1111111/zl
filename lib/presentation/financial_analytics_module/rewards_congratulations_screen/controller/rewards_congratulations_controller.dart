import '../../../core/app_export.dart';
import '../models/promotional_item_model.dart';
import '../models/rewards_congratulations_model.dart';
import '../models/settings_item_model.dart';

class RewardsCongratulationsController extends GetxController {
  Rx<RewardsCongratulationsModel?> rewardsModel =
      RewardsCongratulationsModel().obs;
  RxBool showCongratulationsOverlay = true.obs;
  RxString congratulationsAmount = '₱67.99'.obs;

  RxList<PromotionalItemModel> promotionalItems = <PromotionalItemModel>[].obs;
  RxList<SettingsItemModel> settingsItems = <SettingsItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    initializeData();
  }

  void initializeData() {
    rewardsModel.value = RewardsCongratulationsModel(
      userName: 'User name'.obs,
      userId: '98955464616'.obs,
      balance: '1324.00'.obs,
      vipLevel: 'VIP 4'.obs,
    );

    promotionalItems.value = [
      PromotionalItemModel(
        iconPath: ImageConstant.imgInvite1.obs,
        title: 'Invite -'.obs,
        description: 'Reconnend friends\nTo join'.obs,
        highlightText: 'jbet88 and Earn money'.obs,
      ),
      PromotionalItemModel(
        iconPath: ImageConstant.imgGroup12097.obs,
        title: 'Spin -'.obs,
        description: 'Win real money '.obs,
        highlightText: '₱500'.obs,
      ),
      PromotionalItemModel(
        iconPath: ImageConstant.imgGroup120051.obs,
        title: 'Cashback -'.obs,
        description: 'Weekly '.obs,
        highlightText: 'Max:20%'.obs,
      ),
    ];

    settingsItems.value = [
      SettingsItemModel(
        iconPath: ImageConstant.imgVectorBlueGray40018x22.obs,
        title: 'VIP'.obs,
        showArrow: true.obs,
      ),
      SettingsItemModel(
        iconPath: ImageConstant.imgVector3.obs,
        title: 'Promotion'.obs,
        showArrow: true.obs,
      ),
      SettingsItemModel(
        iconPath: ImageConstant.imgGroup830.obs,
        title: 'Notification'.obs,
        showArrow: true.obs,
      ),
      SettingsItemModel(
        iconPath: ImageConstant.imgVectorBlueGray40017x20.obs,
        title: 'Free ₱28 bonus by\ndownloading the official APP'.obs,
        showInstallButton: true.obs,
        showArrow: false.obs,
      ),
      SettingsItemModel(
        iconPath: ImageConstant.imgVectorBlueGray40020x20.obs,
        title: 'Setting'.obs,
        showArrow: true.obs,
      ),
      SettingsItemModel(
        iconPath: ImageConstant.imgVector20x20.obs,
        title: 'Live Support'.obs,
        showArrow: true.obs,
      ),
    ];
  }

  void onWithdrawalPressed() {
    // Handle withdrawal action
    print('Withdrawal pressed');
  }

  void onDepositPressed() {
    // Handle deposit action
    print('Deposit pressed');
  }

  void onSpecialButtonPressed() {
    // Handle special button action
    print('Special button pressed');
  }

  void onPromotionalItemTapped(PromotionalItemModel item) {
    // Handle promotional item tap
    print('Promotional item tapped: ${item.title?.value}');
  }

  void onSettingsItemTapped(SettingsItemModel item) {
    // Handle settings item tap
    print('Settings item tapped: ${item.title?.value}');
  }

  void onInstallButtonPressed() {
    // Handle install button action
    print('Install button pressed');
  }

  void hideCongratulationsOverlay() {
    showCongratulationsOverlay.value = false;
  }

  void showCongratulations() {
    showCongratulationsOverlay.value = true;
  }
}
