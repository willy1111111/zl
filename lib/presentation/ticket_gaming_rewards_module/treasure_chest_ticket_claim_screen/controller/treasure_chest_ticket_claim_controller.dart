import '../../../core/app_export.dart';
import '../models/game_card_model.dart';
import '../models/treasure_chest_ticket_claim_model.dart';

class TreasureChestTicketClaimController extends GetxController {
  Rx<TreasureChestTicketClaimModel> treasureChestTicketClaimModel =
      TreasureChestTicketClaimModel().obs;

  RxBool showEventDialog = true.obs;
  RxInt selectedSidebarIndex = 1.obs;
  RxList<GameCardModel> gameItems = <GameCardModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    treasureChestTicketClaimModel.value = TreasureChestTicketClaimModel();
    _initializeGameItems();
  }

  void _initializeGameItems() {
    gameItems.value = [
      GameCardModel(
        gameImagePath: ImageConstant.img231000.obs,
        overlayIconPath: ImageConstant.imgGroup1019.obs,
        title: 'Fortune Ox fortune'.obs,
      ),
      GameCardModel(
        gameImagePath: ImageConstant.img491000.obs,
        overlayIconPath: ImageConstant.imgGroup1019.obs,
        specialEffectPath: ImageConstant.imgGroup120461.obs,
        title: 'super Ace'.obs,
      ),
      GameCardModel(
        gameImagePath: ImageConstant.imgLogowj931.obs,
        overlayIconPath: ImageConstant.imgGroup1019.obs,
        title: 'Logo Game'.obs,
        isLogoGame: true.obs,
      ),
      GameCardModel(
        gameImagePath: ImageConstant.img102x1000.obs,
        overlayIconPath: ImageConstant.imgGroup1024.obs,
        backgroundOverlayPath: ImageConstant.img1baccarat1.obs,
        title: 'Money Coming'.obs,
      ),
      GameCardModel(
        gameImagePath: ImageConstant.img211000.obs,
        overlayIconPath: ImageConstant.imgGroup1024.obs,
        backgroundOverlayPath: ImageConstant.imgBaccarat2.obs,
        title: 'lucky coming'.obs,
      ),
      GameCardModel(
        gameImagePath: ImageConstant.img911000.obs,
        overlayIconPath: ImageConstant.imgGroup1024.obs,
        backgroundOverlayPath: ImageConstant.imgBaccarat1.obs,
        title: 'lucky coming'.obs,
        badgeCount: 1.obs,
      ),
      GameCardModel(
        gameImagePath: ImageConstant.img277771000.obs,
        overlayIconPath: ImageConstant.imgGroup1029.obs,
        title: 'Roma x'.obs,
      ),
      GameCardModel(
        gameImagePath: ImageConstant.img431000.obs,
        overlayIconPath: ImageConstant.imgGroup1029.obs,
        title: 'diamond party'.obs,
      ),
      GameCardModel(
        gameImagePath: ImageConstant.img441000.obs,
        overlayIconPath: ImageConstant.imgGroup1029.obs,
        title: 'lucky coming'.obs,
        hasProgressBar: true.obs,
      ),
      GameCardModel(
        gameImagePath: ImageConstant.img471000.obs,
        overlayIconPath: ImageConstant.imgGroup1024.obs,
        title: 'Roma x'.obs,
      ),
      GameCardModel(
        gameImagePath: ImageConstant.img461000.obs,
        overlayIconPath: ImageConstant.imgGroup1024.obs,
        title: 'diamond party'.obs,
        hasRedDot: true.obs,
      ),
      GameCardModel(
        gameImagePath: ImageConstant.imgJdbslot092.obs,
        overlayIconPath: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
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
    // Handle sidebar navigation
  }

  void onGameCardTap(int index) {
    // Handle game card tap
  }

  void closeEventDialog() {
    showEventDialog.value = false;
  }

  void onClaimPressed() {
    // Handle claim button action
    Get.toNamed(AppRoutes.ticketEventConfirmationDialogScreen);
  }

  @override
  void onClose() {
    super.onClose();
  }
}
