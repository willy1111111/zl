import 'package:flutter/material.dart';

import '../../../../widgets/custom_image_view.dart';

import '../../../../core/app_export.dart';

class SocialShareWidget extends StatelessWidget {
  SocialShareWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildSocialItem(
          iconPath: ImageConstant.imgVector,
          label: 'More',
        ),
        _buildSocialItem(
          iconPath: ImageConstant.img1Green500,
          label: 'whatsapp',
        ),
        _buildSocialItem(
          iconPath: ImageConstant.imgGroup840,
          label: 'Telegram',
        ),
        _buildSocialItem(
          iconPath: ImageConstant.imgGroup838,
          label: 'Facebook',
        ),
        _buildSocialItem(
          iconPath: ImageConstant.imgTwitter1,
          label: 'Twitter',
          isRounded: true,
        ),
        _buildSocialItem(
          iconPath: ImageConstant.imgGroup12019,
          label: 'Mail',
        ),
      ],
    );
  }

  Widget _buildSocialItem({
    required String iconPath,
    required String label,
    bool isRounded = false,
  }) {
    return Column(
      children: [
        Container(
          width: 32.h,
          height: 32.h,
          decoration: isRounded
              ? BoxDecoration(
                  shape: BoxShape.circle,
                )
              : null,
          child: CustomImageView(
            imagePath: iconPath,
            width: 32.h,
            height: 32.h,
            fit: isRounded ? BoxFit.cover : BoxFit.contain,
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          label,
          style: TextStyleHelper.instance.body12Bold.copyWith(height: 1.17),
        ),
      ],
    );
  }
}
