import 'package:get/get.dart';
import '../models/referral_bonus_dialog_model.dart';
import '../../../core/app_export.dart';

class ReferralBonusDialogController extends GetxController {
  Rx<ReferralBonusDialogModel?> referralBonusDialogModel =
      Rx<ReferralBonusDialogModel?>(null);

  @override
  void onInit() {
    super.onInit();
    referralBonusDialogModel.value = ReferralBonusDialogModel();
  }

  void onGetBonusTap() {
    // Handle bonus claim action
    Get.back();
  }
}
