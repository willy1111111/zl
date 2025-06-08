import '../../../core/app_export.dart';
import '../models/game_card_item_model.dart';
import '../models/jet_bet_casino_home_model.dart';
import '../models/provider_logo_item_model.dart';
import '../models/sidebar_item_model.dart';

class JetBetCasinoHomeController extends GetxController {
  Rx<JetBetCasinoHomeModel> jetBetCasinoHomeModel = JetBetCasinoHomeModel().obs;
  RxList<GameCardItemModel> gameItems = <GameCardItemModel>[].obs;
  RxList<ProviderLogoItemModel> providerLogos = <ProviderLogoItemModel>[].obs;
  RxList<SidebarItemModel> sidebarItems = <SidebarItemModel>[].obs;
  RxInt selectedSidebarIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    jetBetCasinoHomeModel.value = JetBetCasinoHomeModel();
    _initializeGameItems();
    _initializeProviderLogos();
    _initializeSidebarItems();
  }

  void _initializeGameItems() {
    gameItems.value = [
      GameCardItemModel(
        gameImagePath: ImageConstant.img231000.obs,
        overlayImagePath: ImageConstant.imgGroup1019.obs,
        gameTitle: 'Fortune Ox fortune'.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img491000.obs,
        overlayImagePath: ImageConstant.imgGroup1019.obs,
        gameTitle: 'super Ace'.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.imgLogowj931.obs,
        overlayImagePath: ImageConstant.imgGroup1019.obs,
        gameTitle: 'Money Coming'.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img102x1000.obs,
        overlayImagePath: ImageConstant.img1baccarat188x88.obs,
        gameTitle: 'Roma x'.obs,
        badgeImagePath: ImageConstant.imgGroup1024.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img211000.obs,
        overlayImagePath: ImageConstant.imgBaccarat288x88.obs,
        gameTitle: 'diamond party'.obs,
        badgeImagePath: ImageConstant.imgGroup1024.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img911000.obs,
        overlayImagePath: ImageConstant.imgBaccarat1.obs,
        gameTitle: 'lucky coming'.obs,
        badgeImagePath: ImageConstant.imgGroup1024.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img277771000.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        gameTitle: 'Roma x'.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img431000.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        gameTitle: 'diamond party'.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img441000.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        gameTitle: 'lucky coming'.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img461000.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        gameTitle: 'Roma x'.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img471000.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        gameTitle: 'diamond party'.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.imgJdbslot092.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        gameTitle: 'lucky coming'.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img771000.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        gameTitle: 'Roma x'.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img401000.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        gameTitle: 'diamond party'.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.imgJdbslot105.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        gameTitle: 'lucky coming'.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img851000.obs,
        overlayImagePath: ImageConstant.imgGroup621.obs,
        gameTitle: 'Roma x'.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img357771000.obs,
        overlayImagePath: ImageConstant.imgGroup621.obs,
        gameTitle: 'diamond party'.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img451000.obs,
        overlayImagePath: ImageConstant.imgGroup621.obs,
        gameTitle: 'lucky coming'.obs,
      ),
    ];
  }

  void _initializeProviderLogos() {
    providerLogos.value = [
      ProviderLogoItemModel(logoPath: ImageConstant.imgLogo1.obs),
      ProviderLogoItemModel(logoPath: ImageConstant.imgLogo2.obs),
      ProviderLogoItemModel(logoPath: ImageConstant.imgLogo3.obs),
      ProviderLogoItemModel(
          logoPath: ImageConstant.imgVectorWhiteA70013x62.obs),
      ProviderLogoItemModel(logoPath: ImageConstant.imgLogo5.obs),
      ProviderLogoItemModel(logoPath: ImageConstant.imgYesbingo.obs),
      ProviderLogoItemModel(logoPath: ImageConstant.imgJili.obs),
      ProviderLogoItemModel(logoPath: ImageConstant.imgLogo6.obs),
      ProviderLogoItemModel(logoPath: ImageConstant.imgLogo7.obs),
      ProviderLogoItemModel(logoPath: ImageConstant.imgLogo8.obs),
      ProviderLogoItemModel(logoPath: ImageConstant.imgJdb.obs),
      ProviderLogoItemModel(logoPath: ImageConstant.imgFc.obs),
      ProviderLogoItemModel(logoPath: ImageConstant.imgLogo213x62.obs),
      ProviderLogoItemModel(logoPath: ImageConstant.imgPg.obs),
      ProviderLogoItemModel(logoPath: ImageConstant.imgPp2.obs),
      ProviderLogoItemModel(logoPath: ImageConstant.imgSexybcrt.obs),
    ];
  }

  void _initializeSidebarItems() {
    sidebarItems.value = [
      SidebarItemModel(
        iconPath: ImageConstant.imgVectorDeepOrangeA400.obs,
        title: 'Hot'.obs,
      ),
      SidebarItemModel(
        iconPath: ImageConstant.img10733643587.obs,
        title: 'Slot'.obs,
      ),
      SidebarItemModel(
        iconPath: ImageConstant.img136x36.obs,
        title: 'Live'.obs,
      ),
      SidebarItemModel(
        iconPath: ImageConstant.img5.obs,
        title: 'Bingo'.obs,
      ),
      SidebarItemModel(
        iconPath: ImageConstant.img2.obs,
        title: 'Table'.obs,
      ),
      SidebarItemModel(
        iconPath: ImageConstant.img7.obs,
        title: 'Fish'.obs,
      ),
      SidebarItemModel(
        iconPath: ImageConstant.img336x36.obs,
        title: 'Egame'.obs,
      ),
      SidebarItemModel(
        iconPath: ImageConstant.img6.obs,
        title: 'Sport'.obs,
      ),
    ];
  }

  void onDownloadTap() {
    // Handle download app action
  }

  void onCloseTap() {
    // Handle close promotional banner action
  }

  void onWithdrawalTap() {
    // Handle withdrawal action
  }

  void onDepositTap() {
    // Handle deposit action
  }

  void onGameCardTap(GameCardItemModel gameItem) {
    // Handle game card tap
  }

  void onSidebarItemTap(int index) {
    selectedSidebarIndex.value = index;
    // Handle sidebar item selection
  }

  void onFloatingActionButtonTap() {
    // Handle floating action button tap
  }

  void onBottomNavItemTapped(int index, String route) {
    // Handle bottom navigation item tap
    switch (index) {
      case 0:
        // Home - current screen, no navigation needed
        break;
      case 1:
        // Invite
        break;
      case 2:
        // Promotion
        break;
      case 3:
        // Teams
        break;
    }
  }
}
