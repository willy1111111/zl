import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/spin_game_phone_verification_controller.dart';

class SpinGamePhoneVerificationScreen
    extends GetWidget<SpinGamePhoneVerificationController> {
  SpinGamePhoneVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            // Background Image
            CustomImageView(
              imagePath: ImageConstant.img21,
              height: 1132.h,
              width: 375.h,
              fit: BoxFit.cover,
            ),

            // Dark Overlay
            Container(
              width: double.maxFinite,
              height: double.maxFinite,
              color: appTheme.blackCustom.withAlpha(128),
            ),

            // Modal Overlay
            Container(
              width: double.maxFinite,
              height: double.maxFinite,
              color: appTheme.blackCustom.withAlpha(179),
              child: Center(
                child: _buildVerificationModal(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVerificationModal() {
    return Container(
      width: 328.h,
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(12.h),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Modal Content
          Padding(
            padding: EdgeInsets.fromLTRB(28.h, 12.h, 28.h, 16.h),
            child: Column(
              children: [
                Text(
                  'Confirmation',
                  style: TextStyleHelper.instance.title18BoldArial
                      .copyWith(height: 1.17),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.h),
                  child: Text(
                    'You need to complete the phone numberverification before withdrawing',
                    style: TextStyleHelper.instance.title16Arial
                        .copyWith(height: 1.25),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),

          // Verify Button
          GestureDetector(
            onTap: () => controller.onVerifyNowTap(),
            onTapDown: (_) => controller.onButtonPress(),
            onTapUp: (_) => controller.onButtonRelease(),
            onTapCancel: () => controller.onButtonRelease(),
            child: Obx(() => AnimatedContainer(
                  duration: Duration(milliseconds: 100),
                  transform: Matrix4.identity()
                    ..scale(controller.buttonScale.value),
                  child: Container(
                    height: 50.h,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: appTheme.colorFF3236,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12.h),
                        bottomRight: Radius.circular(12.h),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Verify Now',
                        style: TextStyleHelper.instance.title16BoldArial
                            .copyWith(
                                color: appTheme.colorFF85D4, height: 1.19),
                      ),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
