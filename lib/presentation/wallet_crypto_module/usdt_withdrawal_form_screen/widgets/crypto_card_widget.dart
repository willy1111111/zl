import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';

class CryptoCardWidget extends StatelessWidget {
  CryptoCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.139, 0),
          end: Alignment(1, 1),
          colors: [
            Color(0xFF33C38F),
            appTheme.colorFF3352,
          ],
        ),
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup2131329901,
                    height: 18.h,
                    width: 18.h,
                  ),
                  SizedBox(width: 8.h),
                  Text(
                    'USDT(TRC20)',
                    style: TextStyleHelper.instance.title16Bold,
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              Container(
                width: 144.h,
                height: 1.h,
                color: appTheme.colorFFFFC7,
              ),
              SizedBox(height: 16.h),
              Text(
                'TP****LfXH',
                style:
                    TextStyleHelper.instance.headline24Black.copyWith(shadows: [
                  Shadow(
                    color: appTheme.blackCustom,
                    offset: Offset(0, 1.h),
                    blurRadius: 2.h,
                  ),
                ]),
              ),
              SizedBox(height: 8.h),
              Text(
                '2025-01-03',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.whiteCustom),
              ),
            ],
          ),
          Positioned(
            top: 37.h,
            right: 0,
            child: CustomImageView(
              imagePath: ImageConstant
                  .img5fd78a7083dbb13838c108e33bfeb03df4321c632efa9arlwcs52,
              height: 80.h,
              width: 74.h,
            ),
          ),
          Positioned(
            bottom: 8.h,
            right: 0,
            child: Container(
              width: 88.h,
              height: 9.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0x7F3F3F3F),
                    appTheme.color7F3F3F,
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.colorFF8888,
                    blurRadius: 12.h,
                    offset: Offset(0, 4.h),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
