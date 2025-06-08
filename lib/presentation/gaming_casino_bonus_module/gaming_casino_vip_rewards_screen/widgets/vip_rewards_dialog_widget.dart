import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';

class VipRewardsDialogWidget extends StatelessWidget {
  final VoidCallback? onClose;
  final VoidCallback? onReceived;

  VipRewardsDialogWidget({
    Key? key,
    this.onClose,
    this.onReceived,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appTheme.blackCustom.withAlpha(153),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.img0867344945x375,
            height: 945.h,
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildSuccessNotification(),
                SizedBox(height: 20.h),
                _buildMainDialog(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSuccessNotification() {
    return Container(
      width: 271.h,
      height: 48.h,
      padding: EdgeInsets.symmetric(horizontal: 11.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF242A,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVectorLightGreenA70024x24,
            height: 24.h,
            width: 24.h,
          ),
          SizedBox(width: 32.h),
          Text(
            'Received successfully！',
            style: TextStyleHelper.instance.title18Bold
                .copyWith(color: appTheme.colorFF85D4),
          ),
        ],
      ),
    );
  }

  Widget _buildMainDialog() {
    return Stack(
      children: [
        CustomImageView(
          imagePath: ImageConstant
              .imgA65bbb3b63d7cefc212e71be3744557bd9ca5c13c468lzqmo2,
          height: 228.h,
          width: 232.h,
        ),
        Positioned(
          top: 100.h,
          right: 15.h,
          child: GestureDetector(
            onTap: onClose,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup848,
              height: 32.h,
              width: 32.h,
            ),
          ),
        ),
        Positioned(
          top: 35.h,
          left: -38.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgV10,
            height: 65.h,
            width: 65.h,
          ),
        ),
        Positioned(
          top: 53.h,
          left: 15.h,
          child: Container(
            width: 345.h,
            height: 47.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF0C5D,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8.h),
              ),
              boxShadow: [
                BoxShadow(
                  color: appTheme.blackCustom.withAlpha(128),
                  offset: Offset(0, 2.h),
                  blurRadius: 2.h,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 40.h,
          left: 76.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgRectangle623,
            height: 60.h,
            width: 284.h,
          ),
        ),
        Positioned(
          top: 49.h,
          left: 118.h,
          child: Text(
            'VlP exclusive rewards !',
            style: TextStyleHelper.instance.title16Bold,
          ),
        ),
        Positioned(
          top: 75.h,
          left: 118.h,
          child: Text(
            'Valid within seven days.',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFF85D4),
          ),
        ),
        Positioned(
          top: 144.h,
          left: 125.h,
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant
                    .imgB928f94165e9728829ff07d0c5d4434611caf4103b62867w8is97x100,
                height: 97.h,
                width: 100.h,
              ),
              CustomImageView(
                imagePath: ImageConstant
                    .imgB928f94165e9728829ff07d0c5d4434611caf4103b62867w8is97x100,
                height: 97.h,
                width: 100.h,
                margin: EdgeInsets.only(left: -18.h),
              ),
            ],
          ),
        ),
        Positioned(
          top: 239.h,
          left: 142.h,
          child: Container(
            width: 90.h,
            height: 28.h,
            decoration: BoxDecoration(
              color: appTheme.blackCustom,
              borderRadius: BorderRadius.circular(14.h),
            ),
            child: Center(
              child: Text(
                '₱453',
                style: TextStyleHelper.instance.headline24Bold,
              ),
            ),
          ),
        ),
        Positioned(
          top: 186.h,
          left: 42.h,
          child: Container(
            width: 29.h,
            height: 70.h,
            decoration: BoxDecoration(
              color: appTheme.blackCustom,
              borderRadius: BorderRadius.circular(4.h),
            ),
            child: Center(
              child: CustomImageView(
                imagePath: ImageConstant.imgVectorWhiteA70024x13,
                height: 24.h,
                width: 13.h,
              ),
            ),
          ),
        ),
        Positioned(
          top: 186.h,
          right: 42.h,
          child: Container(
            width: 29.h,
            height: 70.h,
            decoration: BoxDecoration(
              color: appTheme.blackCustom,
              borderRadius: BorderRadius.circular(4.h),
            ),
            child: Center(
              child: Transform.rotate(
                angle: 3.14159,
                child: CustomImageView(
                  imagePath: ImageConstant.imgVectorWhiteA70024x13,
                  height: 24.h,
                  width: 13.h,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 287.h,
          left: 118.h,
          child: GestureDetector(
            onTap: onReceived,
            child: Container(
              width: 140.h,
              height: 36.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF8094,
                border: Border.all(color: appTheme.colorFF9FB8),
                borderRadius: BorderRadius.circular(4.h),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.blackCustom.withAlpha(128),
                    offset: Offset(0, 4.h),
                    blurRadius: 4.h,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup12686,
                    height: 16.h,
                    width: 16.h,
                  ),
                  SizedBox(width: 4.h),
                  ShaderMask(
                    shaderCallback: (bounds) => LinearGradient(
                      colors: [appTheme.whiteCustom, Color(0xFFEBFDEE)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ).createShader(bounds),
                    child: Text(
                      'Received',
                      style: TextStyleHelper.instance.title16Bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 334.h,
          left: 99.h,
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup1264,
                height: 13.h,
                width: 11.h,
              ),
              SizedBox(width: 2.h),
              Text(
                'Time left to collect:6day 23:59:59',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF4B55),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
