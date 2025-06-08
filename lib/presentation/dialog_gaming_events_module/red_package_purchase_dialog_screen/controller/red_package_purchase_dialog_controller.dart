import '../../../core/app_export.dart';
import '../../../widgets/custom_sidebar.dart';
import '../models/game_card_item_model.dart';
import '../models/red_package_purchase_dialog_model.dart';
import '../models/sidebar_menu_item_model.dart';

class RedPackagePurchaseDialogController extends GetxController {
  Rx<RedPackagePurchaseDialogModel> redPackagePurchaseDialogModel =
      RedPackagePurchaseDialogModel().obs;

  RxBool showDialog = true.obs;
  RxInt selectedSidebarIndex = 1.obs;
  RxList<GameCardItemModel> gameCards = <GameCardItemModel>[].obs;
  RxList<SidebarMenuItemModel> sidebarItems = <SidebarMenuItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    initializeGameCards();
    initializeSidebarItems();
  }

  void initializeGameCards() {
    gameCards.value = [
      GameCardItemModel(
        gameImagePath: ImageConstant.img231000.obs,
        overlayImagePath: ImageConstant.imgGroup1019.obs,
        title: 'Fortune Ox fortune'.obs,
        overlayWidth: 34.h.obs,
        overlayHeight: 18.h.obs,
        showNotificationDot: false.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img491000.obs,
        overlayImagePath: ImageConstant.imgGroup1019.obs,
        title: 'super Ace'.obs,
        overlayWidth: 34.h.obs,
        overlayHeight: 18.h.obs,
        showNotificationDot: false.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.imgLogowj931.obs,
        overlayImagePath: ImageConstant.imgGroup1019.obs,
        title: ''.obs,
        overlayWidth: 34.h.obs,
        overlayHeight: 18.h.obs,
        showNotificationDot: false.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img102x1000.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        title: 'Fortune Ox fortune'.obs,
        overlayWidth: 34.h.obs,
        overlayHeight: 18.h.obs,
        showNotificationDot: false.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img211000.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        title: 'super Ace'.obs,
        overlayWidth: 34.h.obs,
        overlayHeight: 18.h.obs,
        showNotificationDot: false.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img911000.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        title: 'Money Coming'.obs,
        overlayWidth: 34.h.obs,
        overlayHeight: 18.h.obs,
        showNotificationDot: true.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img277771000.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        title: 'Roma x'.obs,
        overlayWidth: 34.h.obs,
        overlayHeight: 18.h.obs,
        showNotificationDot: false.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img431000.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        title: 'diamond party'.obs,
        overlayWidth: 34.h.obs,
        overlayHeight: 18.h.obs,
        showNotificationDot: false.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img441000.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        title: 'lucky coming'.obs,
        overlayWidth: 34.h.obs,
        overlayHeight: 18.h.obs,
        showNotificationDot: false.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img471000.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        title: 'Roma x'.obs,
        overlayWidth: 34.h.obs,
        overlayHeight: 18.h.obs,
        showNotificationDot: false.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img461000.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        title: 'diamond party'.obs,
        overlayWidth: 34.h.obs,
        overlayHeight: 18.h.obs,
        showNotificationDot: true.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.imgJdbslot092.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
        overlayWidth: 34.h.obs,
        overlayHeight: 18.h.obs,
        showNotificationDot: false.obs,
      ),
    ];
  }

  void initializeSidebarItems() {
    sidebarItems.value = [
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
    // Handle close promo bar action
  }

  void onAddBalancePressed() {
    // Handle add balance action
  }

  void onWithdrawalPressed() {
    // Handle withdrawal action
  }

  void onDepositPressed() {
    // Handle deposit action
  }

  void onSidebarItemTap(int index, CustomSidebarItem item) {
    selectedSidebarIndex.value = index;
    for (int i = 0; i < sidebarItems.length; i++) {
      sidebarItems[i].isSelected?.value = i == index;
    }
    sidebarItems.refresh();
  }

  void onGameCardTap(int index) {
    // Handle game card tap
  }

  void closeDialog() {
    showDialog.value = false;
  }

  void onConfirmPressed() {
    // Handle confirm purchase action
    closeDialog();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
