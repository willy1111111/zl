import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';

class CountdownTimerWidget extends StatelessWidget {
  CountdownTimerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage26x26,
                height: 26.h,
                width: 26.h,
              ),
              SizedBox(width: 8.h),
              Column(
                children: [
                  Text(
                    'Event',
                    style: TextStyleHelper.instance.label9,
                  ),
                  Text(
                    'ends',
                    style: TextStyleHelper.instance.label9,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(width: 16.h),
          Row(
            children: [
              _buildTimerItem('02', 'Day'),
              SizedBox(width: 8.h),
              Text(
                ':',
                style: TextStyleHelper.instance.title18Black
                    .copyWith(color: appTheme.whiteCustom),
              ),
              SizedBox(width: 8.h),
              _buildTimerItem('01', 'hr'),
              SizedBox(width: 8.h),
              Text(
                ':',
                style: TextStyleHelper.instance.title18Black
                    .copyWith(color: appTheme.whiteCustom),
              ),
              SizedBox(width: 8.h),
              _buildTimerItem('21', 'min'),
              SizedBox(width: 8.h),
              Text(
                ':',
                style: TextStyleHelper.instance.title18Black
                    .copyWith(color: appTheme.whiteCustom),
              ),
              SizedBox(width: 8.h),
              _buildTimerItem('06', 'sec'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTimerItem(String value, String label) {
    return Container(
      width: 36.h,
      height: 36.h,
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup14176,
            height: 36.h,
            width: 36.h,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  value,
                  style: TextStyleHelper.instance.body14Black,
                ),
                Text(
                  label,
                  style: TextStyleHelper.instance.label9,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
