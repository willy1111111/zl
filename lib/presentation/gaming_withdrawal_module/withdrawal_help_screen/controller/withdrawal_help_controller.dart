import '../../../core/app_export.dart';
import '../models/phone_number_model.dart';
import '../models/social_media_model.dart';
import '../models/withdrawal_help_model.dart';

class WithdrawalHelpController extends GetxController {
  Rx<WithdrawalHelpModel> withdrawalHelpModel = WithdrawalHelpModel().obs;

  RxList<SocialMediaModel> socialMediaItems = <SocialMediaModel>[].obs;
  RxList<PhoneNumberModel> phoneNumbersColumn1 = <PhoneNumberModel>[].obs;
  RxList<PhoneNumberModel> phoneNumbersColumn2 = <PhoneNumberModel>[].obs;
  RxList<PhoneNumberModel> phoneNumbersColumn3 = <PhoneNumberModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _initializeSocialMediaItems();
    _initializePhoneNumbers();
  }

  void _initializeSocialMediaItems() {
    socialMediaItems.value = [
      SocialMediaModel(
        icon: ImageConstant.imgVector.obs,
        label: 'More'.obs,
        isBold: true.obs,
      ),
      SocialMediaModel(
        icon: ImageConstant.img1Green500.obs,
        label: 'whatsapp'.obs,
        isBold: false.obs,
      ),
      SocialMediaModel(
        icon: ImageConstant.imgGroup840.obs,
        label: 'Telegram'.obs,
        isBold: false.obs,
      ),
      SocialMediaModel(
        icon: ImageConstant.imgTwitter1.obs,
        label: 'Twitter'.obs,
        isBold: false.obs,
        isRounded: true.obs,
      ),
      SocialMediaModel(
        icon: ImageConstant.imgGroup838.obs,
        label: 'Facebook'.obs,
        isBold: false.obs,
      ),
      SocialMediaModel(
        icon: ImageConstant.imgGroup12019.obs,
        label: 'Mail'.obs,
        isBold: false.obs,
      ),
    ];
  }

  void _initializePhoneNumbers() {
    List<String> phoneNumbers = List.generate(15, (index) => '5547039715226');

    phoneNumbersColumn1.value = phoneNumbers
        .take(5)
        .map((phone) => PhoneNumberModel(
              number: phone.obs,
              isHighlighted:
                  phoneNumbers.indexOf(phone) == 0 ? true.obs : false.obs,
            ))
        .toList();

    phoneNumbersColumn2.value = phoneNumbers
        .skip(5)
        .take(5)
        .map((phone) => PhoneNumberModel(
              number: phone.obs,
              isHighlighted:
                  phoneNumbers.indexOf(phone) == 5 ? true.obs : false.obs,
            ))
        .toList();

    phoneNumbersColumn3.value = phoneNumbers
        .skip(10)
        .take(5)
        .map((phone) => PhoneNumberModel(
              number: phone.obs,
              isHighlighted:
                  phoneNumbers.indexOf(phone) == 10 ? true.obs : false.obs,
            ))
        .toList();
  }

  void onClosePressed() {
    Get.back();
  }

  void onSocialMediaPressed(int index) {
    String platform = socialMediaItems[index].label?.value ?? '';
    print('Sharing to: $platform');
    // Add sharing logic here
  }

  void onWhatsAppPressed() {
    print('Send message on WhatsApp');
    // Add WhatsApp messaging logic here
  }

  void onSMSPressed() {
    print('Send SMS message');
    // Add SMS messaging logic here
  }

  @override
  void onClose() {
    super.onClose();
  }
}
