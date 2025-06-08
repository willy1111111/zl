import '../../../core/app_export.dart';

/// This class is used in the [Jbet88ReferralBonusScreen] screen with GetX.

class Jbet88ReferralBonusModel {
  Rx<String> mainTitle = "A GIFT FROM A FRIEND".obs;
  Rx<String> invitationText =
      "you are invited to receive 500 PHP in cash\ndownload JBET88 now and you and i will"
          .obs;
  Rx<String> bonusText = "get 500 PHP bonus".obs;
  Rx<String> getLabel = "Get".obs;
  Rx<String> amountText = "৳1000".obs;
  Rx<String> forFreeLabel = "for free".obs;
  Rx<String> buttonText =
      "Help your friends, get instant cash and\nreceive 500 PHP".obs;
  Rx<String> backgroundImage = ImageConstant.imgBg.obs;

  Jbet88ReferralBonusModel(); // Modified: Fixed constructor name from JBet88ReferralBonusModel to Jbet88ReferralBonusModel
}
