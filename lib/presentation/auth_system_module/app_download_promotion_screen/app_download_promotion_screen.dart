import 'package:flutter/material.dart';
import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import 'controller/app_download_promotion_controller.dart';

class AppDownloadPromotionScreen
    extends GetWidget<AppDownloadPromotionController> {
  const AppDownloadPromotionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.blackCustom.withAlpha(204),
      body: Center(
        child: Container(
          width: 375.h,
          height: 1005.h,
          child: Stack(
            children: [
              // Main Modal Frame
              Positioned(
                top: 155.h,
                left: 44.h,
                child: Container(
                  width: 287.h,
                  height: 453.h,
                  decoration: BoxDecoration(
                    color: appTheme.colorFF1E20,
                    borderRadius: BorderRadius.circular(12.h),
                  ),
                  child: Stack(
                    children: [
                      // Content Frame
                      Positioned(
                        top: 13.h,
                        left: 9.h,
                        child: Container(
                          width: 270.h,
                          height: 380.h,
                          decoration: BoxDecoration(
                            color: appTheme.colorFF2528,
                            borderRadius: BorderRadius.circular(12.h),
                          ),
                          child: Stack(
                            children: [
                              // Promotional Image
                              Positioned(
                                top: 0.h,
                                left: -1.h,
                                child: CustomImageView(
                                  imagePath: ImageConstant
                                      .imgCardmatkalandingen1187x270,
                                  width: 270.h,
                                  height: 187.h,
                                  fit: BoxFit.cover,
                                ),
                              ),

                              // Description Text
                              Positioned(
                                top: 202.h,
                                left: 9.h,
                                child: Container(
                                  width: 246.h,
                                  height: 115.h,
                                  child: Obx(() => Text(
                                        controller.appDownloadPromotionModel
                                                .value?.description?.value ??
                                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar sic tempor. Sociis natoque penatibus et magnis.',
                                        style: TextStyleHelper
                                            .instance.body14BoldArial
                                            .copyWith(
                                                color: appTheme.colorFF8089,
                                                height: 1.14),
                                      )),
                                ),
                              ),

                              // MORE Button
                              Positioned(
                                top: 335.h,
                                left: 70.h,
                                child: GestureDetector(
                                  onTap: () => controller.onMoreButtonPressed(),
                                  child: Container(
                                    width: 130.h,
                                    height: 32.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.colorFF85D4,
                                      borderRadius: BorderRadius.circular(16.h),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'MORE',
                                          style: TextStyleHelper
                                              .instance.title16BoldArial,
                                        ),
                                        SizedBox(width: 8.h),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgVectorWhiteA700,
                                          width: 11.h,
                                          height: 9.h,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Navigation Controls
                      // Previous Button
                      Positioned(
                        top: 413.h,
                        left: 0.h,
                        child: GestureDetector(
                          onTap: () => controller.onPreviousButtonPressed(),
                          child: Container(
                            width: 100.h,
                            height: 40.h,
                            decoration: BoxDecoration(
                              color: appTheme.colorFF2528,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(18.h),
                                bottomLeft: Radius.circular(12.h),
                                bottomRight: Radius.circular(18.h),
                              ),
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 13.h),
                                CustomImageView(
                                  imagePath: ImageConstant.imgStroke,
                                  width: 7.h,
                                  height: 13.h,
                                ),
                                SizedBox(width: 8.h),
                                Text(
                                  'Previous',
                                  style: TextStyleHelper
                                      .instance.body14BoldArial
                                      .copyWith(color: appTheme.colorFF8089),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      // Next Button
                      Positioned(
                        top: 413.h,
                        right: 0.h,
                        child: GestureDetector(
                          onTap: () => controller.onNextButtonPressed(),
                          child: Container(
                            width: 100.h,
                            height: 40.h,
                            decoration: BoxDecoration(
                              color: appTheme.colorFF2528,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(18.h),
                                bottomLeft: Radius.circular(18.h),
                                bottomRight: Radius.circular(12.h),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Next',
                                  style:
                                      TextStyleHelper.instance.body14BoldArial,
                                ),
                                SizedBox(width: 8.h),
                                CustomImageView(
                                  imagePath: ImageConstant.imgStrokeWhiteA700,
                                  width: 7.h,
                                  height: 13.h,
                                ),
                                SizedBox(width: 13.h),
                              ],
                            ),
                          ),
                        ),
                      ),

                      // Page Indicator
                      Positioned(
                        top: 425.h,
                        left: 131.h,
                        child: Container(
                          width: 20.h,
                          height: 19.h,
                          child: Obx(() => Text(
                                controller.appDownloadPromotionModel.value
                                        ?.pageIndicator?.value ??
                                    '1/8',
                                style: TextStyleHelper.instance.body14BoldArial,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Close Button
              Positioned(
                top: 120.h,
                right: 44.h,
                child: GestureDetector(
                  onTap: () => controller.onCloseButtonPressed(),
                  child: Container(
                    width: 44.h,
                    height: 44.h,
                    child: Center(
                      child: Container(
                        width: 24.h,
                        height: 24.h,
                        decoration: BoxDecoration(
                          color: appTheme.colorFF2528,
                          borderRadius: BorderRadius.circular(12.h),
                        ),
                        child: Center(
                          child: Text(
                            '×',
                            style: TextStyleHelper.instance.title16Bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
