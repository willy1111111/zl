import '../../../core/app_export.dart';
import '../models/game_card_model.dart';
import '../models/sidebar_menu_item_model.dart';

class GamingCasinoVipRewardsController extends GetxController {
  RxString balance = 'R\$1980.00'.obs;
  RxBool showVipDialog = true.obs;
  RxInt selectedSideMenuItem = 0.obs;
  RxInt selectedVipLevel = 4.obs;

  RxList<GameCardModel> gameList = <GameCardModel>[].obs;
  RxList<SidebarMenuItemModel> sideMenuItems = <SidebarMenuItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    initializeGameList();
    initializeSideMenuItems();
  }

  void initializeGameList() {
    gameList.value = [
      GameCardModel(
        backgroundImage: ImageConstant.img231000.obs,
        overlayImage: ImageConstant.imgGroup1019.obs,
        title: 'Fortune Ox fortune'.obs,
      ),
      GameCardModel(
        backgroundImage: ImageConstant.img491000.obs,
        overlayImage: null,
        title: 'super Ace'.obs,
      ),
      GameCardModel(
        backgroundImage: ImageConstant.imgLogowj93120x56.obs,
        overlayImage: null,
        title: 'Money Coming'.obs,
        hasNotification: true.obs,
      ),
      GameCardModel(
        backgroundImage: ImageConstant.img102x1000.obs,
        overlayImage: ImageConstant.img1baccarat1.obs,
        title: 'Roma x'.obs,
      ),
      GameCardModel(
        backgroundImage: ImageConstant.img211000.obs,
        overlayImage: ImageConstant.imgBaccarat2.obs,
        title: 'diamond party'.obs,
      ),
      GameCardModel(
        backgroundImage: ImageConstant.img911000.obs,
        overlayImage: ImageConstant.imgBaccarat1.obs,
        title: 'lucky coming'.obs,
      ),
      GameCardModel(
        backgroundImage: ImageConstant.img277771000.obs,
        overlayImage: ImageConstant.imgGroup1029.obs,
        title: 'Roma x'.obs,
      ),
      GameCardModel(
        backgroundImage: ImageConstant.img431000.obs,
        overlayImage: ImageConstant.imgGroup1029.obs,
        title: 'diamond party'.obs,
      ),
      GameCardModel(
        backgroundImage: ImageConstant.img441000.obs,
        overlayImage: ImageConstant.imgGroup1029.obs,
        title: 'lucky coming'.obs,
      ),
      GameCardModel(
        backgroundImage: ImageConstant.img471000.obs,
        overlayImage: ImageConstant.imgGroup1024.obs,
        title: 'Roma x'.obs,
      ),
      GameCardModel(
        backgroundImage: ImageConstant.img461000.obs,
        overlayImage: ImageConstant.imgGroup1024.obs,
        title: 'diamond party'.obs,
      ),
      GameCardModel(
        backgroundImage: ImageConstant.imgJdbslot092.obs,
        overlayImage: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
      ),
      GameCardModel(
        backgroundImage: ImageConstant.img771000.obs,
        overlayImage: ImageConstant.imgGroup1024.obs,
        title: 'Roma x'.obs,
      ),
      GameCardModel(
        backgroundImage: ImageConstant.img401000.obs,
        overlayImage: ImageConstant.imgGroup1024.obs,
        title: 'diamond party'.obs,
      ),
      GameCardModel(
        backgroundImage: ImageConstant.imgJdbslot105.obs,
        overlayImage: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
      ),
    ];
  }

  void initializeSideMenuItems() {
    sideMenuItems.value = [
      SidebarMenuItemModel(
        icon: ImageConstant.imgVectorDeepOrangeA400.obs,
        title: 'Hot'.obs,
        isSelected: true.obs,
      ),
      SidebarMenuItemModel(
        icon: ImageConstant.img10733643587.obs,
        title: 'Slot'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        icon: ImageConstant.img136x36.obs,
        title: 'Live'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        icon: ImageConstant.img5.obs,
        title: 'Bingo'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        icon: ImageConstant.img236x36.obs,
        title: 'Table'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        icon: ImageConstant.img7.obs,
        title: 'Fish'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        icon: ImageConstant.img336x36.obs,
        title: 'Egame'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        icon: ImageConstant.img6.obs,
        title: 'Sport'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        icon: ImageConstant.img11.obs,
        title: 'Collect'.obs,
        isSelected: false.obs,
      ),
    ];
  }

  void downloadApp() {
    Get.snackbar('Download', 'App download started');
  }

  void closeBanner() {
    Get.snackbar('Banner', 'Banner closed');
  }

  void refreshBalance() {
    Get.snackbar('Balance', 'Balance refreshed');
  }

  void navigateToWithdrawal() {
    Get.snackbar('Navigation', 'Navigate to withdrawal');
  }

  void navigateToDeposit() {
    Get.snackbar('Navigation', 'Navigate to deposit');
  }

  void closeNotification() {
    Get.snackbar('Notification', 'Notification closed');
  }

  void playGame(int index) {
    Get.snackbar('Game', 'Playing ${gameList[index].title?.value ?? "game"}');
  }

  void selectSideMenuItem(int index) {
    selectedSideMenuItem.value = index;
    for (int i = 0; i < sideMenuItems.length; i++) {
      sideMenuItems[i].isSelected?.value = i == index;
    }
  }

  void selectVipLevel(int index) {
    selectedVipLevel.value = index;
    showVipDialog.value = true;
  }

  void closeVipDialog() {
    showVipDialog.value = false;
  }

  void receiveReward() {
    Get.snackbar('Reward', 'VIP reward received successfully!');
    showVipDialog.value = false;
  }
}
