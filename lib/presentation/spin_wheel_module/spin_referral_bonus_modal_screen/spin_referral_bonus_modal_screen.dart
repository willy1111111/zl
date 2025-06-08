import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/spin_referral_bonus_modal_controller.dart';

class SpinReferralBonusModalScreen
    extends GetWidget<SpinReferralBonusModalController> {
  const SpinReferralBonusModalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 375.h,
        height: 812.h,
        child: Stack(
          children: [
            // Background Image
            CustomImageView(
              imagePath: ImageConstant.imgImage1137,
              height: 1132.h,
              width: 375.h,
              fit: BoxFit.cover,
            ),

            // Modal Overlay
            Container(
              width: 375.h,
              height: 812.h,
              color: appTheme.color800000,
              child: Stack(
                children: [
                  // User Avatar
                  Positioned(
                    left: 148.h,
                    top: 231.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgImage80x80,
                      height: 80.h,
                      width: 80.h,
                      radius: BorderRadius.circular(40.h),
                    ),
                  ),

                  // Main Modal Card
                  Positioned(
                    left: 15.h,
                    top: 271.h,
                    child: Container(
                      width: 345.h,
                      height: 260.h,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF3F444B),
                            appTheme.colorFF3F44,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(12.h),
                      ),
                      child: Stack(
                        children: [
                          // Title
                          Positioned(
                            left: 78.h,
                            top: 44.h,
                            child: Text(
                              'Helping you succeed',
                              style: TextStyleHelper.instance.title16Bold
                                  .copyWith(
                                      color: appTheme.whiteCustom,
                                      height: 1.19),
                            ),
                          ),

                          // Spin Icon and Bonus Text
                          Positioned(
                            left: 63.h,
                            top: 89.h,
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgFrame213133043440x40,
                                  height: 40.h,
                                  width: 40.h,
                                ),
                                SizedBox(width: 12.h),
                                Text(
                                  '+1 Free Spin',
                                  style: TextStyleHelper.instance.title20Black
                                      .copyWith(height: 1.45),
                                ),
                              ],
                            ),
                          ),

                          // Description Text
                          Positioned(
                            left: 0.h,
                            top: 134.h,
                            child: Container(
                              width: 316.h,
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Invite new friends',
                                      style: TextStyleHelper.instance.body14
                                          .copyWith(
                                              color: appTheme.whiteCustom,
                                              height: 1.29),
                                    ),
                                    TextSpan(
                                      text: ' [+99*****39 ]',
                                      style: TextStyleHelper.instance.body14
                                          .copyWith(
                                              color: appTheme.colorFFFFF4,
                                              height: 1.29),
                                    ),
                                    TextSpan(
                                      text: ' to register and help you get ',
                                      style: TextStyleHelper.instance.body14
                                          .copyWith(
                                              color: appTheme.whiteCustom,
                                              height: 1.29),
                                    ),
                                    TextSpan(
                                      text: ' +1 free spin',
                                      style: TextStyleHelper.instance.body14
                                          .copyWith(
                                              color: appTheme.colorFFFFF4,
                                              height: 1.29),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          // Get It Button
                          Positioned(
                            left: 10.h,
                            top: 200.h,
                            child: GestureDetector(
                              onTap: () => controller.onGetItButtonPressed(),
                              child: Container(
                                width: 325.h,
                                height: 40.h,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xFF76CD00),
                                      appTheme.colorFF478A,
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(20.h),
                                ),
                                child: Center(
                                  child: Text(
                                    'Get it',
                                    style: TextStyleHelper.instance.body14Bold
                                        .copyWith(height: 1.21),
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
          ],
        ),
      ),
    );
  }
}
