import 'package:flutter/material.dart';
import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_button.dart';
import 'controller/achievement_rewards_controller.dart';
import 'widgets/achievement_item_widget.dart';
import 'widgets/social_share_widget.dart';

class AchievementRewardsScreen extends StatelessWidget {
  AchievementRewardsScreen({Key? key}) : super(key: key);

  final AchievementRewardsController controller =
      Get.put(AchievementRewardsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(68.h),
        child: CustomAppBar(
          logoImagePath: ImageConstant.imgLogowj931,
          balanceAmount: '₱1980.00',
          profileIconPath: ImageConstant.imgGroup736,
          batteryIconPath: ImageConstant.img1LightGreenA700,
          statusBarImagePath: ImageConstant.img1,
        ),
      ),
      body: Stack(
        children: [
          _buildMainContent(),
          _buildFloatingActionButton(),
          Obx(() => controller.isShareModalVisible.value
              ? _buildOverlay()
              : SizedBox.shrink()),
          Obx(() => controller.isShareModalVisible.value
              ? _buildShareBottomSheet()
              : SizedBox.shrink()),
        ],
      ),
    );
  }

  Widget _buildMainContent() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16.h),
          _buildCountdownSection(),
          SizedBox(height: 24.h),
          _buildGradientCircle(),
          _buildAchievementList(),
        ],
      ),
    );
  }

  Widget _buildCountdownSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'countdown:',
              style: TextStyleHelper.instance.body12.copyWith(height: 1.17),
            ),
            SizedBox(width: 8.h),
            Text(
              '22days 22hr 9min 30 sec',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.colorFF85D4, height: 1.0),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: RichText(
                text: TextSpan(
                  text: 'We\'re ',
                  style: TextStyleHelper.instance.label10
                      .copyWith(color: appTheme.colorFF8384, height: 1.2),
                  children: [
                    TextSpan(
                      text: '5 missions short of completion.',
                      style: TextStyleHelper.instance.textStyle8
                          .copyWith(color: appTheme.colorFFFFC6),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  '40/100',
                  style: TextStyleHelper.instance.label10.copyWith(height: 1.2),
                ),
                SizedBox(width: 8.h),
                Text(
                  'Rules',
                  style: TextStyleHelper.instance.label10.copyWith(height: 1.2),
                ),
                SizedBox(width: 8.h),
                CustomButton(
                  text: '?',
                  borderColor: appTheme.colorFFFFC6,
                  textColor: appTheme.colorFFFFC6,
                  width: 16.h,
                  height: 19.h,
                  borderRadius: 8.0,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w900,
                  buttonType: CustomButtonType.outlined,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildGradientCircle() {
    return Positioned(
      left: 121.h,
      top: 189.h,
      child: Container(
        width: 143.h,
        height: 143.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment(0.0, -1.0),
            end: Alignment(0.0, 1.0),
            colors: [
              Color(0x4DD3F660),
              appTheme.color4D8CF6,
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: appTheme.colorFF8888,
              blurRadius: 95.h,
              offset: Offset(0, 4.h),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAchievementList() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: appTheme.color330303,
          border: Border.all(color: appTheme.color448E8E),
          borderRadius: BorderRadius.circular(10.h),
          boxShadow: [
            BoxShadow(
              color: appTheme.colorFF8888,
              blurRadius: 11.h,
              offset: Offset(0, 4.h),
            ),
          ],
        ),
        padding: EdgeInsets.all(16.h),
        child: Column(
          children: [
            CustomImageView(
              imagePath: ImageConstant.img,
              width: 588.h,
              height: 30.h,
            ),
            SizedBox(height: 16.h),
            Expanded(
              child: Obx(() => ListView.separated(
                    itemCount: controller.achievements.length,
                    separatorBuilder: (context, index) => Container(
                      height: 1.h,
                      color: appTheme.colorFF4045,
                      margin: EdgeInsets.symmetric(vertical: 16.h),
                    ),
                    itemBuilder: (context, index) {
                      return AchievementItemWidget(
                        achievement: controller.achievements[index],
                        onButtonPressed: () =>
                            controller.onAchievementButtonPressed(index),
                      );
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFloatingActionButton() {
    return Positioned(
      bottom: 70.h,
      right: 16.h,
      child: GestureDetector(
        onTap: () => controller.toggleShareModal(),
        child: Container(
          width: 32.h,
          height: 32.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup,
            width: 32.h,
            height: 32.h,
          ),
        ),
      ),
    );
  }

  Widget _buildOverlay() {
    return Positioned.fill(
      child: GestureDetector(
        onTap: () => controller.toggleShareModal(),
        child: Container(
          color: appTheme.blackCustom.withAlpha(128),
        ),
      ),
    );
  }

  Widget _buildShareBottomSheet() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        transform: Matrix4.translationValues(
          0,
          controller.isShareModalVisible.value ? 0 : 400,
          0,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: appTheme.colorFF2528,
            borderRadius: BorderRadius.vertical(top: Radius.circular(8.h)),
          ),
          padding: EdgeInsets.all(16.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Share with your social community:',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.whiteCustom, height: 1.21),
              ),
              SizedBox(height: 16.h),
              SocialShareWidget(),
              SizedBox(height: 24.h),
              _buildShareLinkSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildShareLinkSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgFrame1321314650,
              width: 20.h,
              height: 20.h,
            ),
            SizedBox(width: 8.h),
            Text(
              'Share this binding link with your friends',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.whiteCustom, height: 1.21),
            ),
          ],
        ),
        SizedBox(height: 16.h),
        Container(
          decoration: BoxDecoration(
            color: appTheme.color66000C,
            border: Border.all(color: appTheme.colorFF85D4),
            borderRadius: BorderRadius.circular(6.h),
          ),
          padding: EdgeInsets.all(8.h),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'http://www.jbet88.co?reCode?=arrrer/',
                  style: TextStyleHelper.instance.body14
                      .copyWith(color: appTheme.colorFF85D4, height: 1.21),
                ),
              ),
              SizedBox(width: 16.h),
              Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse625,
                    width: 62.h,
                    height: 71.h,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup14499,
                    width: 35.h,
                    height: 35.h,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
