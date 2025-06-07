import 'package:flutter/material.dart';
import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_bottom_navigation_bar.dart';
import 'controller/system_maintenance_screen_three_controller.dart';

class SystemMaintenanceScreenThree
    extends GetWidget<SystemMaintenanceScreenThreeController> {
  SystemMaintenanceScreenThree({Key? key}) : super(key: key);

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
              left: 0,
              top: 1.h,
              child: CustomImageView(
                imagePath: ImageConstant.img21,
                height: 812.h,
                width: 375.h,
                fit: BoxFit.cover,
              ),
            ),

            // Background Image 2
            Positioned(
              left: 0,
              top: 43.h,
              child: CustomImageView(
                imagePath: ImageConstant.img11,
                height: 680.h,
                width: 375.h,
                fit: BoxFit.cover,
              ),
            ),

            // Main Notification Card
            Positioned(
              left: 0,
              top: 62.h,
              child: Container(
                width: 375.h,
                height: 508.h,
                decoration: BoxDecoration(
                  color: appTheme.colorFF1E20,
                  borderRadius: BorderRadius.circular(8.h),
                  border: Border.all(
                    color: appTheme.colorFF3535,
                    width: 1.h,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.color888888,
                      blurRadius: 20.h,
                      offset: Offset(0, 4.h),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    // Main Title
                    Positioned(
                      left: 31.h,
                      top: 34.h,
                      child: SizedBox(
                        width: 314.h,
                        height: 26.h,
                        child: Text(
                          'System maintenance notification',
                          style: TextStyleHelper.instance.title20BoldArial2
                              .copyWith(height: 1.15),
                        ),
                      ),
                    ),

                    // Maintenance Time
                    Positioned(
                      left: 42.h,
                      top: 64.h,
                      child: SizedBox(
                        width: 290.h,
                        height: 19.h,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Maintenance time: ',
                                style: TextStyleHelper.instance.body14BoldArial2
                                    .copyWith(height: 1.21),
                              ),
                              TextSpan(
                                text: '12',
                                style: TextStyleHelper.instance.body14BoldArial2
                                    .copyWith(height: 1.21),
                              ),
                              TextSpan(
                                text: '/11/',
                                style: TextStyleHelper.instance.body14BoldArial2
                                    .copyWith(height: 1.21),
                              ),
                              TextSpan(
                                text: '2023 03:00 ~ 04:00',
                                style: TextStyleHelper.instance.body14BoldArial2
                                    .copyWith(height: 1.21),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // Maintenance Illustration
                    Positioned(
                      left: 86.h,
                      top: 106.h,
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
                      left: 224.h,
                      top: 168.h,
                      child: CustomImageView(
                        imagePath: ImageConstant
                            .img6fa1b410450091b3c4718be0b516971f921ab98515b32vaysx6,
                        height: 87.h,
                        width: 116.h,
                        fit: BoxFit.contain,
                      ),
                    ),

                    // Message Card
                    Positioned(
                      left: 15.h,
                      top: 268.h,
                      child: Container(
                        width: 345.h,
                        height: 188.h,
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
                            // Dear Members Title
                            Positioned(
                              left: 15.h,
                              top: 15.h,
                              child: SizedBox(
                                width: 116.h,
                                height: 22.h,
                                child: Text(
                                  'Dear members:',
                                  style: TextStyleHelper
                                      .instance.title16BoldArial2
                                      .copyWith(height: 1.19),
                                ),
                              ),
                            ),

                            // Message Content
                            Positioned(
                              left: 15.h,
                              top: 49.h,
                              child: SizedBox(
                                width: 301.h,
                                height: 96.h,
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text:
                                            'In order to ensure the stability of the server, we will ',
                                        style: TextStyleHelper
                                            .instance.body14MediumArial
                                            .copyWith(
                                                color: appTheme.colorFF8089,
                                                height: 1.71),
                                      ),
                                      TextSpan(
                                        text:
                                            'shut down the server for maintenance.\nDuring this period you will not be able to log in normally. We apologize for the inconvenience!',
                                        style: TextStyleHelper
                                            .instance.body14MediumArial
                                            .copyWith(
                                                color: appTheme.colorFF51A0,
                                                height: 1.71),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            // Company Name
                            Positioned(
                              left: 270.h,
                              top: 152.h,
                              child: SizedBox(
                                width: 59.h,
                                height: 18.h,
                                child: Text(
                                  'Jbet88.co',
                                  style: TextStyleHelper
                                      .instance.body14MediumArial
                                      .copyWith(height: 1.14),
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
