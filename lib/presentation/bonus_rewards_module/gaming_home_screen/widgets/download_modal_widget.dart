import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';

class DownloadModalWidget extends StatelessWidget {
  final VoidCallback? onClose;

  DownloadModalWidget({
    Key? key,
    this.onClose,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: appTheme.blackCustom.withAlpha(128),
      child: Column(
        children: [
          SizedBox(height: 124.h),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 16.h),
              child: GestureDetector(
                onTap: onClose,
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup,
                  height: 32.h,
                  width: 32.h,
                ),
              ),
            ),
          ),
          SizedBox(height: 17.h),
          Container(
            width: double.infinity,
            height: 639.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF2528,
              borderRadius: BorderRadius.vertical(top: Radius.circular(8.h)),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 16.h,
                  left: 21.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.img112,
                    height: 50.h,
                    width: 50.h,
                  ),
                ),
                Positioned(
                  top: 25.h,
                  left: 81.h,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'JBET',
                          style: TextStyleHelper.instance.headline24BlackArial
                              .copyWith(color: appTheme.colorFFF6D1),
                        ),
                        TextSpan(
                          text: '88.COM',
                          style: TextStyleHelper.instance.headline24BlackArial
                              .copyWith(color: appTheme.colorFFE4FE),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 24.h,
                  right: 20.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGroup12780,
                    height: 34.h,
                    width: 34.h,
                  ),
                ),
                Positioned(
                  top: 80.h,
                  left: 20.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgApp1,
                    height: 126.h,
                    width: 335.h,
                  ),
                ),
                Positioned(
                  top: 223.h,
                  left: 20.h,
                  child: Container(
                    width: 41.h,
                    height: 18.h,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xFFFFEF4E), Color(0xFFC58D42)],
                      ),
                      borderRadius: BorderRadius.circular(4.h),
                    ),
                    child: Center(
                      child: Text(
                        'V2.0',
                        style: TextStyleHelper.instance.body14BoldArial
                            .copyWith(color: appTheme.colorFF1E20),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 221.h,
                  left: 71.h,
                  child: Text(
                    'Discover a new version',
                    style: TextStyleHelper.instance.title16BoldArial,
                  ),
                ),
                Positioned(
                  top: 253.h,
                  left: 20.h,
                  child: Container(
                    width: 224.h,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Your account ',
                            style: TextStyleHelper.instance.body14Arial
                                .copyWith(color: appTheme.colorFFC0C8),
                          ),
                          TextSpan(
                            text:
                                '9895546461 has been successfully promoted to VIP Teams.',
                            style: TextStyleHelper.instance.body14BoldArial
                                .copyWith(color: appTheme.colorFF0071),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 307.h,
                  left: 20.h,
                  child: Container(
                    width: 314.h,
                    child: Text(
                      'Update the app and enjoy smoother gameplay and richer benefits.',
                      style: TextStyleHelper.instance.body14Arial
                          .copyWith(color: appTheme.colorFFC0C8),
                    ),
                  ),
                ),
                Positioned(
                  top: 363.h,
                  left: 20.h,
                  child: Container(
                    width: 335.h,
                    height: 44.h,
                    decoration: BoxDecoration(
                      color: appTheme.colorFF2BB8,
                      borderRadius: BorderRadius.circular(4.h),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFrame1WhiteA700,
                          height: 24.h,
                          width: 24.h,
                        ),
                        SizedBox(width: 10.h),
                        Text(
                          'Update now',
                          style: TextStyleHelper.instance.title18BoldArial,
                        ),
                        SizedBox(width: 10.h),
                        Text(
                          '(4.9MB)',
                          style: TextStyleHelper.instance.body14Arial,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 425.h,
                  left: 20.h,
                  child: Text(
                    'Installing an application',
                    style: TextStyleHelper.instance.body14BoldArial
                        .copyWith(color: appTheme.colorFFC0C8),
                  ),
                ),
                Positioned(
                  top: 454.h,
                  left: 23.h,
                  child: Container(
                    width: 304.h,
                    child: Text(
                      'Click the button above to download the installation file\nAllow installation of apps from unknown source in your device settings\nComplete the installation',
                      style: TextStyleHelper.instance.body12Arial
                          .copyWith(color: appTheme.colorFF8089, height: 1.5),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Container(
                    width: double.infinity,
                    height: 98.h,
                    color: appTheme.colorFF1E20,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 12.h,
                          left: 20.h,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgVectorGreen500,
                            height: 16.h,
                            width: 16.h,
                          ),
                        ),
                        Positioned(
                          top: 11.h,
                          left: 42.h,
                          child: Text(
                            'Friendly notice',
                            style: TextStyleHelper.instance.body14BoldArial
                                .copyWith(color: appTheme.colorFFC0C8),
                          ),
                        ),
                        Positioned(
                          top: 39.h,
                          left: 20.h,
                          child: Container(
                            width: 330.h,
                            child: Text(
                              'This app has passed Google Play security certification, so feel free to install it.',
                              style: TextStyleHelper.instance.body12Arial
                                  .copyWith(
                                      color: appTheme.colorFF8089, height: 1.5),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 61.h,
                  right: 13.h,
                  child: CustomImageView(
                    imagePath: ImageConstant
                        .img0ca323f5188d84eac7bb91d44e743376ee0a3fa6221e9dlc9icw240x144,
                    height: 240.h,
                    width: 144.h,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
