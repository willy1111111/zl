import '../../../core/app_export.dart';
import '../models/spin_bonus_leaderboard_model.dart';
import '../models/winner_item_model.dart';

class SpinBonusLeaderboardController extends GetxController {
  Rx<SpinBonusLeaderboardModel> spinBonusLeaderboardModel =
      SpinBonusLeaderboardModel().obs;

  RxList<WinnerItemModel> winnersList = <WinnerItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    spinBonusLeaderboardModel.value = SpinBonusLeaderboardModel();
    loadWinners();
  }

  void loadWinners() {
    winnersList.value = [
      WinnerItemModel(
        userName: '+88090*****3456'.obs,
        spinLevel: 'lucky spin'.obs,
        prizeAmount: '₱493.70'.obs,
        prizeIcon: ImageConstant.img62201c332432477ea59dc6ae43cc7c131.obs,
        hasSpecialPrize: true.obs,
        specialPrizeAmount: '2,000.00'.obs,
      ),
      WinnerItemModel(
        userName: '+88090*****3456'.obs,
        spinLevel: 'lucky spin'.obs,
        prizeAmount: '₱493.70'.obs,
        prizeIcon: ImageConstant.imgMargin1.obs,
        hasSpecialPrize: false.obs,
      ),
      WinnerItemModel(
        userName: '+88090*****3456'.obs,
        spinLevel: 'lucky spin'.obs,
        prizeAmount: '₱493.70'.obs,
        prizeIcon: ImageConstant.imgImage.obs,
        hasSpecialPrize: false.obs,
      ),
      WinnerItemModel(
        userName: '+88090*****3456'.obs,
        spinLevel: 'lucky spin'.obs,
        prizeAmount: '₱493.70'.obs,
        prizeIcon: ImageConstant.imgImage21x21.obs,
        hasSpecialPrize: false.obs,
      ),
      WinnerItemModel(
        userName: '+88090*****3456'.obs,
        spinLevel: 'lucky spin'.obs,
        prizeAmount: '₱493.70'.obs,
        prizeIcon: ImageConstant.imgImage.obs,
        hasSpecialPrize: false.obs,
      ),
      WinnerItemModel(
        userName: '+88090*****3456'.obs,
        spinLevel: 'lucky spin'.obs,
        prizeAmount: '₱493.70'.obs,
        prizeIcon: ImageConstant.imgMargin1.obs,
        hasSpecialPrize: false.obs,
      ),
      WinnerItemModel(
        userName: '+88090*****3456'.obs,
        spinLevel: 'lucky spin'.obs,
        prizeAmount: '₱493.70'.obs,
        prizeIcon: ImageConstant.imgMargin1.obs,
        hasSpecialPrize: false.obs,
      ),
      WinnerItemModel(
        userName: '+88090*****3456'.obs,
        spinLevel: 'lucky spin'.obs,
        prizeAmount: '₱493.70'.obs,
        prizeIcon: ImageConstant.imgImage21x21.obs,
        hasSpecialPrize: false.obs,
      ),
      WinnerItemModel(
        userName: '+88090*****3456'.obs,
        spinLevel: 'lucky spin'.obs,
        prizeAmount: '₱493.70'.obs,
        prizeIcon: ImageConstant.img62201c332432477ea59dc6ae43cc7c131.obs,
        hasSpecialPrize: true.obs,
        specialPrizeAmount: '2,000.00'.obs,
      ),
      WinnerItemModel(
        userName: '+88090*****3456'.obs,
        spinLevel: 'lucky spin'.obs,
        prizeAmount: '₱493.70'.obs,
        prizeIcon: ImageConstant.imgImage.obs,
        hasSpecialPrize: false.obs,
      ),
      WinnerItemModel(
        userName: '+88090*****3456'.obs,
        spinLevel: 'lucky spin'.obs,
        prizeAmount: '₱493.70'.obs,
        prizeIcon: ImageConstant.imgImage21x21.obs,
        hasSpecialPrize: false.obs,
      ),
      WinnerItemModel(
        userName: '+88090*****3456'.obs,
        spinLevel: 'lucky spin'.obs,
        prizeAmount: '₱493.70'.obs,
        prizeIcon: ImageConstant.imgImage.obs,
        hasSpecialPrize: false.obs,
      ),
      WinnerItemModel(
        userName: '+88090*****3456'.obs,
        spinLevel: 'lucky spin'.obs,
        prizeAmount: '₱493.70'.obs,
        prizeIcon: ImageConstant.imgImage21x21.obs,
        hasSpecialPrize: false.obs,
      ),
      WinnerItemModel(
        userName: '+88090*****3456'.obs,
        spinLevel: 'lucky spin'.obs,
        prizeAmount: '₱493.70'.obs,
        prizeIcon: ImageConstant.imgImage21x21.obs,
        hasSpecialPrize: false.obs,
      ),
    ];
  }
}
