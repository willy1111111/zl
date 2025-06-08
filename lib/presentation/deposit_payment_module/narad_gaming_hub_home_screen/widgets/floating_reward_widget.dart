import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';

class FloatingRewardWidget extends StatelessWidget {
  final int badgeCount;
  final String timeText;
  final VoidCallback? onReceiveTapped;

  FloatingRewardWidget({
    Key? key,
    required this.badgeCount,
    required this.timeText,
    this.onReceiveTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.h,
      height: 120.h,
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant
                .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12001,
            height: 120.h,
            width: 120.h,
          ),
          CustomImageView(
            imagePath: ImageConstant
                .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12002,
            height: 120.h,
            width: 120.h,
          ),
          Positioned(
            top: 3.h,
            left: 15.h,
            child: CustomImageView(
              imagePath: ImageConstant.img23331,
              height: 99.h,
              width: 91.h,
            ),
          ),
          Positioned(
            top: 11.h,
            right: 16.h,
            child: Container(
              width: 16.h,
              height: 16.h,
              decoration: BoxDecoration(
                color: appTheme.colorFFF335,
                borderRadius: BorderRadius.circular(8.h),
              ),
              child: Center(
                child: Text(
                  badgeCount.toString(),
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.whiteCustom),
                ),
              ),
            ),
          ),
          if (timeText.isNotEmpty)
            Positioned(
              top: 54.h,
              left: 9.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgVector1,
                height: 17.h,
                width: 101.h,
              ),
            ),
          if (timeText.isNotEmpty)
            Positioned(
              top: 58.h,
              left: 12.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgYellow70001,
                height: 12.h,
                width: 11.h,
              ),
            ),
          if (timeText.isNotEmpty)
            Positioned(
              top: 55.h,
              left: 24.h,
              child: Text(
                timeText,
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.colorFFFDFF),
              ),
            ),
          Positioned(
            top: 72.h,
            left: 1.h,
            child: CustomImageView(
              imagePath: ImageConstant.img1moneyrain,
              height: 22.h,
              width: 118.h,
            ),
          ),
          Positioned(
            top: 90.h,
            left: 12.h,
            child: GestureDetector(
              onTap: onReceiveTapped,
              child: Container(
                width: 96.h,
                height: 30.h,
                child: Stack(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.img16,
                      height: 30.h,
                      width: 96.h,
                    ),
                    Positioned.fill(
                      child: Center(
                        child: Text(
                          'Receive',
                          style: TextStyleHelper.instance.title16Bold
                              .copyWith(shadows: [
                            Shadow(
                              offset: Offset(0, 1.h),
                              blurRadius: 2.h,
                              color: appTheme.blackCustom,
                            ),
                          ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
