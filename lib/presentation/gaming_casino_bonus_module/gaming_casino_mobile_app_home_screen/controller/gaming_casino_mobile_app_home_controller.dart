import '../../../core/app_export.dart';
import '../models/bottom_nav_item_model.dart';
import '../models/game_card_item_model.dart';
import '../models/gaming_casino_mobile_app_home_model.dart';
import '../models/sidebar_menu_item_model.dart';

class GamingCasinoMobileAppHomeController extends GetxController {
  Rx<GamingCasinoMobileAppHomeModel> gamingCasinoMobileAppHomeModelObj =
      GamingCasinoMobileAppHomeModel().obs;

  RxString userBalance = 'R\$1980.00'.obs;
  RxBool showModal = false.obs;
  RxInt selectedSidebarIndex = 0.obs;
  RxInt selectedBottomNavIndex = 0.obs;

  RxList<GameCardItemModel> gameItems = <GameCardItemModel>[].obs;
  RxList<SidebarMenuItemModel> sidebarItems = <SidebarMenuItemModel>[].obs;
  RxList<BottomNavItemModel> bottomNavItems = <BottomNavItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    initializeGameItems();
    initializeSidebarItems();
    initializeBottomNavItems();
  }

  void initializeGameItems() {
    gameItems.value = [
      GameCardItemModel(
        backgroundImage: ImageConstant.img231000.obs,
        overlayImage: ImageConstant.imgGroup1019.obs,
        title: 'Fortune Ox fortune'.obs,
        isSpecial: false.obs,
      ),
      GameCardItemModel(
        backgroundImage: ImageConstant.img491000.obs,
        overlayImage: ImageConstant.imgGroup1019.obs,
        title: 'super Ace'.obs,
        isSpecial: false.obs,
      ),
      GameCardItemModel(
        backgroundImage: ImageConstant.imgLogowj93120x56.obs,
        overlayImage: ImageConstant.imgGroup1019.obs,
        title: 'Money Coming'.obs,
        isSpecial: true.obs,
      ),
      GameCardItemModel(
        backgroundImage: ImageConstant.img102x1000.obs,
        overlayImage: ImageConstant.img1baccarat188x88.obs,
        playIcon: ImageConstant.imgGroup1024.obs,
        title: 'Roma x'.obs,
        isSpecial: false.obs,
      ),
      GameCardItemModel(
        backgroundImage: ImageConstant.img211000.obs,
        overlayImage: ImageConstant.imgBaccarat288x88.obs,
        playIcon: ImageConstant.imgGroup1024.obs,
        title: 'diamond party'.obs,
        isSpecial: false.obs,
      ),
      GameCardItemModel(
        backgroundImage: ImageConstant.img911000.obs,
        overlayImage: ImageConstant.imgBaccarat1.obs,
        playIcon: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
        isSpecial: false.obs,
      ),
      GameCardItemModel(
        backgroundImage: ImageConstant.img277771000.obs,
        overlayImage: ImageConstant.imgGroup1029.obs,
        title: 'Roma x'.obs,
        isSpecial: false.obs,
      ),
      GameCardItemModel(
        backgroundImage: ImageConstant.img431000.obs,
        overlayImage: ImageConstant.imgGroup1029.obs,
        title: 'diamond party'.obs,
        isSpecial: false.obs,
      ),
      GameCardItemModel(
        backgroundImage: ImageConstant.img441000.obs,
        overlayImage: ImageConstant.imgGroup1029.obs,
        title: 'lucky coming'.obs,
        isSpecial: false.obs,
      ),
      GameCardItemModel(
        backgroundImage: ImageConstant.img471000.obs,
        overlayImage: ImageConstant.imgGroup1024.obs,
        title: 'Roma x'.obs,
        isSpecial: false.obs,
      ),
      GameCardItemModel(
        backgroundImage: ImageConstant.img461000.obs,
        overlayImage: ImageConstant.imgGroup1024.obs,
        title: 'diamond party'.obs,
        isSpecial: false.obs,
      ),
      GameCardItemModel(
        backgroundImage: ImageConstant.imgJdbslot092.obs,
        overlayImage: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
        isSpecial: false.obs,
      ),
    ];
  }

  void initializeSidebarItems() {
    sidebarItems.value = [
      SidebarMenuItemModel(
        iconPath: ImageConstant.imgVectorDeepOrangeA400.obs,
        title: 'Hot'.obs,
        isSelected: true.obs,
      ),
      SidebarMenuItemModel(
        iconPath: ImageConstant.img10733643587.obs,
        title: 'Slot'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        iconPath: ImageConstant.img136x36.obs,
        title: 'Live'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        iconPath: ImageConstant.img5.obs,
        title: 'Bingo'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        iconPath: ImageConstant.img236x36.obs,
        title: 'Table'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        iconPath: ImageConstant.img7.obs,
        title: 'Fish'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        iconPath: ImageConstant.img336x36.obs,
        title: 'Egame'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        iconPath: ImageConstant.img6.obs,
        title: 'Sport'.obs,
        isSelected: false.obs,
      ),
    ];
  }

  void initializeBottomNavItems() {
    bottomNavItems.value = [
      BottomNavItemModel(
        iconPath: ImageConstant.imgVectorLightGreenA700.obs,
        title: 'Home'.obs,
        isSelected: true.obs,
      ),
      BottomNavItemModel(
        iconPath: ImageConstant.img1BlueGray40020x20.obs,
        title: 'Promotion'.obs,
        isSelected: false.obs,
      ),
      BottomNavItemModel(
        iconPath: ImageConstant.img1BlueGray40020x19.obs,
        title: 'Invite'.obs,
        isSelected: false.obs,
      ),
      BottomNavItemModel(
        iconPath: ImageConstant.img1BlueGray40020x19.obs,
        title: 'Deposit'.obs,
        isSelected: false.obs,
      ),
      BottomNavItemModel(
        iconPath: ImageConstant.img1BlueGray400.obs,
        title: 'Teams'.obs,
        isSelected: false.obs,
      ),
    ];
  }

  void closePromotion() {
    // Handle promotion banner close
  }

  void refreshBalance() {
    // Handle balance refresh
  }

  void navigateToWithdrawal() {
    // Navigate to withdrawal screen
  }

  void navigateToDeposit() {
    // Navigate to deposit screen
  }

  void selectSidebarItem(int index) {
    selectedSidebarIndex.value = index;
    for (int i = 0; i < sidebarItems.length; i++) {
      sidebarItems[i].isSelected?.value = (i == index);
    }
    sidebarItems.refresh();
  }

  void selectGame(int index) {
    // Handle game selection
  }

  void selectBottomNavItem(int index) {
    selectedBottomNavIndex.value = index;
    for (int i = 0; i < bottomNavItems.length; i++) {
      bottomNavItems[i].isSelected?.value = (i == index);
    }
    bottomNavItems.refresh();
  }

  void navigateToInvite() {
    // Navigate to invite screen
  }

  void closeModal() {
    showModal.value = false;
  }

  void showModalDialog() {
    showModal.value = true;
  }
}
