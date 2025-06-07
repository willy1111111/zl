import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../controller/junior_agent_dashboard_controller.dart';

class ShareFriendsCardWidget extends StatelessWidget {
  ShareFriendsCardWidget({Key? key}) : super(key: key);

  var controller = Get.find<JuniorAgentDashboardController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(10.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        children: [
          _buildShareHeader(),
          SizedBox(height: 16.h),
          _buildReferralCodeSection(),
          SizedBox(height: 32.h),
          _buildSocialMediaIcons(),
        ],
      ),
    );
  }

  Widget _buildShareHeader() {
    return GestureDetector(
      onTap: () => controller.onShareWithFriendsTap(),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.img23653621,
            height: 62.h,
            width: 62.h,
          ),
          SizedBox(width: 16.h),
          Expanded(
            child: Text(
              'Share with friends',
              style: TextStyleHelper.instance.title18Bold,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgSubtractWhiteA700,
            height: 18.h,
            width: 18.h,
          ),
        ],
      ),
    );
  }

  Widget _buildReferralCodeSection() {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: appTheme.colorFF161D,
              border: Border.all(
                color: appTheme.colorFF85D4,
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(6.h),
            ),
            padding: EdgeInsets.all(8.h),
            child: Text(
              'http://www.jbet88.co?reCode?=arrre...',
              style: TextStyleHelper.instance.body14
                  .copyWith(color: appTheme.colorFF85D4),
            ),
          ),
        ),
        SizedBox(width: 12.h),
        GestureDetector(
          onTap: () => controller.onCopyReferralCodeTap(),
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup14499,
            height: 35.h,
            width: 35.h,
          ),
        ),
      ],
    );
  }

  Widget _buildSocialMediaIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildSocialIcon(
          ImageConstant.img6afbb433afc026dcfdf9fbeec26198a2vibericonlogo1,
          'Viber',
        ),
        _buildSocialIcon(
          ImageConstant.imgGroup12121,
          'Telegram',
        ),
        _buildSocialIcon(
          ImageConstant.imgGroup12122,
          'Facebook',
        ),
        _buildSocialIcon(
          ImageConstant.imgGroup12060,
          'WhatsApp',
        ),
        _buildSocialIcon(
          ImageConstant.imgTwitter1,
          'Twitter',
        ),
        _buildSocialIcon(
          ImageConstant.imgGroup12124,
          'Email',
        ),
      ],
    );
  }

  Widget _buildSocialIcon(String imagePath, String platform) {
    return GestureDetector(
      onTap: () => controller.onSocialMediaTap(platform),
      child: CustomImageView(
        imagePath: imagePath,
        height: 32.h,
        width: 32.h,
      ),
    );
  }
}
