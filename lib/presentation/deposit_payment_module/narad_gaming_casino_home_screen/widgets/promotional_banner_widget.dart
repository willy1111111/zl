import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/promotional_banner_model.dart';

class PromotionalBannerWidget extends StatelessWidget {
  PromotionalBannerWidget({Key? key}) : super(key: key);

  final PromotionalBannerModel promotionalBanner = PromotionalBannerModel();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      child: Container(
        width: 375.h,
        height: 68.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF76CD00), Color(0xFF478A03)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Stack(
          children: [
            CustomImageView(
              imagePath: ImageConstant
                  .img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi2,
              height: 68.h,
              width: 375.h,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 0,
              left: 0,
              child: CustomImageView(
                imagePath: ImageConstant
                    .img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi1,
                height: 68.h,
                width: 279.h,
                fit: BoxFit.cover,
              ),
            ),

            // Stars
            ...List.generate(5, (index) {
              return Positioned(
                top: 41.h,
                left: (68 + index * 17).h,
                child: Transform.rotate(
                  angle: 0.785398, // 45 degrees in radians
                  child: Container(
                    width: 15.h,
                    height: 15.h,
                    color: appTheme.colorFFFFF4,
                  ),
                ),
              );
            }),

            // App Icon
            Positioned(
              top: 9.h,
              left: 12.h,
              child: Container(
                width: 50.h,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.h),
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.img112,
                  height: 50.h,
                  width: 50.h,
                  fit: BoxFit.cover,
                  radius: BorderRadius.circular(8.h),
                ),
              ),
            ),

            // Text
            Positioned(
              top: 10.h,
              left: 68.h,
              child: Container(
                width: 127.h,
                height: 28.h,
                child: Text(
                  'Many benefits for newcomers',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.whiteCustom, height: 1.17),
                ),
              ),
            ),

            // Download Button
            Positioned(
              top: 18.h,
              right: 30.h,
              child: Container(
                decoration: BoxDecoration(
                  color: appTheme.whiteCustom,
                  borderRadius: BorderRadius.circular(16.h),
                ),
                padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 4.h),
                child: Text(
                  'Download',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFF478A, height: 1.43),
                ),
              ),
            ),

            // Close Button
            Positioned(
              top: 4.h,
              right: 17.h,
              child: Container(
                width: 14.h,
                height: 14.h,
                color: appTheme.colorFF478A,
              ),
            ),
            Positioned(
              top: 0,
              right: 7.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgVectorLightGreen400,
                height: 26.h,
                width: 26.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
