import '../../../../core/app_export.dart';
import '../models/casino_home_model.dart';
import '../models/game_item_model.dart';
import '../models/sidebar_menu_item_model.dart';

class CasinoHomeController extends GetxController {
  Rx<CasinoHomeModel> casinoHomeModel = CasinoHomeModel().obs;

  RxString balanceAmount = '₱1980.00'.obs;
  RxString jackpotAmount = '14,091,688.88'.obs;

  RxList<GameItemModel> gameItems = <GameItemModel>[].obs;
  RxList<SidebarMenuItemModel> sidebarMenuItems = <SidebarMenuItemModel>[].obs;
  RxList<RxString> providerLogos = <RxString>[].obs;

  @override
  void onInit() {
    super.onInit();
    casinoHomeModel.value = CasinoHomeModel();
    initializeGameItems();
    initializeSidebarMenuItems();
    initializeProviderLogos();
  }

  void initializeGameItems() {
    gameItems.value = [
      GameItemModel(
        imagePath: ImageConstant.img231000.obs,
        overlayImagePath: ImageConstant.imgFrame1019.obs,
        gameName: 'Fortune Ox fortune'.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img491000.obs,
        gameName: 'super Ace'.obs,
        hasOverlay: true.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.imgLogowj931.obs,
        gameName: 'Money Coming'.obs,
        hasCustomBackground: true.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img102x1000.obs,
        overlayImagePath: ImageConstant.img1baccarat1.obs,
        frameImagePath: ImageConstant.imgFrame1003.obs,
        gameName: 'Roma x'.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img211000.obs,
        overlayImagePath: ImageConstant.imgBaccarat2.obs,
        frameImagePath: ImageConstant.imgFrame1003.obs,
        gameName: 'diamond party'.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img911000.obs,
        overlayImagePath: ImageConstant.imgBaccarat1.obs,
        frameImagePath: ImageConstant.imgFrame1003.obs,
        gameName: 'lucky coming'.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img277771000.obs,
        frameImagePath: ImageConstant.imgFrame1007.obs,
        gameName: 'Roma x'.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img431000.obs,
        frameImagePath: ImageConstant.imgFrame1007.obs,
        gameName: 'diamond party'.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img441000.obs,
        frameImagePath: ImageConstant.imgFrame1007.obs,
        gameName: 'lucky coming'.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img471000.obs,
        frameImagePath: ImageConstant.imgFrame1003.obs,
        gameName: 'Roma x'.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img461000.obs,
        frameImagePath: ImageConstant.imgFrame1003.obs,
        gameName: 'diamond party'.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.imgJdbslot092.obs,
        frameImagePath: ImageConstant.imgFrame1003.obs,
        gameName: 'lucky coming'.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img771000.obs,
        frameImagePath: ImageConstant.imgFrame1003.obs,
        gameName: 'Roma x'.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img401000.obs,
        frameImagePath: ImageConstant.imgFrame1003.obs,
        gameName: 'diamond party'.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.imgJdbslot105.obs,
        frameImagePath: ImageConstant.imgFrame1003.obs,
        gameName: 'lucky coming'.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img851000.obs,
        frameImagePath: ImageConstant.imgFrame621.obs,
        gameName: 'Roma x'.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img357771000.obs,
        frameImagePath: ImageConstant.imgFrame621.obs,
        gameName: 'diamond party'.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img451000.obs,
        frameImagePath: ImageConstant.imgFrame621.obs,
        gameName: 'lucky coming'.obs,
      ),
    ];
  }

  void initializeSidebarMenuItems() {
    sidebarMenuItems.value = [
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
        iconPath: ImageConstant.img1.obs,
        title: 'Live'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        iconPath: ImageConstant.img536x36.obs,
        title: 'Bingo'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        iconPath: ImageConstant.img2.obs,
        title: 'Table'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        iconPath: ImageConstant.img7.obs,
        title: 'Fish'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        iconPath: ImageConstant.img3.obs,
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

  void initializeProviderLogos() {
    providerLogos.value = [
      ImageConstant.imgLogo1.obs,
      ImageConstant.imgLogo2.obs,
      ImageConstant.imgLogo3.obs,
      ImageConstant.imgVectorWhiteA70013x62.obs,
      ImageConstant.imgLogo5.obs,
      ImageConstant.imgYesbingo.obs,
      ImageConstant.imgJili.obs,
      ImageConstant.imgLogo6.obs,
      ImageConstant.imgLogo7.obs,
      ImageConstant.imgLogo8.obs,
      ImageConstant.imgJdb.obs,
      ImageConstant.imgFc.obs,
      ImageConstant.imgLogo213x62.obs,
      ImageConstant.imgPg.obs,
      ImageConstant.imgPp2.obs,
      ImageConstant.imgSexybcrt.obs,
    ];
  }

  void onDownloadTap() {
    // Handle download app action
  }

  void onCloseTap() {
    // Handle close promotional banner action
  }

  void onRefreshBalance() {
    // Handle refresh balance action
  }

  void onWithdrawalTap() {
    // Handle withdrawal action
  }

  void onDepositTap() {
    // Handle deposit action
  }

  void onSidebarMenuTap(int index) {
    for (int i = 0; i < sidebarMenuItems.length; i++) {
      sidebarMenuItems[i].isSelected?.value = i == index;
    }
  }

  void onGameItemTap(GameItemModel gameItem) {
    // Handle game item tap action
  }
}
