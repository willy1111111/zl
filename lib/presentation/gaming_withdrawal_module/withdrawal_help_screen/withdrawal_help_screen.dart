import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_image_view.dart';
import './controller/withdrawal_help_controller.dart';
import './widgets/phone_number_item.dart';
import './widgets/social_media_item.dart';

class WithdrawalHelpScreen extends GetWidget<WithdrawalHelpController> {
  const WithdrawalHelpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        height: 812.h,
        child: Stack(
          children: [
            _buildBackgroundImage(),
            _buildDarkOverlay(),
            _buildBottomSheet(),
          ],
        ),
      ),
    );
  }

  Widget _buildBackgroundImage() {
    return Positioned(
      top: 0,
      left: 0,
      child: CustomImageView(
        imagePath: ImageConstant.imgImage1137,
        height: 1132.h,
        width: 375.h,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildDarkOverlay() {
    return Positioned(
      top: 0,
      left: 0,
      child: Opacity(
        opacity: 0.5,
        child: Container(
          width: 375.h,
          height: 812.h,
          color: appTheme.blackCustom,
        ),
      ),
    );
  }

  Widget _buildBottomSheet() {
    return Positioned(
      bottom: 0,
      left: 0,
      child: Container(
        width: 375.h,
        height: 405.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF3F44,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12.h),
            topRight: Radius.circular(12.h),
          ),
        ),
        child: Stack(
          children: [
            _buildCloseButton(),
            _buildInviteFriendsSection(),
            _buildRandomPlayerSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildCloseButton() {
    return Positioned(
      top: 23.h,
      right: 12.h,
      child: GestureDetector(
        onTap: () => controller.onClosePressed(),
        child: CustomImageView(
          imagePath: ImageConstant.imgClosesmall,
          height: 22.h,
          width: 22.h,
        ),
      ),
    );
  }

  Widget _buildInviteFriendsSection() {
    return Positioned(
      top: 26.h,
      left: 15.h,
      right: 15.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '1.Invite friends to help withdraw cash',
            style:
                TextStyleHelper.instance.body14BoldArial.copyWith(height: 1.21),
          ),
          SizedBox(height: 20.h),
          _buildSocialMediaRow(),
          SizedBox(height: 20.h),
          _buildInviteFriendsButton(),
        ],
      ),
    );
  }

  Widget _buildSocialMediaRow() {
    return Obx(
      () => Container(
        padding: EdgeInsets.symmetric(horizontal: 2.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            controller.socialMediaItems.length,
            (index) => SocialMediaItem(
              socialMedia: controller.socialMediaItems[index],
              onTap: () => controller.onSocialMediaPressed(index),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInviteFriendsButton() {
    return Container(
      width: 345.h,
      height: 38.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF3032,
        borderRadius: BorderRadius.circular(4.h),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 10.h,
            top: 0,
            bottom: 0,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Invite friends to help with withdrawals',
                style:
                    TextStyleHelper.instance.body14Arial.copyWith(height: 1.21),
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup1058,
              height: 38.h,
              width: 38.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRandomPlayerSection() {
    return Positioned(
      top: 152.h,
      left: 15.h,
      right: 15.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '2.Send a help invitation to a random player',
            style:
                TextStyleHelper.instance.body14BoldArial.copyWith(height: 1.21),
          ),
          SizedBox(height: 11.h),
          _buildPhoneNumbersGrid(),
        ],
      ),
    );
  }

  Widget _buildPhoneNumbersGrid() {
    return Container(
      width: 345.h,
      height: 170.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF3032,
        borderRadius: BorderRadius.circular(6.h),
      ),
      child: Stack(
        children: [
          _buildPhoneNumberColumns(),
          _buildActionButtons(),
        ],
      ),
    );
  }

  Widget _buildPhoneNumberColumns() {
    return Positioned(
      top: 16.h,
      left: 16.h,
      right: 16.h,
      child: Obx(
        () => Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  controller.phoneNumbersColumn1.length,
                  (index) => PhoneNumberItem(
                    phoneNumber: controller.phoneNumbersColumn1[index],
                  ),
                ),
              ),
            ),
            SizedBox(width: 30.h),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  controller.phoneNumbersColumn2.length,
                  (index) => PhoneNumberItem(
                    phoneNumber: controller.phoneNumbersColumn2[index],
                  ),
                ),
              ),
            ),
            SizedBox(width: 30.h),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  controller.phoneNumbersColumn3.length,
                  (index) => PhoneNumberItem(
                    phoneNumber: controller.phoneNumbersColumn3[index],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButtons() {
    return Positioned(
      bottom: 16.h,
      left: 16.h,
      child: Row(
        children: [
          _buildWhatsAppButton(),
          SizedBox(width: 25.h),
          _buildSMSButton(),
        ],
      ),
    );
  }

  Widget _buildWhatsAppButton() {
    return GestureDetector(
      onTap: () => controller.onWhatsAppPressed(),
      child: Container(
        width: 144.h,
        height: 40.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFFFC61E), Color(0xFFFF9F00)],
          ),
          borderRadius: BorderRadius.circular(4.h),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.img1WhiteA700,
              height: 24.h,
              width: 24.h,
            ),
            SizedBox(width: 5.h),
            Expanded(
              child: Text(
                'Send message on WhatsAPP',
                style: TextStyleHelper.instance.body14BoldArial
                    .copyWith(height: 1.0),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSMSButton() {
    return GestureDetector(
      onTap: () => controller.onSMSPressed(),
      child: Container(
        width: 144.h,
        height: 40.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF76CD00), Color(0xFF478A03)],
          ),
          borderRadius: BorderRadius.circular(4.h),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.img1WhiteA70024x24,
              height: 24.h,
              width: 24.h,
            ),
            SizedBox(width: 9.h),
            Expanded(
              child: Text(
                'Sending a text message',
                style: TextStyleHelper.instance.body14BoldArial
                    .copyWith(height: 1.0),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
