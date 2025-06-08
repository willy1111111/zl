import 'package:flutter/material.dart';
import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_bottom_navigation_bar.dart';
import 'controller/system_maintenance_controller.dart';

class SystemMaintenanceScreen extends GetWidget<SystemMaintenanceController> {
  SystemMaintenanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: Obx(() {
        return Stack(
          children: [
            // Background Images
            Positioned(
              top: 1.h,
              left: 0,
              child: CustomImageView(
                imagePath: ImageConstant.img21,
                height: 812.h,
                width: 375.h,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 43.h,
              left: 0,
              child: CustomImageView(
                imagePath: ImageConstant.img11,
                height: 680.h,
                width: 375.h,
                fit: BoxFit.cover,
              ),
            ),

            // Main Notification Container
            Positioned(
              top: 62.h,
              left: 0,
              child: Container(
                width: 375.h,
                height: 508.h,
                decoration: BoxDecoration(
                  color: appTheme.colorFF1E20,
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.colorFF8888,
                      offset: Offset(0, 4.h),
                      blurRadius: 20.h,
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    // Maintenance Illustration
                    Positioned(
                      top: 106.h,
                      left: 86.h,
                      child: CustomImageView(
                        imagePath: ImageConstant
                            .imgB08e54516adf3b9b17a0d2e617b4da8810c857789c77golgq6fw1200,
                        height: 144.h,
                        width: 204.h,
                        fit: BoxFit.contain,
                      ),
                    ),

                    // Notification Title
                    Positioned(
                      top: 34.h,
                      left: 31.h,
                      child: SizedBox(
                        width: 314.h,
                        height: 26.h,
                        child: Text(
                          controller
                                  .systemMaintenanceModel.value?.title?.value ??
                              'System maintenance notification',
                          style: TextStyleHelper.instance.title20BoldArial,
                        ),
                      ),
                    ),

                    // Maintenance Time
                    Positioned(
                      top: 64.h,
                      left: 42.h,
                      child: SizedBox(
                        width: 290.h,
                        height: 19.h,
                        child: RichText(
                          text: TextSpan(
                            style: TextStyleHelper.instance.body14BoldArial,
                            children: [
                              TextSpan(
                                text: 'Maintenance time: ',
                                style: TextStyleHelper.instance.textStyle8
                                    .copyWith(color: appTheme.colorFFFFC6),
                              ),
                              TextSpan(
                                text: controller.systemMaintenanceModel.value
                                        ?.maintenanceDate?.value ??
                                    '12',
                                style: TextStyleHelper.instance.textStyle8
                                    .copyWith(color: appTheme.colorFFFFC6),
                              ),
                              TextSpan(
                                text: '/11/',
                                style: TextStyleHelper.instance.textStyle8
                                    .copyWith(color: appTheme.colorFFFFC6),
                              ),
                              TextSpan(
                                text: controller.systemMaintenanceModel.value
                                        ?.maintenanceTime?.value ??
                                    '2023 04:00 ~ 05:00',
                                style: TextStyleHelper.instance.textStyle8
                                    .copyWith(color: appTheme.colorFFFFC6),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // Message Container
                    Positioned(
                      top: 268.h,
                      left: 15.h,
                      child: Container(
                        width: 345.h,
                        height: 188.h,
                        padding: EdgeInsets.all(15.h),
                        decoration: BoxDecoration(
                          color: appTheme.colorFF2528,
                          borderRadius: BorderRadius.circular(8.h),
                          border: Border.all(
                            color: appTheme.colorFF3535,
                            width: 1.h,
                          ),
                        ),
                        child: Stack(
                          children: [
                            // Dear Members Header
                            Positioned(
                              top: 0,
                              left: 0,
                              child: Text(
                                controller.systemMaintenanceModel.value
                                        ?.headerText?.value ??
                                    'Dear members:',
                                style:
                                    TextStyleHelper.instance.title16BoldArial,
                              ),
                            ),

                            // Message Content
                            Positioned(
                              top: 34.h,
                              left: 0,
                              child: SizedBox(
                                width: 301.h,
                                child: RichText(
                                  text: TextSpan(
                                    style: TextStyleHelper
                                        .instance.body14MediumArial
                                        .copyWith(height: 1.7),
                                    children: [
                                      TextSpan(
                                        text: controller.systemMaintenanceModel
                                                .value?.messagePartOne?.value ??
                                            'In order to ensure the stability of the server, we will ',
                                        style: TextStyleHelper
                                            .instance.textStyle8
                                            .copyWith(
                                                color: appTheme.colorFF8089),
                                      ),
                                      TextSpan(
                                        text: controller.systemMaintenanceModel
                                                .value?.messagePartTwo?.value ??
                                            'shut down the server for maintenance.\nDuring this period you will not be able to log in normally. We apologize for the inconvenience!',
                                        style: TextStyleHelper
                                            .instance.textStyle8
                                            .copyWith(
                                                color: appTheme.colorFF51A0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            // Brand Name
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Text(
                                controller.systemMaintenanceModel.value
                                        ?.brandName?.value ??
                                    'Jbet88.co',
                                style:
                                    TextStyleHelper.instance.body14MediumArial,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Additional Maintenance Icon
                    Positioned(
                      top: 168.h,
                      left: 224.h,
                      child: CustomImageView(
                        imagePath: ImageConstant
                            .img6fa1b410450091b3c4718be0b516971f921ab98515b32vaysx6,
                        height: 87.h,
                        width: 116.h,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      }),
      bottomNavigationBar: Obx(
        () => CustomBottomNavBar(
          isLoading: true,
          loadingText:
              controller.systemMaintenanceModel.value?.loadingText?.value ??
                  'Please wait..',
          height: 90.h,
          backgroundColor: appTheme.colorFF232B,
        ),
      ),
    );
  }
}
