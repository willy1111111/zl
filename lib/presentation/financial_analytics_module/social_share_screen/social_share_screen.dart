import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/social_share_controller.dart';
import './widgets/social_icon_widget.dart';

class SocialShareScreen extends GetWidget<SocialShareController> {
  SocialShareScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            // Background Image
            CustomImageView(
              imagePath: ImageConstant.imgImage1063964x375,
              width: double.maxFinite,
              height: 964.h,
              fit: BoxFit.cover,
            ),

            // Dark Overlay
            Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                color: Color(0xFF000000).withAlpha(179),
              ),
            ),

            // Close Button
            Positioned(
              top: 335.h,
              right: 16.h,
              child: GestureDetector(
                onTap: () => controller.onClosePressed(),
                child: Container(
                  width: 32.h,
                  height: 32.h,
                  alignment: Alignment.center,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGroup,
                    width: 32.h,
                    height: 32.h,
                  ),
                ),
              ),
            ),

            // Bottom Sheet
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 289.h,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.h),
                decoration: BoxDecoration(
                  color: appTheme.colorFF2528,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.h),
                    topRight: Radius.circular(8.h),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildShareTitle(),
                    SizedBox(height: 24.h),
                    _buildSocialMediaGrid(),
                    SizedBox(height: 32.h),
                    _buildShareLinkSection(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildShareTitle() {
    return Text(
      'Share with your social community:',
      style: TextStyleHelper.instance.body14Bold,
    );
  }

  Widget _buildSocialMediaGrid() {
    return Obx(() => GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 6,
            crossAxisSpacing: 16.h,
            mainAxisSpacing: 8.h,
            childAspectRatio: 1.0,
          ),
          itemCount: controller.socialMediaItems.length,
          itemBuilder: (context, index) {
            return SocialIconWidget(
              socialMediaModel: controller.socialMediaItems[index],
              onTap: () => controller.onSocialMediaTap(index),
            );
          },
        ));
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
              style: TextStyleHelper.instance.body14Bold,
            ),
          ],
        ),
        SizedBox(height: 12.h),
        _buildLinkInputWithCopyButton(),
      ],
    );
  }

  Widget _buildLinkInputWithCopyButton() {
    return Stack(
      children: [
        Container(
          height: 34.h,
          padding: EdgeInsets.symmetric(horizontal: 12.h),
          decoration: BoxDecoration(
            color: Color(0xFF000C06).withAlpha(102),
            border: Border.all(color: appTheme.colorFF85D4),
            borderRadius: BorderRadius.circular(4.h),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: controller.linkController,
                  readOnly: true,
                  style: TextStyleHelper.instance.body14,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    isDense: true,
                    contentPadding: EdgeInsets.zero,
                  ),
                ),
              ),
              SizedBox(width: 70.h),
            ],
          ),
        ),
        Positioned(
          right: 12.h,
          top: -18.h,
          child: GestureDetector(
            onTap: () => controller.onCopyButtonTap(),
            child: Container(
              width: 62.h,
              height: 71.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF85D4,
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup14499,
                width: 35.h,
                height: 35.h,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
