import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/app_export.dart';
import '../models/social_share_model.dart';

class SocialShareController extends GetxController {
  late TextEditingController linkController;

  RxList<SocialMediaModel> socialMediaItems = <SocialMediaModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    linkController =
        TextEditingController(text: ImageConstant.imgNetworkJbet88);
    _initializeSocialMediaItems();
  }

  @override
  void onClose() {
    linkController.dispose();
    super.onClose();
  }

  void _initializeSocialMediaItems() {
    socialMediaItems.value = [
      SocialMediaModel(
        iconPath: ImageConstant.imgVectorWhiteA700.obs,
        label: 'More'.obs,
        platform: 'more'.obs,
      ),
      SocialMediaModel(
        iconPath: ImageConstant.img1.obs,
        label: 'whatsapp'.obs,
        platform: 'whatsapp'.obs,
      ),
      SocialMediaModel(
        iconPath: ImageConstant.imgGroup840.obs,
        label: 'Telegram'.obs,
        platform: 'telegram'.obs,
      ),
      SocialMediaModel(
        iconPath: ImageConstant.imgGroup838.obs,
        label: 'Facebook'.obs,
        platform: 'facebook'.obs,
      ),
      SocialMediaModel(
        iconPath: ImageConstant.imgTwitter1.obs,
        label: 'Twitter'.obs,
        platform: 'twitter'.obs,
      ),
      SocialMediaModel(
        iconPath: ImageConstant.imgGroup12019.obs,
        label: 'Mail'.obs,
        platform: 'mail'.obs,
      ),
    ];
  }

  void onClosePressed() {
    Get.back();
  }

  void onSocialMediaTap(int index) {
    final platform = socialMediaItems[index].platform?.value ?? '';
    final url = Uri.encodeComponent(linkController.text);
    final text =
        Uri.encodeComponent('Check out JBet88 - Amazing gaming experience!');

    String shareUrl = '';

    switch (platform.toLowerCase()) {
      case 'whatsapp':
        shareUrl = 'https://wa.me/?text=$text%20$url';
        break;
      case 'telegram':
        shareUrl = 'https://t.me/share/url?url=$url&text=$text';
        break;
      case 'facebook':
        shareUrl = 'https://www.facebook.com/sharer/sharer.php?u=$url';
        break;
      case 'twitter':
        shareUrl = 'https://twitter.com/intent/tweet?text=$text&url=$url';
        break;
      case 'mail':
        shareUrl = 'mailto:?subject=$text&body=$url';
        break;
      case 'more':
        _showMoreOptions();
        return;
    }

    if (shareUrl.isNotEmpty) {
      _launchUrl(shareUrl);
    }
  }

  void onCopyButtonTap() async {
    await Clipboard.setData(ClipboardData(text: linkController.text));
    Get.snackbar(
      'Success',
      'Link copied to clipboard',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: appTheme.colorFF85D4,
      colorText: appTheme.whiteCustom,
      duration: Duration(seconds: 2),
    );
  }

  void _showMoreOptions() {
    Get.bottomSheet(
      Container(
        padding: EdgeInsets.all(16.h),
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          borderRadius: BorderRadius.vertical(top: Radius.circular(16.h)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'More sharing options',
              style: TextStyleHelper.instance.title16Bold,
            ),
            SizedBox(height: 16.h),
            ListTile(
              leading: Icon(Icons.copy, color: appTheme.colorFF85D4),
              title: Text(
                'Copy Link',
                style: TextStyleHelper.instance.textStyle25
                    .copyWith(color: appTheme.whiteCustom),
              ),
              onTap: () {
                Get.back();
                onCopyButtonTap();
              },
            ),
            ListTile(
              leading: Icon(Icons.share, color: appTheme.colorFF85D4),
              title: Text(
                'System Share',
                style: TextStyleHelper.instance.textStyle25
                    .copyWith(color: appTheme.whiteCustom),
              ),
              onTap: () {
                Get.back();
                _systemShare();
              },
            ),
          ],
        ),
      ),
    );
  }

  void _systemShare() {
    // System share functionality would be implemented here
    // This would require platform-specific implementation
  }

  void _launchUrl(String url) async {
    try {
      final uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      } else {
        Get.snackbar(
          'Error',
          'Could not launch $url',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: appTheme.redCustom,
          colorText: appTheme.whiteCustom,
        );
      }
    } catch (e) {
      Get.snackbar(
        'Error',
        'Failed to open sharing platform',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: appTheme.redCustom,
        colorText: appTheme.whiteCustom,
      );
    }
  }
}
