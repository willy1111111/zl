import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/referral_bonus_dialog_controller.dart';

class ReferralBonusDialogScreen
    extends GetWidget<ReferralBonusDialogController> {
  const ReferralBonusDialogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            children: [
              // Background Gaming Interface
              Positioned.fill(
                child: CustomImageView(
                  imagePath: ImageConstant.imgImage1137,
                  height: double.maxFinite,
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                ),
              ),

              // Dark Overlay
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    color: appTheme.blackCustom.withAlpha(153),
                  ),
                ),
              ),

              // Character Avatar
              Positioned(
                top: 231.h,
                left: 148.h,
                child: CustomImageView(
                  imagePath: ImageConstant.imgImage,
                  height: 80.h,
                  width: 80.h,
                  radius: BorderRadius.circular(40.h),
                ),
              ),

              // Main Dialog
              Positioned(
                top: 271.h,
                left: 15.h,
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
                  child: Column(
                    children: [
                      // Dialog Header
                      Padding(
                        padding: EdgeInsets.only(
                          top: 44.h,
                          left: 16.h,
                          right: 16.h,
                        ),
                        child: Text(
                          'Helping you succeed',
                          style: TextStyleHelper.instance.title16Bold
                              .copyWith(color: appTheme.whiteCustom),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      SizedBox(height: 24.h),

                      // Bonus Amount Section
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgGroup12734,
                            height: 38.h,
                            width: 40.h,
                          ),
                          SizedBox(width: 12.h),
                          Obx(
                            () => Text(
                              controller.referralBonusDialogModel.value
                                      ?.bonusAmount?.value ??
                                  '+ ₱1500',
                              style: TextStyleHelper.instance.headline32Black,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 24.h),

                      // Referral Text
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: TextStyleHelper.instance.body14
                                .copyWith(height: 1.3),
                            children: [
                              TextSpan(
                                text: 'you Invite new friends',
                                style: TextStyleHelper.instance.textStyle24,
                              ),
                              TextSpan(
                                text: ' [+99*****39 ]',
                                style: TextStyleHelper.instance.textStyle24
                                    .copyWith(color: appTheme.colorFFFFF4),
                              ),
                              TextSpan(
                                text:
                                    ' to register and recharge to help you withdraw money',
                                style: TextStyleHelper.instance.textStyle24,
                              ),
                              TextSpan(
                                text: ' [0.900]',
                                style: TextStyleHelper.instance.textStyle24
                                    .copyWith(color: appTheme.colorFFFFF4),
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 32.h),

                      // Action Button
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.h),
                        child: GestureDetector(
                          onTap: () => controller.onGetBonusTap(),
                          child: Container(
                            width: double.maxFinite,
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
                                style: TextStyleHelper.instance.body14Bold2,
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
      ),
    );
  }
}
