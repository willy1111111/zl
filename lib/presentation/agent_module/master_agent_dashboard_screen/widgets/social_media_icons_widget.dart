import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';

class SocialMediaIconsWidget extends StatelessWidget {
  SocialMediaIconsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath:
              ImageConstant.img6afbb433afc026dcfdf9fbeec26198a2vibericonlogo1,
          height: 32.h,
          width: 32.h,
        ),
        SizedBox(width: 16.h),
        CustomImageView(
          imagePath: ImageConstant.imgGroup12121,
          height: 32.h,
          width: 32.h,
        ),
        SizedBox(width: 16.h),
        CustomImageView(
          imagePath: ImageConstant.imgGroup12122,
          height: 32.h,
          width: 32.h,
        ),
        SizedBox(width: 16.h),
        CustomImageView(
          imagePath: ImageConstant.imgGroup12060,
          height: 32.h,
          width: 32.h,
        ),
        SizedBox(width: 16.h),
        CustomImageView(
          imagePath: ImageConstant.imgTwitter1,
          height: 32.h,
          width: 32.h,
        ),
        SizedBox(width: 16.h),
        CustomImageView(
          imagePath: ImageConstant.imgGroup12124,
          height: 32.h,
          width: 32.h,
        ),
      ],
    );
  }
}
