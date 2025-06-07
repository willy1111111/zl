import '../../../../../core/app_export.dart';
import '../models/bonus_card_model.dart';
import '../models/congratulations_bonus_model.dart';

class CongratulationsBonusController extends GetxController {
  Rx<CongratulationsBonusModel> congratulationsBonusModel =
      CongratulationsBonusModel().obs;

  Rx<BonusCardModel?> phoneVerificationBonus = Rx<BonusCardModel?>(null);
  Rx<BonusCardModel?> registrationBonus = Rx<BonusCardModel?>(null);

  @override
  void onInit() {
    super.onInit();
    congratulationsBonusModel.value = CongratulationsBonusModel();
    _initializeBonusCards();
  }

  void _initializeBonusCards() {
    phoneVerificationBonus.value = BonusCardModel(
      iconPath: ImageConstant.imgDtrertert25145641.obs,
      title: 'Phone Verification'.obs,
      bonusLabel: 'your bonus:'.obs,
      bonusAmount: '₱ 38'.obs,
      buttonText: 'verify'.obs,
    );

    registrationBonus.value = BonusCardModel(
      iconPath: ImageConstant.imgGold.obs,
      title: 'Registration Bonus'.obs,
      bonusLabel: 'your bonus:'.obs,
      bonusAmount: '₱ 12.00'.obs,
      buttonText: 'Claim'.obs,
    );
  }

  void verifyPhone() {
    Get.snackbar(
      'Phone Verification',
      'Phone verification process started!',
      backgroundColor: appTheme.greenCustom,
      colorText: appTheme.whiteCustom,
    );
  }

  void claimRegistrationBonus() {
    Get.snackbar(
      'Registration Bonus',
      'Registration bonus claimed!',
      backgroundColor: appTheme.greenCustom,
      colorText: appTheme.whiteCustom,
    );
  }
}
