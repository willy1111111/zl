import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_image_view.dart';

class VipRewardsDialogWidget extends StatelessWidget {
  final VoidCallback? onClose;
  final VoidCallback? onClaimReward;

  const VipRewardsDialogWidget({
    Key? key,
    this.onClose,
    this.onClaimReward,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      color: appTheme.blackCustom.withAlpha(128),
      child: Center(
        child: Stack(
          children: [
            Container(
              width: 260.h,
              height: 210.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(-1.0, 0.0),
                  end: Alignment(1.0, 0.0),
                  colors: [Color(0xFFE0F2B9), Color(0xFF95ECAE)],
                ),
                borderRadius: BorderRadius.circular(8.h),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.blackCustom.withAlpha(51),
                    offset: Offset(0, 1),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 13.h,
                    right: 29.h,
                    child: GestureDetector(
                      onTap: onClose,
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
                            width: 13.h,
                            height: 24.h,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 2.h,
                    left: 30.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgV10,
                      width: 65.h,
                      height: 65.h,
                    ),
                  ),
                  Positioned(
                    top: 16.h,
                    left: 118.h,
                    child: Text(
                      'VlP exclusive rewards !',
                      style: TextStyleHelper.instance.title16Bold,
                    ),
                  ),
                  Positioned(
                    top: 42.h,
                    left: 118.h,
                    child: Text(
                      'Valid within seven days.',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.colorFF85D4),
                    ),
                  ),
                  Positioned(
                    top: 27.h,
                    right: 3.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup848,
                      width: 32.h,
                      height: 32.h,
                    ),
                  ),
                  Positioned(
                    top: 2.h,
                    left: 58.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.img111,
                      width: 145.h,
                      height: 145.h,
                    ),
                  ),
                  Positioned(
                    top: 141.h,
                    left: 86.h,
                    child: Container(
                      width: 95.h,
                      height: 12.h,
                      decoration: BoxDecoration(
                        color: appTheme.color4F3939,
                        borderRadius: BorderRadius.circular(6.h),
                        boxShadow: [
                          BoxShadow(
                            color: appTheme.colorFF8888,
                            offset: Offset(0, 4),
                            blurRadius: 18,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 142.h,
                    left: 112.h,
                    child: Container(
                      width: 43.h,
                      height: 4.h,
                      decoration: BoxDecoration(
                        color: appTheme.colorC614FF,
                        borderRadius: BorderRadius.circular(2.h),
                        boxShadow: [
                          BoxShadow(
                            color: appTheme.colorFF8888,
                            offset: Offset(0, 4),
                            blurRadius: 17,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 127.h,
                    left: 85.h,
                    child: Container(
                      width: 90.h,
                      height: 28.h,
                      decoration: BoxDecoration(
                        color: appTheme.blackCustom,
                        borderRadius: BorderRadius.circular(14.h),
                      ),
                      child: Center(
                        child: Text(
                          '₱ ??',
                          style: TextStyleHelper.instance.headline24Bold,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: CustomButton(
                      text: 'Click to get the amount',
                      onPressed: onClaimReward,
                      buttonVariant: CustomButtonVariant.text,
                      gradientType: CustomButtonGradient
                          .orange, // Modified: Replaced unavailable 'yellowOrange' gradient with 'orange'
                      height: 28.h,
                      textStyle: TextStyleHelper.instance.body14Black,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 120.h,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup1264,
                    width: 11.h,
                    height: 13.h,
                  ),
                  SizedBox(width: 8.h),
                  Text(
                    'Time left to collect:6day 23:59:59',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.colorFF4B55),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 267.h,
              left: 6.h,
              child: CustomImageView(
                imagePath: ImageConstant.img0867344,
                width: 354.h,
                height: 342.h,
              ),
            ),
            Positioned(
              top: 280.h,
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
                      color: appTheme.blackCustom.withAlpha(51),
                      offset: Offset(0, 2),
                      blurRadius: 2,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 267.h,
              left: 76.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgRectangle623,
                width: 284.h,
                height: 60.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
