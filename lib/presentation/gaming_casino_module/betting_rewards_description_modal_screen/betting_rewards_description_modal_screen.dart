import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/betting_rewards_description_modal_controller.dart';

class BettingRewardsDescriptionModalScreen
    extends GetWidget<BettingRewardsDescriptionModalController> {
  const BettingRewardsDescriptionModalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            // Background Image
            Positioned(
              top: 0,
              left: 0,
              child: CustomImageView(
                imagePath: ImageConstant.imgImage1063962x375,
                height: 962.h,
                width: 375.h,
                fit: BoxFit.cover,
              ),
            ),

            // Dark Overlay
            Positioned(
              top: 0,
              left: 0,
              child: Opacity(
                opacity: 0.5,
                child: Container(
                  height: 957.h,
                  width: 375.h,
                  color: appTheme.colorFF0000,
                ),
              ),
            ),

            // Close Icon
            Positioned(
              top: 567.h,
              left: 167.h,
              child: GestureDetector(
                onTap: () => controller.onClosePressed(),
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup12922,
                  height: 40.h,
                  width: 40.h,
                ),
              ),
            ),

            // Modal Dialog
            Positioned(
              top: 200.h,
              left: 15.h,
              child: Container(
                width: 345.h,
                height: 347.h,
                decoration: BoxDecoration(
                  color: appTheme.colorFFFFFF,
                  borderRadius: BorderRadius.circular(10.h),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Modal Header
                    Padding(
                      padding: EdgeInsets.only(
                        top: 16.h,
                        left: 15.h,
                        right: 15.h,
                      ),
                      child: Center(
                        child: Text(
                          'Description',
                          style: TextStyleHelper.instance.title16BoldArial
                              .copyWith(color: appTheme.colorFF0000),
                        ),
                      ),
                    ),

                    // Subtitle
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15.h,
                        right: 15.h,
                        top: 18.h,
                      ),
                      child: Text(
                        '【he invited users must be qualified users】',
                        style: TextStyleHelper.instance.body12BoldArial
                            .copyWith(color: appTheme.colorFF6E7A),
                      ),
                    ),

                    // Main Content
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15.h,
                        right: 15.h,
                        top: 16.h,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '1 :Qualified users:',
                              style: TextStyleHelper.instance.body14BoldArial,
                            ),
                            TextSpan(
                              text:
                                  'The minimum deposit amount for invitees is ₱200, and the effective betting amount is ₱1000, The invitees need to complete the verification of mobile phone number.',
                              style: TextStyleHelper.instance.body12Arial,
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Remark Section
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15.h,
                        right: 15.h,
                        top: 16.h,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Remark:',
                              style: TextStyleHelper.instance.body14BoldArial,
                            ),
                            TextSpan(
                              text:
                                  ' Once the number of qualified users from the same IP address reaches the limit of 5, subsequent users from the same IP will no longer be counted as qualified users',
                              style: TextStyleHelper.instance.body12Arial,
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Confirm Button
                    Positioned(
                      bottom: 10.h,
                      left: 10.h,
                      right: 10.h,
                      child: Container(
                        margin: EdgeInsets.only(
                          bottom: 10.h,
                          left: 10.h,
                          right: 10.h,
                        ),
                        child: GestureDetector(
                          onTap: () => controller.onConfirmPressed(),
                          child: Container(
                            height: 44.h,
                            decoration: BoxDecoration(
                              color: appTheme.colorFF85D4,
                              borderRadius: BorderRadius.circular(8.h),
                            ),
                            child: Center(
                              child: Text(
                                'Confirm',
                                style: TextStyleHelper.instance.title16BoldArial
                                    .copyWith(color: appTheme.colorFFFFFF),
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

            // Bottom Text (partially visible)
            Positioned(
              top: 815.h,
              left: 34.h,
              child: Text(
                '4. Betting Rewards',
                style: TextStyleHelper.instance.body14BoldArial,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
