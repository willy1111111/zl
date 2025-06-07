import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_jackpot_card.dart';
import './controller/jackpot_history_controller.dart';

class JackpotHistoryScreen extends GetWidget<JackpotHistoryController> {
  JackpotHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appTheme.colorFF2529,
        body: Stack(children: [
          // Background Image
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: CustomImageView(
                  imagePath: ImageConstant.imgImage1063,
                  height: 964.h,
                  width: 375.h,
                  fit: BoxFit.cover)),

          // Black Overlay
          Container(height: 932.h, width: 375.h, color: appTheme.blackCustom),

          // Bottom Sheet Modal
          Positioned(
              top: 167.h,
              left: 0,
              right: 0,
              child: Container(
                  height: 694.h,
                  width: 375.h,
                  decoration: BoxDecoration(
                      color: appTheme.colorFF292F,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(22.h),
                          topRight: Radius.circular(22.h))),
                  child: Stack(children: [
                    // Close Button
                    Positioned(
                        top: 12.h,
                        right: 11.h,
                        child: GestureDetector(
                            onTap: () => Get.back(),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgGroup2131329954,
                                height: 28.h,
                                width: 28.h))),

                    // History Title
                    Positioned(
                        top: 16.h,
                        left: 160.h,
                        child: Text('History',
                            style: TextStyleHelper.instance.title16BoldArial)),

                    // Separator Line
                    Positioned(
                        top: 48.h,
                        left: 0,
                        right: 0,
                        child: Container(
                            height: 1.h, color: appTheme.whiteCustom)),

                    // Agent Jackpot Card
                    Positioned(
                        top: 65.h,
                        left: 15.h,
                        child: CustomJackpotCard(
                            title: 'AGENT JACKPOT',
                            amount: '₱15,666,523.70',
                            titleColor: appTheme.colorFFFFC8,
                            leftIconPath: ImageConstant.imgGrasscpirlbv1,
                            rightIconPath: ImageConstant.imgGrasscpirlbv2,
                            decorativeImagePath: ImageConstant.imgEllipse624,
                            backgroundColor: appTheme.colorFF2528,
                            width: 345.h,
                            height: 79.h,
                            borderRadius: 10.h)),

                    // Date Filter 1
                    Positioned(
                        top: 112.h,
                        left: 15.h,
                        child: Obx(() => Text(
                            controller.dateFilter1!.value ??
                                'Date:2024.03.09-2024.03.116',
                            style: TextStyleHelper.instance.body12Arial
                                .copyWith(color: appTheme.whiteCustom)))),

                    // Date Filter 2
                    Positioned(
                        top: 152.h,
                        left: 15.h,
                        child: Obx(() => Text(
                            controller.dateFilter2!.value ??
                                'Date:2024.03.09-2024.03.116',
                            style: TextStyleHelper.instance.body12Arial
                                .copyWith(color: appTheme.whiteCustom)))),

                    // Progress Illustration
                    Positioned(
                        top: 216.h,
                        left: 79.h,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgGroup279,
                            height: 184.h,
                            width: 240.h)),

                    // Progress Text
                    Positioned(
                        top: 441.h,
                        left: 89.h,
                        child: Text('Please waitrankings in progress.',
                            style: TextStyleHelper.instance.body14BoldArial
                                .copyWith(color: appTheme.colorFF8089))),
                  ]))),
        ]));
  }
}
