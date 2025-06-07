import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_image_view.dart';
import './controller/agent_income_modal_controller.dart';

class AgentIncomeModalScreen extends GetWidget<AgentIncomeModalController> {
  const AgentIncomeModalScreen({Key? key}) : super(key: key);

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
              imagePath: ImageConstant.imgImage1123,
              height: 812.h,
              width: 375.h,
              fit: BoxFit.cover,
            ),

            // Dark Overlay
            Container(
              width: 375.h,
              height: 812.h,
              color: appTheme.blackCustom.withAlpha(204),
            ),

            // Modal Dialog
            Positioned(
              left: 15.h,
              top: 220.h,
              child: Container(
                width: 345.h,
                height: 336.h,
                decoration: BoxDecoration(
                  color: appTheme.colorFF2528,
                  borderRadius: BorderRadius.circular(10.h),
                ),
                child: Stack(
                  children: [
                    // Modal Content
                    Column(
                      children: [
                        // Header
                        Container(
                          padding: EdgeInsets.only(
                            top: 17.h,
                            left: 25.h,
                            right: 25.h,
                            bottom: 35.h,
                          ),
                          child: Text(
                            'Description',
                            style: TextStyleHelper.instance.title16Bold
                                .copyWith(height: 1.19),
                            textAlign: TextAlign.center,
                          ),
                        ),

                        // Content Area
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 25.h),
                            child: Column(
                              children: [
                                // Today Data Section
                                _buildDescriptionItem(
                                  iconPath: ImageConstant.img1Black90015x14,
                                  iconWidth: 14.h,
                                  iconHeight: 15.h,
                                  title: 'Today data',
                                  description:
                                      'It will be updated every 2 hours.',
                                  spacing: 23.h,
                                ),

                                SizedBox(height: 18.h),

                                // Today's Income Section
                                _buildIncomeSection(),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    // Confirm Button
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: Container(
                        width: 345.h,
                        height: 54.h,
                        decoration: BoxDecoration(
                          color: appTheme.colorFF3236,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12.h),
                            bottomRight: Radius.circular(12.h),
                          ),
                        ),
                        child: Center(
                          child: GestureDetector(
                            onTap: () => controller.closeModal(),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 31.h,
                                vertical: 16.h,
                              ),
                              child: Text(
                                'Confirm',
                                style: TextStyleHelper.instance.title16Bold
                                    .copyWith(
                                        color: appTheme.colorFF85D4,
                                        height: 1.19),
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

            // Close Button
            Positioned(
              top: 170.h,
              right: 35.h,
              child: GestureDetector(
                onTap: () => controller.closeModal(),
                child: Container(
                  width: 44.h,
                  height: 44.h,
                  child: Center(
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup848,
                      height: 20.h,
                      width: 20.h,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDescriptionItem({
    required String iconPath,
    required double iconWidth,
    required double iconHeight,
    required String title,
    required String description,
    required double spacing,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 2.h),
          child: CustomImageView(
            imagePath: iconPath,
            width: iconWidth,
            height: iconHeight,
          ),
        ),
        SizedBox(width: spacing),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.whiteCustom, height: 1.21),
              ),
              SizedBox(height: 3.h),
              Text(
                description,
                style: TextStyleHelper.instance.body14.copyWith(height: 1.21),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildIncomeSection() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 2.h),
          child: CustomImageView(
            imagePath: ImageConstant.img1Black900,
            width: 15.h,
            height: 15.h,
          ),
        ),
        SizedBox(width: 22.h),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Today\'s income Includes',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.whiteCustom, height: 1.21),
              ),
              SizedBox(height: 3.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildIncomeItem('·Registration Bonus;'),
                  _buildIncomeItem('·Deposit Bonus;'),
                  _buildIncomeItem('·Qualified Bonus;'),
                  _buildIncomeItem('·Achievement Rewards;'),
                  _buildIncomeItem('·Agent ranking Bonus;'),
                  _buildIncomeItem('·Deposit Rebate Bonus;'),
                  _buildIncomeItem(
                      '·Betting Rebate Bonus (updated the next day)'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildIncomeItem(String text) {
    return Container(
      margin: EdgeInsets.only(bottom: 1.h),
      child: Text(
        text,
        style: TextStyleHelper.instance.body14.copyWith(height: 1.14),
      ),
    );
  }
}
