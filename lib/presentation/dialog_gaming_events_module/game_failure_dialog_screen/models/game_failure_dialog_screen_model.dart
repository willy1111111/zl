import '../../../core/app_export.dart';

class GameFailureDialogScreenModel {
  Rx<String> logoPath = ImageConstant.imgLogowj931.obs;
  Rx<String> bannerPath = ImageConstant.imgMaskGroup.obs;
  Rx<String> notificationIconPath = ImageConstant
      .img3b4bde395738f0c8b07d1baa47c5d48f172c19aa158772swckar1.obs;
  Rx<String> notificationText = '🔥The recharge of th🔥'.obs;
  Rx<String> floatingActionIconPath = ImageConstant.imgGroup13043.obs;
  Rx<String> dialogTitle = 'Oops'.obs;
  Rx<String> dialogMessage = 'Better luck next time.'.obs;
  Rx<String> gotItButtonText = 'Got it'.obs;

  GameFailureDialogScreenModel();
}
