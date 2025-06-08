import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_gradient_button.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/gaming_app_share_controller.dart';
import './widgets/contact_number_widget.dart';
import './widgets/page_indicator_widget.dart';
import './widgets/social_media_icon_widget.dart';

class GamingAppShareScreen extends GetWidget<GamingAppShareController> {
  GamingAppShareScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: CustomAppBar(
        title: 'Share',
        height: 60.h,
        showStatusBar: false,
        onBackPressed: () => Get.back(),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            _buildBackgroundEllipse(),
            _buildMainContent(),
          ],
        ),
      ),
    );
  }

  Widget _buildBackgroundEllipse() {
    return Positioned(
      top: 791.h,
      left: 24.h,
      child: Container(
        width: 327.h,
        height: 221.h,
        decoration: BoxDecoration(
          color: appTheme.color5954E7,
          borderRadius: BorderRadius.circular(163.h),
          boxShadow: [
            BoxShadow(
              color: appTheme.colorFF8888,
              offset: Offset(0, 4.h),
              blurRadius: 180.h,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMainContent() {
    return Padding(
      padding: EdgeInsets.only(
        top: 16.h,
        left: 15.h,
        right: 15.h,
      ),
      child: Column(
        children: [
          _buildGamePromotionCard(),
          SizedBox(height: 24.h),
          _buildPageIndicators(),
          SizedBox(height: 24.h),
          _buildSocialMediaIcons(),
          SizedBox(height: 24.h),
          _buildHelpInvitationSection(),
          SizedBox(height: 16.h),
          _buildContactListCard(),
        ],
      ),
    );
  }

  Widget _buildGamePromotionCard() {
    return Container(
      width: 345.h,
      height: 421.h,
      decoration: BoxDecoration(
        color: appTheme.blackCustom,
        borderRadius: BorderRadius.circular(12.h),
      ),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage421x345,
            width: 345.h,
            height: 345.h,
            fit: BoxFit.cover,
            radius: BorderRadius.circular(12.h),
          ),
          Positioned(
            top: 10.h,
            left: 12.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgLogowj932,
              width: 58.h,
              height: 22.h,
            ),
          ),
          _buildBottomOverlay(),
        ],
      ),
    );
  }

  Widget _buildBottomOverlay() {
    return Positioned(
      bottom: 0,
      left: 0,
      child: Container(
        width: 345.h,
        height: 146.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF25282D),
              appTheme.colorFF0000,
              Color(0xFF000000),
            ],
            stops: [0.0, 0.5, 1.0],
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12.h),
            bottomRight: Radius.circular(12.h),
          ),
        ),
        child: Stack(
          children: [
            _buildQRCode(),
            _buildUserInfo(),
          ],
        ),
      ),
    );
  }

  Widget _buildQRCode() {
    return Positioned(
      top: 52.h,
      right: 20.h,
      child: Container(
        width: 74.h,
        height: 74.h,
        decoration: BoxDecoration(
          color: appTheme.whiteCustom,
          borderRadius: BorderRadius.circular(2.h),
        ),
        padding: EdgeInsets.all(5.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgImage1165,
          width: 63.h,
          height: 63.h,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildUserInfo() {
    return Positioned(
      top: 31.h,
      left: 20.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse7,
                width: 28.h,
                height: 28.h,
                radius: BorderRadius.circular(14.h),
              ),
              SizedBox(width: 12.h),
              Text(
                controller.gamingAppShareModel.value?.userId?.value ??
                    '98955464616',
                style: TextStyleHelper.instance.body14BlackArial
                    .copyWith(height: 1.43),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              Text(
                'Invite code：',
                style: TextStyleHelper.instance.body12BoldArial
                    .copyWith(color: appTheme.whiteCustom, height: 1.17),
              ),
              Text(
                controller.gamingAppShareModel.value?.inviteCode?.value ??
                    '83938dje3',
                style: TextStyleHelper.instance.body12BoldArial
                    .copyWith(color: appTheme.colorFFFFC6, height: 1.17),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Text(
            'Invitation link：',
            style: TextStyleHelper.instance.body12Arial.copyWith(height: 1.42),
          ),
          SizedBox(height: 4.h),
          Container(
            width: 200.h,
            child: Text(
              controller.gamingAppShareModel.value?.invitationLink?.value ??
                  ImageConstant.imgNetworkJbet77,
              style: TextStyleHelper.instance.body12Arial
                  .copyWith(color: appTheme.colorFF85D4, height: 1.17),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPageIndicators() {
    return Obx(() => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            controller.pageIndicators.length,
            (index) => PageIndicatorWidget(
              isActive: index == controller.currentPageIndex.value,
            ),
          ),
        ));
  }

  Widget _buildSocialMediaIcons() {
    return Obx(() => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            controller.socialMediaIcons.length,
            (index) => SocialMediaIconWidget(
              socialMediaModel: controller.socialMediaIcons[index],
              onTap: () => controller.handleSocialMediaTap(index),
            ),
          ),
        ));
  }

  Widget _buildHelpInvitationSection() {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgFrame,
          width: 20.h,
          height: 20.h,
        ),
        SizedBox(width: 12.h),
        Text(
          'Send a help invitation to a random player',
          style:
              TextStyleHelper.instance.body14BoldArial.copyWith(height: 1.21),
        ),
      ],
    );
  }

  Widget _buildContactListCard() {
    return Container(
      width: 345.h,
      height: 170.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(6.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.colorFF8888,
            offset: Offset(0, 4.h),
            blurRadius: 10.h,
          ),
        ],
      ),
      padding: EdgeInsets.all(16.h),
      child: Stack(
        children: [
          _buildGreenGlowEffect(),
          _buildContactNumbersGrid(),
          _buildActionButtons(),
        ],
      ),
    );
  }

  Widget _buildGreenGlowEffect() {
    return Positioned(
      top: 121.h,
      right: 42.h,
      child: Container(
        width: 42.h,
        height: 49.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF53E6,
          borderRadius: BorderRadius.circular(24.h),
          boxShadow: [
            BoxShadow(
              color: appTheme.colorFF8888,
              offset: Offset(0, 4.h),
              blurRadius: 112.h,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactNumbersGrid() {
    return Obx(() => Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 100.h,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      5,
                      (index) => ContactNumberWidget(
                        contactModel: controller.contactNumbers[index],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 32.h),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      5,
                      (index) => ContactNumberWidget(
                        contactModel: controller.contactNumbers[index + 5],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 32.h),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      5,
                      (index) => ContactNumberWidget(
                        contactModel: controller.contactNumbers[index + 10],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Widget _buildActionButtons() {
    return Positioned(
      bottom: 0,
      left: 0,
      child: Row(
        children: [
          CustomGradientButton(
            text: 'Send message on WhatsAPP',
            iconPath: ImageConstant.img1WhiteA70024x24,
            onPressed: () => controller.handleWhatsAppAction(),
            width: 144.h,
            height: 40.h,
            borderRadius: 4.h,
            fontSize: 14.fSize,
            gradientColors: [
              Color(0xFFFFC61E),
              appTheme.colorFFFF9F,
            ],
          ),
          SizedBox(width: 24.h),
          CustomGradientButton(
            text: 'Sending a text message',
            iconPath: ImageConstant.img124x24,
            onPressed: () => controller.handleSmsAction(),
            width: 144.h,
            height: 40.h,
            borderRadius: 4.h,
            fontSize: 14.fSize,
            gradientColors: [
              Color(0xFF76CD00),
              appTheme.colorFF478A,
            ],
          ),
        ],
      ),
    );
  }
}
