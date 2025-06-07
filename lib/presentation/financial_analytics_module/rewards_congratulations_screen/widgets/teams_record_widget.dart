import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';

class TeamsRecordWidget extends StatelessWidget {
  TeamsRecordWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345.h,
      height: 81.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Stack(
        children: [
          // Record icons
          Positioned(
            top: 13.h,
            left: 29.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgVector26x26,
              height: 26.h,
              width: 26.h,
            ),
          ),

          Positioned(
            top: 13.h,
            left: 114.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgVector26x20,
              height: 26.h,
              width: 20.h,
            ),
          ),

          Positioned(
            top: 13.h,
            left: 193.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgVector25x26,
              height: 25.h,
              width: 26.h,
            ),
          ),

          Positioned(
            top: 13.h,
            left: 278.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgVector26x24,
              height: 26.h,
              width: 24.h,
            ),
          ),

          // Record labels
          Positioned(
            top: 43.h,
            left: 21.h,
            child: Container(
              width: 42.h,
              child: Text(
                'Betting\nRecord',
                textAlign: TextAlign.center,
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF8089, height: 1.0),
              ),
            ),
          ),

          Positioned(
            top: 43.h,
            left: 100.h,
            child: Container(
              width: 49.h,
              child: Text(
                'Account\nRecord',
                textAlign: TextAlign.center,
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF8089, height: 1.0),
              ),
            ),
          ),

          Positioned(
            top: 43.h,
            left: 185.h,
            child: Container(
              width: 44.h,
              child: Text(
                'Deposit Record',
                textAlign: TextAlign.center,
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF8089, height: 1.0),
              ),
            ),
          ),

          Positioned(
            top: 43.h,
            left: 257.h,
            child: Container(
              width: 64.h,
              child: Text(
                'Withdrawal Record',
                textAlign: TextAlign.center,
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF8089, height: 1.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
