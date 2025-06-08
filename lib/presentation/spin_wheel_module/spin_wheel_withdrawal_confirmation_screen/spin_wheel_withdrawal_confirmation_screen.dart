import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/spin_wheel_withdrawal_confirmation_controller.dart';

class SpinWheelWithdrawalConfirmationScreen
    extends GetWidget<SpinWheelWithdrawalConfirmationController> {
  const SpinWheelWithdrawalConfirmationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 375.h,
        height: 812.h,
        child: Stack(
          children: [
            // Background Image
            CustomImageView(
              imagePath: ImageConstant.img21,
              width: 375.h,
              height: 1132.h,
              fit: BoxFit.cover,
            ),

            // Dark Overlay
            Container(
              width: 375.h,
              height: 812.h,
              color: appTheme.blackCustom.withAlpha(153),
            ),

            // Confirmation Modal
            Positioned(
              left: 24.h,
              top: 240.h,
              child: Container(
                width: 328.h,
                height: 207.h,
                decoration: BoxDecoration(
                  color: appTheme.colorFF2528,
                  borderRadius: BorderRadius.circular(12.h),
                ),
                child: Column(
                  children: [
                    // Modal Header
                    Padding(
                      padding: EdgeInsets.only(
                        top: 11.h,
                        left: 21.h,
                        right: 21.h,
                      ),
                      child: Text(
                        'Confirmation',
                        style: TextStyleHelper.instance.title18Bold
                            .copyWith(height: 1.17),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    // Modal Content
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 21.h,
                          right: 21.h,
                          top: 21.h,
                          bottom: 20.h,
                        ),
                        child: Text(
                          'Your withdrawal review has been submitted and is awaiting review，A new round of wheel withdrawal activities can start directly',
                          style: TextStyleHelper.instance.title16
                              .copyWith(height: 1.25),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),

                    // Confirm Button
                    GestureDetector(
                      onTap: () => controller.onConfirmTap(),
                      child: Container(
                        width: 328.h,
                        height: 50.h,
                        decoration: BoxDecoration(
                          color: appTheme.colorFF3236,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12.h),
                            bottomRight: Radius.circular(12.h),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Confirm',
                            style: TextStyleHelper.instance.title16Bold
                                .copyWith(
                                    color: appTheme.colorFF85D4, height: 1.19),
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
