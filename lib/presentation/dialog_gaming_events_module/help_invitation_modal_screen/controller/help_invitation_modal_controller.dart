import '../models/help_invitation_modal_model.dart';
import '../models/player_id_model.dart';
import '../../../core/app_export.dart';

class HelpInvitationModalController extends GetxController {
  Rx<HelpInvitationModalModel> helpInvitationModalModel =
      HelpInvitationModalModel().obs;
  RxList<PlayerIdModel> playerIds = <PlayerIdModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    helpInvitationModalModel.value = HelpInvitationModalModel();
    _initializePlayerIds();
  }

  void _initializePlayerIds() {
    playerIds.value = [
      PlayerIdModel(
        id: '5547039715226'.obs,
        isHighlighted: false.obs,
      ),
      PlayerIdModel(
        id: '5547039715226'.obs,
        isHighlighted: false.obs,
      ),
      PlayerIdModel(
        id: '5547039715226'.obs,
        isHighlighted: true.obs,
      ),
      PlayerIdModel(
        id: '5547039715226'.obs,
        isHighlighted: true.obs,
      ),
    ];
  }

  void onClosePressed() {
    Get.back();
  }

  void onWhatsAppPressed() {
    // Handle WhatsApp message logic
    Get.snackbar(
      'WhatsApp',
      'WhatsApp message sent',
      backgroundColor: appTheme.colorFF25C2,
      colorText: appTheme.whiteCustom,
    );
  }

  void onSmsPressed() {
    // Handle SMS message logic
    Get.snackbar(
      'SMS',
      'SMS message sent',
      backgroundColor: appTheme.colorFF76CD,
      colorText: appTheme.whiteCustom,
    );
  }
}
