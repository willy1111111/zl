import '../../../core/app_export.dart';
import '../models/category_item_model.dart';
import '../models/game_item_model.dart';
import '../models/narad_casino_home_model.dart';
import '../models/overlay_game_card_model.dart';

class NaradCasinoHomeController extends GetxController {
  Rx<NaradCasinoHomeModel> naradCasinoHomeModelObj = NaradCasinoHomeModel().obs;

  RxString balanceAmount = '₱1980.00'.obs;
  RxInt selectedCategoryIndex = 0.obs;
  RxInt selectedBottomNavIndex = 0.obs;

  RxList<CategoryItemModel> categories = <CategoryItemModel>[].obs;
  RxList<GameItemModel> games = <GameItemModel>[].obs;

  Rx<OverlayGameCardModel?> signInBonusGame = Rx<OverlayGameCardModel?>(null);
  Rx<OverlayGameCardModel?> moneyRainGame = Rx<OverlayGameCardModel?>(null);
  Rx<OverlayGameCardModel?> giftCodeGame = Rx<OverlayGameCardModel?>(null);
  Rx<OverlayGameCardModel?> noticeGame = Rx<OverlayGameCardModel?>(null);
  Rx<OverlayGameCardModel?> vipClubGame = Rx<OverlayGameCardModel?>(null);
  Rx<OverlayGameCardModel?> noticeDetailsGame = Rx<OverlayGameCardModel?>(null);

  @override
  void onInit() {
    super.onInit();
    _initializeCategories();
    _initializeGames();
    _initializeOverlayGames();
  }

  void _initializeCategories() {
    categories.value = [
      CategoryItemModel(
        icon: ImageConstant.imgVectorDeepOrangeA400.obs,
        title: 'Hot'.obs,
        isSelected: true.obs,
      ),
      CategoryItemModel(
        icon: ImageConstant.img10733643587.obs,
        title: 'Slot'.obs,
        isSelected: false.obs,
      ),
      CategoryItemModel(
        icon: ImageConstant.img136x36.obs,
        title: 'Live'.obs,
        isSelected: false.obs,
      ),
      CategoryItemModel(
        icon: ImageConstant.img5.obs,
        title: 'Bingo'.obs,
        isSelected: false.obs,
      ),
      CategoryItemModel(
        icon: ImageConstant.img236x36.obs,
        title: 'Table'.obs,
        isSelected: false.obs,
      ),
      CategoryItemModel(
        icon: ImageConstant.img7.obs,
        title: 'Fish'.obs,
        isSelected: false.obs,
      ),
      CategoryItemModel(
        icon: ImageConstant.img336x36.obs,
        title: 'Egame'.obs,
        isSelected: false.obs,
      ),
      CategoryItemModel(
        icon: ImageConstant.img6.obs,
        title: 'Sport'.obs,
        isSelected: false.obs,
      ),
    ];
  }

  void _initializeGames() {
    games.value = [
      GameItemModel(
        gameImage: ImageConstant.img231000.obs,
        overlayIcon: ImageConstant.imgGroup1019.obs,
        title: 'Fortune Ox fortune'.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img491000.obs,
        overlayIcon: null,
        title: 'super Ace'.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.imgLogowj931.obs,
        overlayIcon: null,
        title: 'Money Coming'.obs,
        hasCustomBackground: true.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img102x1000.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        title: 'Roma x'.obs,
        hasOverlay: true.obs,
        overlayImage: ImageConstant.img1baccarat1.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img211000.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        title: 'diamond party'.obs,
        hasOverlay: true.obs,
        overlayImage: ImageConstant.imgBaccarat2.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img911000.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
        hasOverlay: true.obs,
        overlayImage: ImageConstant.imgBaccarat1.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img277771000.obs,
        overlayIcon: ImageConstant.imgGroup1029.obs,
        title: 'Roma x'.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img431000.obs,
        overlayIcon: ImageConstant.imgGroup1029.obs,
        title: 'diamond party'.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img441000.obs,
        overlayIcon: ImageConstant.imgGroup1029.obs,
        title: 'lucky coming'.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img471000.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        title: 'Roma x'.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img461000.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        title: 'diamond party'.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.imgJdbslot092.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
      ),
    ];
  }

  void _initializeOverlayGames() {
    signInBonusGame.value = OverlayGameCardModel(
      backgroundImage: ImageConstant
          .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12001.obs,
      overlayImage: ImageConstant
          .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12002.obs,
      gameIcon: ImageConstant.img23331.obs,
      moneyRainImage: ImageConstant.img1moneyrain.obs,
      buttonImage: ImageConstant.img16.obs,
      timerBackgroundImage: ImageConstant.imgVector1.obs,
      timerIcon: ImageConstant.imgYellow70001.obs,
    );

    moneyRainGame.value = OverlayGameCardModel(
      backgroundImage: ImageConstant
          .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12001.obs,
      overlayImage: ImageConstant
          .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12002.obs,
      gameIcon: ImageConstant.img233312.obs,
      moneyRainImage: ImageConstant.img1moneyrain2.obs,
      buttonImage: ImageConstant.img16.obs,
    );

    giftCodeGame.value = OverlayGameCardModel(
      backgroundImage: ImageConstant
          .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12001.obs,
      overlayImage: ImageConstant
          .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12002.obs,
      gameIcon: ImageConstant.img2333199x91.obs,
      moneyRainImage: ImageConstant.img1moneyrain22x118.obs,
      buttonImage: ImageConstant.img1630x96.obs,
    );

    noticeGame.value = OverlayGameCardModel(
      backgroundImage: ImageConstant
          .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12001.obs,
      overlayImage: ImageConstant
          .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12002.obs,
      gameIcon: ImageConstant.img233313.obs,
      moneyRainImage: ImageConstant.img1moneyrain3.obs,
      buttonImage: ImageConstant.img1630x96.obs,
    );

    vipClubGame.value = OverlayGameCardModel(
      backgroundImage: ImageConstant
          .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12001.obs,
      overlayImage: ImageConstant
          .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12002.obs,
      gameIcon: ImageConstant.img233311.obs,
      moneyRainImage: ImageConstant.img1moneyrain1.obs,
      buttonImage: ImageConstant.img16.obs,
    );

    noticeDetailsGame.value = OverlayGameCardModel(
      backgroundImage: ImageConstant
          .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12001.obs,
      overlayImage: ImageConstant
          .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12002.obs,
      gameIcon: ImageConstant.img233313.obs,
      moneyRainImage: ImageConstant.img1moneyrain3.obs,
      buttonImage: ImageConstant.img1630x96.obs,
    );
  }

  void onDownloadTap() {
    // Handle download action
  }

  void onCloseTap() {
    // Handle close action
  }

  void onRefreshBalance() {
    // Handle balance refresh
  }

  void onWithdrawalTap() {
    // Handle withdrawal action
  }

  void onDepositTap() {
    // Handle deposit action
  }

  void onCollectTap() {
    // Handle collect action
  }

  void onCategoryTap(int index) {
    selectedCategoryIndex.value = index;
    for (int i = 0; i < categories.length; i++) {
      categories[i].isSelected?.value = i == index;
    }
  }

  void onGameTap(int index) {
    // Handle game selection
  }

  void onSignInBonusTap() {
    // Handle sign-in bonus action
  }

  void onMoneyRainTap() {
    // Handle money rain action
  }

  void onGiftCodeTap() {
    // Handle gift code action
  }

  void onNoticeTap() {
    Get.toNamed(AppRoutes.noticeNotificationsScreen);
  }

  void onVipClubTap() {
    // Handle VIP club action
  }

  void onNoticeDetailsTap() {
    Get.toNamed(AppRoutes.noticeNotificationsScreen);
  }

  void onInviteTap() {
    // Handle invite action
  }

  void onBottomNavChanged(int index) {
    selectedBottomNavIndex.value = index;
    // Handle bottom navigation
  }
}
