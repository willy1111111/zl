import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../controller/money_rain_event_controller.dart';

class MoneyRainModalWidget extends StatelessWidget {
  final VoidCallback? onClosePressed;

  MoneyRainModalWidget({
    Key? key,
    this.onClosePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<MoneyRainEventController>();

    return Positioned(
      top: 152.h,
      left: 28.h,
      child: Container(
        width: 320.h,
        height: 518.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFFA6900), Color(0xFFBF1E1E)],
          ),
          borderRadius: BorderRadius.circular(12.h),
        ),
        child: Stack(
          children: [
            // Close Button
            Positioned(
              top: 4.h,
              right: 18.h,
              child: GestureDetector(
                onTap: onClosePressed,
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup12488,
                  width: 28.h,
                  height: 28.h,
                ),
              ),
            ),

            // Money Rain Header
            Positioned(
              top: 29.h,
              left: 124.h,
              child: CustomImageView(
                imagePath: ImageConstant
                    .imgA7391d138e9d5dcd059d6c79dea79e949b2b00f7f1ec9zm7swt1,
                width: 196.h,
                height: 149.h,
                fit: BoxFit.contain,
              ),
            ),

            // Title
            Positioned(
              top: 151.h,
              left: 126.h,
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img2858,
                    width: 180.h,
                    height: 48.h,
                  ),
                  SizedBox(height: 9.h),
                  Text(
                    'Money Rain',
                    style: TextStyleHelper.instance.title22Bold
                        .copyWith(height: 1.18),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            // Left Character
            Positioned(
              top: 186.h,
              left: 35.h,
              child: Stack(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGh11,
                    width: 128.h,
                    height: 53.h,
                  ),
                  Positioned(
                    top: 13.h,
                    left: 17.h,
                    child: Column(
                      children: [
                        Text(
                          'Max Drop',
                          style: TextStyleHelper.instance.body12Bold.copyWith(
                              color: appTheme.colorFFFFF4, height: 0.83),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          '₱7,777',
                          style: TextStyleHelper.instance.title20Bold.copyWith(
                              color: appTheme.whiteCustom, height: 1.15),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Main Prize
            Positioned(
              top: 210.h,
              left: 170.h,
              child: Column(
                children: [
                  Text(
                    'At a time',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.whiteCustom, height: 1.21),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '₱200,000',
                    style: TextStyleHelper.instance.display40Bold
                        .copyWith(height: 1.15),
                  ),
                ],
              ),
            ),

            // Right Character
            Positioned(
              top: 186.h,
              right: 61.h,
              child: CustomImageView(
                imagePath: ImageConstant.img71,
                width: 80.h,
                height: 65.h,
              ),
            ),

            // Schedule Section
            Positioned(
              top: 132.h,
              left: 12.h,
              child: Container(
                width: 296.h,
                height: 226.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFFFFF0D6), Color(0xFFFFC48B)],
                  ),
                  borderRadius: BorderRadius.circular(8.h),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8.h,
                      offset: Offset(0, 4.h),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    // Days Column
                    Container(
                      width: 60.h,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFFFF3366), Color(0xFFFF6E30)],
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.h),
                          bottomLeft: Radius.circular(8.h),
                        ),
                      ),
                      child: Obx(() => Padding(
                            padding: EdgeInsets.all(9.h),
                            child: Column(
                              children: controller.scheduleDays.map((day) {
                                return Container(
                                  margin: EdgeInsets.only(bottom: 25.h),
                                  padding: EdgeInsets.symmetric(vertical: 5.h),
                                  decoration: (day.isActive?.value == true)
                                      ? BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Color(0xFFFF3366),
                                              Color(0xFFFF6E30)
                                            ],
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.h),
                                        )
                                      : null,
                                  child: Row(
                                    children: [
                                      Text(
                                        day.day?.value ??
                                            '', // Modified: Use value property for Rx<String>
                                        style: TextStyleHelper
                                            .instance.body14Bold
                                            .copyWith(
                                                color: (day.isActive?.value ==
                                                        true)
                                                    ? appTheme.whiteCustom
                                                    : appTheme.colorFF2528,
                                                height: 1.21),
                                      ),
                                      if (day.isActive?.value == true)
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 36.h, top: 5.h),
                                          child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgPolygon11,
                                            width: 6.h,
                                            height: 10.h,
                                          ),
                                        ),
                                    ],
                                  ),
                                );
                              }).toList(),
                            ),
                          )),
                    ),
                    // Time Slots
                    Expanded(
                      child: Obx(() => Column(
                            children: controller.timeSlots.map((slot) {
                              return Container(
                                height: 36.h,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0xFFFF3366),
                                      Color(0xFFFF6E30)
                                    ],
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(width: 15.h),
                                    CustomImageView(
                                      imagePath: (slot.isActive?.value == true)
                                          ? ImageConstant.imgVectorRedA70002
                                          : ImageConstant.imgVectorGray40002,
                                      width: 11.h,
                                      height: 12.h,
                                    ),
                                    SizedBox(width: 15.h),
                                    Text(
                                      slot.time?.value ??
                                          '', // Modified: Use value property for Rx<String>
                                      style: TextStyleHelper
                                          .instance.title16Bold
                                          .copyWith(
                                              color:
                                                  (slot.isActive?.value == true)
                                                      ? Color(0xFFFF0A00)
                                                      : appTheme.colorFFC9A3,
                                              height: 1.19),
                                    ),
                                  ],
                                ),
                              );
                            }).toList(),
                          )),
                    ),
                  ],
                ),
              ),
            ),

            // Rules Text
            Positioned(
              bottom: 52.h,
              left: 18.h,
              child: SizedBox(
                width: 278.h,
                child: Text(
                  'Each money rain gives out 200,000 for free\nRecharge Teamss can get it for free\nThe money received can be used for betting or withdrawndirectly\nThe higher the VlP level, the greater the value you get',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.whiteCustom, height: 1.33),
                ),
              ),
            ),

            // Next Round Timer
            Positioned(
              bottom: 24.h,
              left: 75.h,
              child: Container(
                width: 168.h,
                height: 24.h,
                decoration: BoxDecoration(
                  color: appTheme.whiteCustom,
                  borderRadius: BorderRadius.circular(12.h),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 13.h),
                    CustomImageView(
                      imagePath: ImageConstant.imgVectorGray90001,
                      width: 13.h,
                      height: 14.h,
                    ),
                    SizedBox(width: 17.h),
                    Obx(() => Text(
                          'next Round ${controller.countdownTimer.value}',
                          style: TextStyleHelper.instance.body14Bold.copyWith(
                              color: appTheme.colorFFFF00, height: 1.21),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
