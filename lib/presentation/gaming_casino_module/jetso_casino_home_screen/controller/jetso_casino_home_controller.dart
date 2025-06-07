import '../../../../../core/app_export.dart';
import '../models/game_card_model.dart';
import '../models/jetso_casino_home_model.dart';
import '../models/sidebar_nav_item_model.dart';

class JetsoCasinoHomeController extends GetxController {
  Rx<JetsoCasinoHomeModel> jetsoCasinoHomeModelObj = JetsoCasinoHomeModel().obs;

  RxString balanceAmount = '₱1980.00'.obs;
  RxString jackpotAmount = '14,091,688.88'.obs;

  RxList<GameCardModel> gamesList = <GameCardModel>[].obs;
  RxList<SidebarNavItemModel> sidebarItems = <SidebarNavItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    initializeData();
  }

  void initializeData() {
    gamesList.value = [
      GameCardModel(
          imagePath: ImageConstant.img231000.obs,
          title: 'Fortune Ox fortune'.obs,
          frameImage: ImageConstant.imgFrame1019.obs),
      GameCardModel(
          imagePath: ImageConstant.img491000.obs,
          title: 'super Ace'.obs,
          frameImage: ImageConstant.imgFrame1003.obs),
      GameCardModel(
          imagePath: ImageConstant.imgLogowj931.obs,
          title: 'Money Coming'.obs,
          frameImage: ImageConstant.imgFrame1003.obs,
          isCustomBackground: true.obs),
      GameCardModel(
          imagePath: ImageConstant.img102x1000.obs,
          title: 'Roma x'.obs,
          frameImage: ImageConstant.imgFrame1003.obs,
          overlayImage: ImageConstant.img1baccarat1.obs),
      GameCardModel(
          imagePath: ImageConstant.img211000.obs,
          title: 'diamond party'.obs,
          frameImage: ImageConstant.imgFrame1003.obs,
          overlayImage: ImageConstant.imgBaccarat2.obs),
      GameCardModel(
          imagePath: ImageConstant.img911000.obs,
          title: 'lucky coming'.obs,
          frameImage: ImageConstant.imgFrame1003.obs,
          overlayImage: ImageConstant.imgBaccarat1.obs),
      GameCardModel(
          imagePath: ImageConstant.img277771000.obs,
          title: 'Roma x'.obs,
          frameImage: ImageConstant.imgFrame1007.obs),
      GameCardModel(
          imagePath: ImageConstant.img431000.obs,
          title: 'diamond party'.obs,
          frameImage: ImageConstant.imgFrame1007.obs),
      GameCardModel(
          imagePath: ImageConstant.img441000.obs,
          title: 'lucky coming'.obs,
          frameImage: ImageConstant.imgFrame1007.obs),
      GameCardModel(
          imagePath: ImageConstant.img471000.obs,
          title: 'Roma x'.obs,
          frameImage: ImageConstant.imgFrame1003.obs),
      GameCardModel(
          imagePath: ImageConstant.img461000.obs,
          title: 'diamond party'.obs,
          frameImage: ImageConstant.imgFrame1003.obs),
      GameCardModel(
          imagePath: ImageConstant.imgJdbslot092.obs,
          title: 'lucky coming'.obs,
          frameImage: ImageConstant.imgFrame1003.obs),
      GameCardModel(
          imagePath: ImageConstant.img771000.obs,
          title: 'Roma x'.obs,
          frameImage: ImageConstant.imgFrame1003.obs),
      GameCardModel(
          imagePath: ImageConstant.img401000.obs,
          title: 'diamond party'.obs,
          frameImage: ImageConstant.imgFrame1003.obs),
      GameCardModel(
          imagePath: ImageConstant.imgJdbslot105.obs,
          title: 'lucky coming'.obs,
          frameImage: ImageConstant.imgFrame1003.obs),
      GameCardModel(
          imagePath: ImageConstant.img851000.obs,
          title: 'Roma x'.obs,
          frameImage: ImageConstant.imgFrame621.obs),
      GameCardModel(
          imagePath: ImageConstant.img357771000.obs,
          title: 'diamond party'.obs,
          frameImage: ImageConstant.imgFrame621.obs),
      GameCardModel(
          imagePath: ImageConstant.img451000.obs,
          title: 'lucky coming'.obs,
          frameImage: ImageConstant.imgFrame621.obs),
    ];

    sidebarItems.value = [
      SidebarNavItemModel(
          icon: ImageConstant.imgVectorDeepOrangeA400.obs,
          title: 'Hot'.obs,
          isSelected: true.obs,
          isGradientHot: true.obs),
      SidebarNavItemModel(
          icon: ImageConstant.img10733643587.obs,
          title: 'Slot'.obs,
          isSelected: false.obs),
      SidebarNavItemModel(
          icon: ImageConstant.img1.obs,
          title: 'Live'.obs,
          isSelected: false.obs),
      SidebarNavItemModel(
          icon: ImageConstant.img536x36.obs,
          title: 'Bingo'.obs,
          isSelected: false.obs),
      SidebarNavItemModel(
          icon: ImageConstant.img2.obs,
          title: 'Table'.obs,
          isSelected: false.obs),
      SidebarNavItemModel(
          icon: ImageConstant.img7.obs,
          title: 'Fish'.obs,
          isSelected: false.obs),
      SidebarNavItemModel(
          icon: ImageConstant.img336x36.obs,
          title: 'Egame'.obs,
          isSelected: false.obs),
      SidebarNavItemModel(
          icon: ImageConstant.img6.obs,
          title: 'Sport'.obs,
          isSelected: false.obs),
    ];
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

  void onGameTap(GameCardModel game) {
    // Handle game selection
  }

  void onSidebarItemTap(SidebarNavItemModel item) {
    for (var sidebarItem in sidebarItems) {
      sidebarItem.isSelected!.value = false;
    }
    item.isSelected!.value = true;
  }
}
