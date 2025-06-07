import 'package:flutter/material.dart';
import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import 'controller/login_session_expired_controller.dart';

class LoginSessionExpiredScreen
    extends GetWidget<LoginSessionExpiredController> {
  LoginSessionExpiredScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            // Background Image
            CustomImageView(
              imagePath: ImageConstant.imgCardmatkalandingen1812x375,
              height: double.maxFinite,
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),

            // Dark Overlay
            Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                color: appTheme.blackCustom.withAlpha(204),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.colorFF8888,
                    blurRadius: 8.h,
                    offset: Offset(0, 4.h),
                  ),
                ],
              ),
            ),

            // Dialog Modal
            Center(
              child: Container(
                width: 328.h,
                height: 167.h,
                margin: EdgeInsets.symmetric(horizontal: 24.h),
                decoration: BoxDecoration(
                  color: appTheme.colorFF1E20,
                  borderRadius: BorderRadius.circular(12.h),
                ),
                child: Stack(
                  children: [
                    // Dialog Title
                    Positioned(
                      left: 122.h,
                      top: 11.h,
                      child: Text(
                        'Hint',
                        style: TextStyleHelper.instance.title18BoldArial
                            .copyWith(height: 1.17),
                      ),
                    ),

                    // Dialog Message
                    Positioned(
                      left: 21.h,
                      top: 53.h,
                      child: SizedBox(
                        width: 285.h,
                        child: Text(
                          'Login has expired Please log in again',
                          style: TextStyleHelper.instance.title16BoldArial
                              .copyWith(
                                  color: appTheme.colorFF8089, height: 1.19),
                        ),
                      ),
                    ),

                    // Login Button
                    Positioned(
                      left: 105.h,
                      top: 118.h,
                      child: Container(
                        width: 117.h,
                        height: 36.h,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xFF76CD00),
                              appTheme.colorFF478A,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(8.h),
                        ),
                        child: Material(
                          color: appTheme.transparentCustom,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(8.h),
                            onTap: () => controller.onLoginPressed(),
                            child: Center(
                              child: Text(
                                'Login',
                                style: TextStyleHelper.instance.title16BoldArial
                                    .copyWith(height: 1.19),
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
          ],
        ),
      ),
    );
  }
}
