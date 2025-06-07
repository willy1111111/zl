import '../../../../../core/app_export.dart';
import '../models/bonus_card_model.dart';
import '../models/countdown_timer_model.dart';
import '../models/registration_success_model.dart';

class RegistrationSuccessController extends GetxController {
  Rx<RegistrationSuccessModel?> registrationSuccessModel =
      Rx<RegistrationSuccessModel?>(null);
  Rx<CountdownTimerModel?> countdownTimer = Rx<CountdownTimerModel?>(null);

  @override
  void onInit() {
    super.onInit();
    initializeData();
    startCountdownTimer();
  }

  void initializeData() {
    registrationSuccessModel.value = RegistrationSuccessModel(
      bonusCards: [
        BonusCardModel(
          cardNumber: '1'.obs,
          title: 'Deposit within two hours and enjoy up to ₱900 free bonus'.obs,
          buttonText: 'deposit'.obs,
          hasTimer: true.obs,
          height: 149.0.obs, // Modified: Changed from int to double
        ),
        BonusCardModel(
          cardNumber: '2'.obs,
          title: 'Download the official App for a ₱28 reward'.obs,
          buttonText: 'INSTALL'.obs,
          hasTimer: false.obs,
          height: 80.0.obs, // Modified: Changed from int to double
        ),
        BonusCardModel(
          cardNumber: '3'.obs,
          title: 'Add to home screen'.obs,
          buttonText: ''.obs,
          hasTimer: false.obs,
          height: 66.0.obs, // Modified: Changed from int to double
          hasIcon: true.obs,
          iconPath: ImageConstant.imgGroup11881.obs,
        ),
      ],
    );

    countdownTimer.value = CountdownTimerModel(
      hours: 1.obs,
      minutes: 56.obs,
      seconds: 32.48.obs,
    );
  }

  void startCountdownTimer() {
    // Timer implementation for countdown
    Stream.periodic(Duration(milliseconds: 100), (i) {
      if (countdownTimer.value != null) {
        double currentSeconds = countdownTimer.value!.seconds.value;
        currentSeconds -= 0.1;

        if (currentSeconds <= 0) {
          currentSeconds = 59.9;
          int currentMinutes = countdownTimer.value!.minutes.value;
          currentMinutes -= 1;

          if (currentMinutes < 0) {
            currentMinutes = 59;
            int currentHours = countdownTimer.value!.hours.value;
            currentHours -= 1;

            if (currentHours < 0) {
              currentHours = 0;
              currentMinutes = 0;
              currentSeconds = 0;
            }

            countdownTimer.value!.hours.value = currentHours;
          }

          countdownTimer.value!.minutes.value = currentMinutes;
        }

        countdownTimer.value!.seconds.value = currentSeconds;
      }
    }).listen((_) {});
  }

  void onDepositPressed() {
    // Handle deposit action
    Get.snackbar(
      'Deposit',
      'Redirecting to deposit page...',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: appTheme.colorFF85D4,
      colorText: appTheme.colorFFFFFF,
    );
  }

  void onInstallPressed() {
    // Handle app installation
    Get.snackbar(
      'Install',
      'Redirecting to app store...',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: appTheme.colorFF85D4,
      colorText: appTheme.colorFFFFFF,
    );
  }

  void onHomePressed() {
    // Handle home navigation
    Get.back();
  }

  void onAddToHomeScreen() {
    // Handle add to home screen action
    Get.snackbar(
      'Add to Home Screen',
      'Follow browser instructions to add to home screen',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: appTheme.colorFF85D4,
      colorText: appTheme.colorFFFFFF,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }
}
