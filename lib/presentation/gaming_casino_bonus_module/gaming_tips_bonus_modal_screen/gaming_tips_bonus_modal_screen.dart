import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_image_view.dart';
import './controller/gaming_tips_bonus_modal_controller.dart';

class GamingTipsBonusModalScreen
    extends GetWidget<GamingTipsBonusModalController> {
  GamingTipsBonusModalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.color800000,
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Modal Overlay Background
            GestureDetector(
              onTap: () => controller.closeModal(),
              child: Container(
                width: double.maxFinite,
                height: double.maxFinite,
                color: appTheme.color800000,
              ),
            ),

            // Modal Content
            Container(
              width: 345.h,
              margin: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Tips Modal Card
                  Container(
                    width: 345.h,
                    height: 209.h,
                    decoration: BoxDecoration(
                      color: appTheme.colorFF2528,
                      borderRadius: BorderRadius.circular(10.h),
                    ),
                    child: Stack(
                      children: [
                        // Tips Header
                        Positioned(
                          top: 16.h,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Text(
                              'Tips',
                              style: TextStyleHelper.instance.title16Bold
                                  .copyWith(height: 1.19),
                            ),
                          ),
                        ),

                        // Bonus Information Text
                        Positioned(
                          top: 61.h,
                          left: 27.h,
                          right: 27.h,
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              style: TextStyleHelper.instance.body14
                                  .copyWith(height: 1.43),
                              children: [
                                TextSpan(
                                  text: 'Experience bonus ',
                                  style: TextStyleHelper.instance.textStyle38
                                      .copyWith(color: appTheme.whiteCustom),
                                ),
                                TextSpan(
                                  text:
                                      '৳12.00 for new users will be activated after deposit and you can play immediately after activation.',
                                  style: TextStyleHelper.instance.bodyTextBold,
                                ),
                              ],
                            ),
                          ),
                        ),

                        // Close Button
                        Positioned(
                          top: 8.h,
                          right: 8.h,
                          child: GestureDetector(
                            onTap: () => controller.closeModal(),
                            child: Container(
                              width: 32.h,
                              height: 32.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.h),
                              ),
                              child: Center(
                                child: CustomImageView(
                                  imagePath: ImageConstant.img8,
                                  height: 16.h,
                                  width: 16.h,
                                  color: appTheme.whiteCustom,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 16.h),

                  // Deposit Button
                  GestureDetector(
                    onTap: () => controller.onDepositPressed(),
                    child: Container(
                      height: 44.h,
                      width: 120.h,
                      decoration: BoxDecoration(
                        color: appTheme.colorFF85D4,
                        borderRadius: BorderRadius.circular(8.h),
                      ),
                      child: Center(
                        child: Text(
                          'Deposit',
                          style: TextStyleHelper.instance.title16Bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
