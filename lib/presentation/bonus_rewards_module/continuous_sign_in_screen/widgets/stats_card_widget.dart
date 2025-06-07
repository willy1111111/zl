import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../controller/continuous_sign_in_controller.dart';

class StatsCardWidget extends StatelessWidget {
  const StatsCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<ContinuousSignInController>();

    return Container(
      height: 66.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFFEF5A12), appTheme.colorFFFF8C, Color(0xFFFFA800)],
        ),
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.whiteCustom.withAlpha(77),
            blurRadius: 4.h,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 35.h,
            left: 0,
            child: Container(
              width: 20.h,
              height: 31.h,
              decoration: BoxDecoration(
                color: appTheme.colorFFFFB5,
                borderRadius: BorderRadius.circular(20.h),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.color888888,
                    blurRadius: 30.h,
                    spreadRadius: 0,
                    offset: Offset(0, 4.h),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 25.h,
            child: Container(
              width: 17.h,
              height: 14.h,
              decoration: BoxDecoration(
                color: appTheme.colorFFFFE3,
                borderRadius: BorderRadius.circular(4.h),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.color888888,
                    blurRadius: 21.h,
                    spreadRadius: 0,
                    offset: Offset(0, 4.h),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 8.h,
            left: 172.h,
            child: Container(
              width: 1.h,
              height: 50.h,
              color: appTheme.color4CFFFA,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant
                          .imgAdd2e694b50907790800188bb93242cee3957bd96358f3sm3f1,
                      height: 28.h,
                      width: 26.h,
                    ),
                    SizedBox(width: 8.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Obx(() => Text(
                              controller.continuousSignInModel.value
                                      .numberOfSignIns?.value ??
                                  '24',
                              style: TextStyleHelper.instance.title18Bold,
                            )),
                        Text(
                          'Number of sign-ins',
                          style: TextStyleHelper.instance.body14Bold
                              .copyWith(color: appTheme.whiteCustom),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.img1733643593,
                      height: 24.h,
                      width: 24.h,
                    ),
                    SizedBox(width: 4.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Obx(() => Text(
                              controller.continuousSignInModel.value
                                      .receivedTotalBonus?.value ??
                                  '₱ 0.20',
                              style: TextStyleHelper.instance.title18Bold,
                            )),
                        Text(
                          'Received total bonus',
                          style: TextStyleHelper.instance.body14Bold
                              .copyWith(color: appTheme.whiteCustom),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
