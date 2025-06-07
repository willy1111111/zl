import 'package:flutter/material.dart';
import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_bottom_navigation_bar.dart';
import 'controller/system_maintenance_screen_four_controller.dart';

class SystemMaintenanceScreenFour
    extends GetWidget<SystemMaintenanceScreenFourController> {
  SystemMaintenanceScreenFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            // Background Image 1
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

            // Background Image 2 Overlay
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

            // Main Notification Dialog
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
                      blurRadius: 20.h,
                      offset: Offset(0, 4.h),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    // System Maintenance Title
                    Positioned(
                      top: 34.h,
                      left: 31.h,
                      child: SizedBox(
                        width: 314.h,
                        height: 26.h,
                        child: Text(
                          'System maintenance notification',
                          style: TextStyleHelper.instance.title20Bold
                              .copyWith(height: 1.15),
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
                        child: Text(
                          'Maintenance time: 12/11/2023 04:00 ~ 05:00',
                          style: TextStyleHelper.instance.body14Bold.copyWith(
                              color: appTheme.colorFFFFC6, height: 1.21),
                        ),
                      ),
                    ),

                    // Main Maintenance Illustration
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

                    // Dear Teams Section
                    Positioned(
                      top: 268.h,
                      left: 15.h,
                      child: Container(
                        width: 345.h,
                        height: 188.h,
                        decoration: BoxDecoration(
                          color: appTheme.colorFF2528,
                          border: Border.all(
                            color: appTheme.colorFF3535,
                            width: 1.h,
                          ),
                          borderRadius: BorderRadius.circular(8.h),
                        ),
                        child: Stack(
                          children: [
                            // Dear Teams Header
                            Positioned(
                              top: 15.h,
                              left: 15.h,
                              child: SizedBox(
                                width: 104.h,
                                height: 22.h,
                                child: Text(
                                  'Dear Teamss:',
                                  style: TextStyleHelper.instance.title16Bold
                                      .copyWith(height: 1.19),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Maintenance Message
                    Positioned(
                      top: 317.h,
                      left: 30.h,
                      child: SizedBox(
                        width: 311.h,
                        height: 144.h,
                        child: RichText(
                          text: TextSpan(
                            style: TextStyleHelper.instance.body14Bold
                                .copyWith(height: 1.71),
                            children: [
                              TextSpan(
                                text:
                                    'In order to ensure the stability of the server, we will ',
                                style: TextStyleHelper.instance.textStyle8
                                    .copyWith(color: appTheme.colorFF8089),
                              ),
                              TextSpan(
                                text:
                                    'shut down the server for maintenance.\nDuring this period you will not be able to log in normally. We apologize for the inconvenience!',
                                style: TextStyleHelper.instance.textStyle8
                                    .copyWith(color: appTheme.colorFF51A0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // Website Logo/Name
                    Positioned(
                      top: 420.h,
                      left: 279.h,
                      child: SizedBox(
                        width: 65.h,
                        height: 19.h,
                        child: Text(
                          'Jbet88.co',
                          style: TextStyleHelper.instance.body14Bold.copyWith(
                              color: appTheme.whiteCustom, height: 1.21),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        isLoading: true,
        loadingText: 'Please wait..',
        height: 90.h,
        backgroundColor: appTheme.colorFF232B,
      ),
    );
  }
}
