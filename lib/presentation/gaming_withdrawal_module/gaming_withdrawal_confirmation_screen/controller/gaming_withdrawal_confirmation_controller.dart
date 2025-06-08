import 'package:get/get.dart';
import '../models/gaming_withdrawal_confirmation_model.dart';
import '../../../core/app_export.dart';

class GamingWithdrawalConfirmationController extends GetxController {
  Rx<GamingWithdrawalConfirmationModel?> gamingWithdrawalConfirmationModel =
      Rx<GamingWithdrawalConfirmationModel?>(null);

  @override
  void onInit() {
    super.onInit();
    gamingWithdrawalConfirmationModel.value =
        GamingWithdrawalConfirmationModel();
  }

  void onGetBonusTap() {
    // Handle get bonus button tap
    print('Get Bonus button tapped');
  }

  void onInviteFriendsTap() {
    // Handle invite friends button tap
    print('Invite friends button tapped');
  }

  @override
  void onClose() {
    super.onClose();
  }
}
