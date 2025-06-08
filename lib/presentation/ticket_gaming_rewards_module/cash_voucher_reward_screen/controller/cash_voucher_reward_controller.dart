import '../../../core/app_export.dart';
import '../models/cash_voucher_reward_model.dart';
import '../models/game_card_item_model.dart';
import '../models/sidebar_menu_item_model.dart';

class CashVoucherRewardController extends GetxController {
  Rx<CashVoucherRewardModel?> cashVoucherRewardModel =
      Rx<CashVoucherRewardModel?>(null);
  RxBool showCashVoucherDialog = true.obs;
  RxInt selectedSidebarIndex = 1.obs;
  RxList<GameCardItemModel> gameCardItems = <GameCardItemModel>[].obs;
  RxList<SidebarMenuItemModel> sidebarMenuItems = <SidebarMenuItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    cashVoucherRewardModel.value = CashVoucherRewardModel();
    initializeGameCardItems();
    initializeSidebarMenuItems();
  }

  void initializeGameCardItems() {
    gameCardItems.value = [
      GameCardItemModel(
        gameImagePath: ImageConstant.img231000.obs,
        overlayIconPath: ImageConstant.imgGroup1019.obs,
        title: 'Fortune Ox fortune'.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img491000.obs,
        overlayIconPath: ImageConstant.imgGroup1019.obs,
        title: 'super Ace'.obs,
        hasSpecialEffect: true.obs,
        specialEffectImagePath: ImageConstant.imgGroup120461.obs,
      ),
      GameCardItemModel(
        gameImagePath: ''.obs,
        overlayIconPath: ImageConstant.imgGroup1019.obs,
        title: ''.obs,
        isLogoCard: true.obs,
        logoImagePath: ImageConstant.imgLogowj931.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img102x1000.obs,
        overlayIconPath: ImageConstant.imgGroup1024.obs,
        title: 'Money Coming'.obs,
        hasOverlayImage: true.obs,
        overlayImagePath: ImageConstant.img1baccarat1.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img211000.obs,
        overlayIconPath: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
        hasOverlayImage: true.obs,
        overlayImagePath: ImageConstant.imgBaccarat2.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img911000.obs,
        overlayIconPath: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
        hasOverlayImage: true.obs,
        overlayImagePath: ImageConstant.imgBaccarat1.obs,
        hasBadge: true.obs,
        badgeCount: 1.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img277771000.obs,
        overlayIconPath: ImageConstant.imgGroup1029.obs,
        title: 'Roma x'.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img431000.obs,
        overlayIconPath: ImageConstant.imgGroup1029.obs,
        title: 'diamond party'.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img441000.obs,
        overlayIconPath: ImageConstant.imgGroup1029.obs,
        title: 'lucky coming'.obs,
        hasProgressBar: true.obs,
      ),
    ];
  }

  void initializeSidebarMenuItems() {
    sidebarMenuItems.value = [
      SidebarMenuItemModel(
        iconPath: ImageConstant.imgVectorDeepOrangeA400.obs,
        label: 'Hot'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        iconPath: ImageConstant.img132x32.obs,
        label: 'Collect'.obs,
        isSelected: true.obs,
      ),
      SidebarMenuItemModel(
        iconPath: ImageConstant.img10733643587.obs,
        label: 'Slot'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        iconPath: ImageConstant.img103.obs,
        label: 'Live'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        iconPath: ImageConstant.img5.obs,
        label: 'Bingo'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        iconPath: ImageConstant.img2.obs,
        label: 'Table'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        iconPath: ImageConstant.img7.obs,
        label: 'Fish'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        iconPath: ImageConstant.img3.obs,
        label: 'Egame'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        iconPath: ImageConstant.img6.obs,
        label: 'Sport'.obs,
        isSelected: false.obs,
      ),
    ];
  }

  void onDownloadPressed() {
    // Handle download action
  }

  void onClosePressed() {
    // Handle close action
  }

  void onBalanceActionTap() {
    // Handle balance action tap
  }

  void onWithdrawalPressed() {
    // Handle withdrawal action
  }

  void onDepositPressed() {
    // Handle deposit action
  }

  void onSidebarItemTap(int index) {
    selectedSidebarIndex.value = index;
    for (int i = 0; i < sidebarMenuItems.length; i++) {
      sidebarMenuItems[i].isSelected?.value = (i == index);
    }
  }

  void onGameCardTap(int index) {
    // Handle game card tap
  }

  void onCloseCashVoucherDialog() {
    showCashVoucherDialog.value = false;
  }

  void onConfirmCashVoucher() {
    showCashVoucherDialog.value = false;
    // Handle confirm action
  }

  @override
  void onClose() {
    super.onClose();
  }
}
