import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';

class NotificationBarWidget extends StatelessWidget {
  NotificationBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34.h,
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(17.h),
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant
                .img3b4bde395738f0c8b07d1baa47c5d48f172c19aa158772swckar1,
            height: 19.h,
            width: 24.h,
            margin: EdgeInsets.only(right: 8.h),
          ),
          Expanded(
            child: Text(
              '🔥The recharge of the🔥',
              style: TextStyleHelper.instance.body14BoldArial,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img1,
            height: 16.h,
            width: 16.h,
            margin: EdgeInsets.only(left: 8.h, right: 8.h),
          ),
          Text(
            'The recharge',
            style: TextStyleHelper.instance.body14BoldArial,
          ),
        ],
      ),
    );
  }
}
