import '../../../core/app_export.dart';
import '../models/contact_model.dart';
import '../models/gaming_app_share_model.dart';
import '../models/social_media_model.dart';

class GamingAppShareController extends GetxController {
  Rx<GamingAppShareModel?> gamingAppShareModel = Rx<GamingAppShareModel?>(null);
  RxList<SocialMediaModel> socialMediaIcons = <SocialMediaModel>[].obs;
  RxList<ContactModel> contactNumbers = <ContactModel>[].obs;
  RxList<bool> pageIndicators = <bool>[].obs;
  RxInt currentPageIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    initializeData();
  }

  void initializeData() {
    gamingAppShareModel.value = GamingAppShareModel(
      userId: '98955464616'.obs,
      inviteCode: '83938dje3'.obs,
      invitationLink: ImageConstant.imgNetworkJbet77.obs,
    );

    socialMediaIcons.value = [
      SocialMediaModel(
        iconPath: ImageConstant.imgFrame12060.obs,
        platform: 'WhatsApp'.obs,
      ),
      SocialMediaModel(
        iconPath: ImageConstant.imgFrame2131330442.obs,
        platform: 'Telegram'.obs,
      ),
      SocialMediaModel(
        iconPath: ImageConstant.imgFrame12122.obs,
        platform: 'Facebook'.obs,
      ),
      SocialMediaModel(
        iconPath: ImageConstant.imgFrame12123.obs,
        platform: 'Twitter'.obs,
      ),
      SocialMediaModel(
        iconPath: ImageConstant.imgFrame12124.obs,
        platform: 'Email'.obs,
      ),
      SocialMediaModel(
        iconPath: ImageConstant.imgFrame2131330442GreenA70001.obs,
        platform: 'Share'.obs,
      ),
      SocialMediaModel(
        iconPath: ImageConstant.imgFrame12124LightBlue600.obs,
        platform: 'Copy'.obs,
      ),
      SocialMediaModel(
        iconPath: ImageConstant.imgFrame12126.obs,
        platform: 'More'.obs,
      ),
    ];

    contactNumbers.value = List.generate(
      15,
      (index) => ContactModel(
        phoneNumber: '5547039715226'.obs,
        isHighlighted: (index == 0 || index == 5 || index == 10).obs,
      ),
    );

    pageIndicators.value = [true, false, false, false];
  }

  void handleSocialMediaTap(int index) {
    String platform = socialMediaIcons[index].platform?.value ?? '';
    switch (platform.toLowerCase()) {
      case 'whatsapp':
        print('Opening WhatsApp');
        break;
      case 'telegram':
        print('Opening Telegram');
        break;
      case 'facebook':
        print('Opening Facebook');
        break;
      case 'twitter':
        print('Opening Twitter');
        break;
      case 'email':
        print('Opening Email');
        break;
      case 'share':
        print('Opening Share menu');
        break;
      case 'copy':
        print('Copying link');
        _copyInvitationLink();
        break;
      case 'more':
        print('Opening more options');
        break;
    }
  }

  void handleWhatsAppAction() {
    print('Opening WhatsApp with invitation message');
    String message =
        'Join me on this gaming platform: ${gamingAppShareModel.value?.invitationLink?.value ?? ""}';
    print('Message: $message');
  }

  void handleSmsAction() {
    print('Opening SMS with invitation message');
    String message =
        'Join me on this gaming platform: ${gamingAppShareModel.value?.invitationLink?.value ?? ""}';
    print('Message: $message');
  }

  void _copyInvitationLink() {
    String link = gamingAppShareModel.value?.invitationLink?.value ?? '';
    if (link.isNotEmpty) {
      print('Copied to clipboard: $link');
      Get.snackbar(
        'Copied',
        'Invitation link copied to clipboard',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: appTheme.colorFF2528,
        colorText: appTheme.whiteCustom,
      );
    }
  }

  void updatePageIndex(int index) {
    currentPageIndex.value = index;
    pageIndicators.value = List.generate(
      4,
      (i) => i == index,
    );
  }
}