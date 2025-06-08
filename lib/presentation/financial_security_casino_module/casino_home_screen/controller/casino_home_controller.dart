import '../../../core/app_export.dart';
import '../models/casino_home_model.dart';
import '../models/game_item_model.dart';
import '../models/sidebar_menu_item_model.dart';

class CasinoHomeController extends GetxController {
  Rx<CasinoHomeModel> casinoHomeModel = CasinoHomeModel().obs;
  RxString balanceAmount = 'R\$1980.00'.obs;
  RxInt selectedSidebarIndex = 0.obs;
  RxList<GameItemModel> gameItems = <GameItemModel>[].obs;
  RxList<SidebarMenuItemModel> sidebarItems = <SidebarMenuItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    initializeData();
  }

  void initializeData() {
    sidebarItems.value = [
      SidebarMenuItemModel(
        title: 'Hot'.obs,
        icon: ImageConstant.imgVectorDeepOrangeA400.obs,
        isSelected: true.obs,
        isHotItem: true.obs,
      ),
      SidebarMenuItemModel(
        title: 'Slot'.obs,
        icon: ImageConstant.img10733643587.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        title: 'Live'.obs,
        icon: ImageConstant.img136x36.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        title: 'Bingo'.obs,
        icon: ImageConstant.img536x36.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        title: 'Table'.obs,
        icon: ImageConstant.img236x36.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        title: 'Fish'.obs,
        icon: ImageConstant.img7.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        title: 'Egame'.obs,
        icon: ImageConstant.img3.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        title: 'Sport'.obs,
        icon: ImageConstant.img6.obs,
        isSelected: false.obs,
      ),
    ];

    gameItems.value = [
      GameItemModel(
        title: 'Fortune Ox fortune'.obs,
        image: ImageConstant.img231000.obs,
        overlayImage: ImageConstant.imgGroup1019.obs,
        hasSpecialButton: false.obs,
      ),
      GameItemModel(
        title: 'super Ace'.obs,
        image: ImageConstant.img491000.obs,
        hasSpecialButton: true.obs,
        specialButtonText: 'Receive'.obs,
        signInText: 'sign-in'.obs,
      ),
      GameItemModel(
        title: 'Money Coming'.obs,
        image: ImageConstant.imgLogowj931.obs,
        isPlaceholder: true.obs,
        hasSpecialButton: false.obs,
      ),
      GameItemModel(
        title: 'Roma x'.obs,
        image: ImageConstant.img102x1000.obs,
        overlayImage: ImageConstant.imgGroup1024.obs,
        baccaratOverlay: ImageConstant.img1baccarat1.obs,
        hasSpecialButton: false.obs,
      ),
      GameItemModel(
        title: 'diamond party'.obs,
        image: ImageConstant.img211000.obs,
        overlayImage: ImageConstant.imgGroup1024.obs,
        baccaratOverlay: ImageConstant.imgBaccarat2.obs,
        hasSpecialButton: false.obs,
      ),
      GameItemModel(
        title: 'lucky coming'.obs,
        image: ImageConstant.img911000.obs,
        overlayImage: ImageConstant.imgGroup1024.obs,
        baccaratOverlay: ImageConstant.imgBaccarat1.obs,
        hasSpecialButton: false.obs,
      ),
      GameItemModel(
        title: 'Roma x'.obs,
        image: ImageConstant.img277771000.obs,
        overlayImage: ImageConstant.imgGroup1029.obs,
        hasSpecialButton: false.obs,
      ),
      GameItemModel(
        title: 'diamond party'.obs,
        image: ImageConstant.img431000.obs,
        overlayImage: ImageConstant.imgGroup1029.obs,
        hasSpecialButton: false.obs,
      ),
      GameItemModel(
        title: 'lucky coming'.obs,
        image: ImageConstant.img441000.obs,
        overlayImage: ImageConstant.imgGroup1029.obs,
        hasSpecialButton: false.obs,
      ),
      GameItemModel(
        title: 'Roma x'.obs,
        image: ImageConstant.img471000.obs,
        overlayImage: ImageConstant.imgGroup1024.obs,
        hasAdditionalOverlay: true.obs,
        hasSpecialButton: false.obs,
      ),
      GameItemModel(
        title: 'diamond party'.obs,
        image: ImageConstant.img461000.obs,
        overlayImage: ImageConstant.imgGroup1024.obs,
        hasAdditionalOverlay: true.obs,
        hasSpecialButton: false.obs,
      ),
      GameItemModel(
        title: 'lucky coming'.obs,
        image: ImageConstant.imgJdbslot092.obs,
        overlayImage: ImageConstant.imgGroup1024.obs,
        hasAdditionalOverlay: true.obs,
        hasSpecialButton: false.obs,
      ),
    ];
  }

  void onWithdrawalPressed() {
    // Handle withdrawal button press
    Get.snackbar('Withdrawal', 'Withdrawal button pressed');
  }

  void onDepositPressed() {
    // Handle deposit button press
    Get.snackbar('Deposit', 'Deposit button pressed');
  }

  void onSidebarItemTap(int index) {
    for (int i = 0; i < sidebarItems.length; i++) {
      sidebarItems[i].isSelected?.value = i == index;
    }
    selectedSidebarIndex.value = index;
  }

  void onGameItemTap(int index) {
    // Handle game item tap
    Get.snackbar('Game', 'Game ${gameItems[index].title?.value ?? ''} tapped');
  }

  void onBottomNavChanged(int index) {
    // Handle bottom navigation change
    switch (index) {
      case 0:
        // Home
        break;
      case 1:
        // Deposit
        break;
      case 2:
        // Invite
        break;
      case 3:
        // Promotion
        break;
      case 4:
        // Teams
        break;
    }
  }
}
