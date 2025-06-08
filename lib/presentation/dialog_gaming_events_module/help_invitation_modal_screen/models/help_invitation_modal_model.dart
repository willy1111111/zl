import '../../../core/app_export.dart';

/// This class is used in the [HelpInvitationModalScreen] screen with GetX.

class HelpInvitationModalModel {
  Rx<String> title = 'Send a help invitation to a random player'.obs;
  Rx<String> whatsappButtonText = 'Send message on WhatsAPP'.obs;
  Rx<String> smsButtonText = 'Sending a text message'.obs;
  Rx<String> whatsappIcon = ImageConstant.img1WhiteA700.obs;
  Rx<String> smsIcon = ImageConstant.img1WhiteA70024x24.obs;
  Rx<String> closeIcon = ImageConstant.img4.obs;

  HelpInvitationModalModel();
}
