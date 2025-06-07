import '../../../core/app_export.dart';
import '../models/agent_jackpot_history_screen_two_model.dart';
import '../models/jackpot_history_item_model.dart';

class AgentJackpotHistoryScreenTwoController extends GetxController {
  Rx<AgentJackpotHistoryScreenTwoModel> agentJackpotHistoryScreenTwoModelObj =
      AgentJackpotHistoryScreenTwoModel().obs;

  RxList<JackpotHistoryItemModel> historyItems =
      <JackpotHistoryItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _initializeHistoryItems();
  }

  void _initializeHistoryItems() {
    historyItems.value = [
      JackpotHistoryItemModel(
        rank: '1'.obs,
        user: '103****339'.obs,
        directInviteQuantity: '10'.obs,
        prize: '₱1500.23'.obs,
        hasMedal: true.obs,
        medalImagePath: ImageConstant.imgFrame2131330004.obs,
        hasAlternateBackground: true.obs,
      ),
      JackpotHistoryItemModel(
        rank: '2'.obs,
        user: '103****339'.obs,
        directInviteQuantity: '10'.obs,
        prize: '₱1500.23'.obs,
        hasMedal: true.obs,
        medalImagePath: ImageConstant.imgFrame2131330004.obs,
        hasAlternateBackground: false.obs,
      ),
      JackpotHistoryItemModel(
        rank: '3'.obs,
        user: '103****339'.obs,
        directInviteQuantity: '10'.obs,
        prize: '₱1500.23'.obs,
        hasMedal: true.obs,
        medalImagePath: ImageConstant.imgFrame2131330004.obs,
        hasAlternateBackground: true.obs,
      ),
      JackpotHistoryItemModel(
        rank: '4th'.obs,
        user: '103****339'.obs,
        directInviteQuantity: '10'.obs,
        prize: '₱1500.23'.obs,
        hasMedal: false.obs,
        hasAlternateBackground: false.obs,
      ),
      JackpotHistoryItemModel(
        rank: '5th'.obs,
        user: '103****339'.obs,
        directInviteQuantity: '10'.obs,
        prize: '₱1500.23'.obs,
        hasMedal: false.obs,
        hasAlternateBackground: true.obs,
      ),
      JackpotHistoryItemModel(
        rank: '6th'.obs,
        user: '103****339'.obs,
        directInviteQuantity: '10'.obs,
        prize: '₱1500.23'.obs,
        hasMedal: false.obs,
        hasAlternateBackground: false.obs,
      ),
      JackpotHistoryItemModel(
        rank: '7th'.obs,
        user: '103****339'.obs,
        directInviteQuantity: '10'.obs,
        prize: '₱1500.23'.obs,
        hasMedal: false.obs,
        hasAlternateBackground: true.obs,
      ),
      JackpotHistoryItemModel(
        rank: '8th'.obs,
        user: '103****339'.obs,
        directInviteQuantity: '10'.obs,
        prize: '₱1500.23'.obs,
        hasMedal: false.obs,
        hasAlternateBackground: false.obs,
      ),
      JackpotHistoryItemModel(
        rank: '9th'.obs,
        user: '-'.obs,
        directInviteQuantity: '-'.obs,
        prize: '---------'.obs,
        hasMedal: false.obs,
        hasAlternateBackground: true.obs,
      ),
      JackpotHistoryItemModel(
        rank: '10th'.obs,
        user: '-'.obs,
        directInviteQuantity: '-'.obs,
        prize: '---------'.obs,
        hasMedal: false.obs,
        hasAlternateBackground: false.obs,
      ),
    ];
  }
}
