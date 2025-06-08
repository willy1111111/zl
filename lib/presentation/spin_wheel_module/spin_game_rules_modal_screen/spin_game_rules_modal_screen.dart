import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/spin_game_rules_modal_controller.dart';

class SpinGameRulesModalScreen extends GetWidget<SpinGameRulesModalController> {
  const SpinGameRulesModalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.transparentCustom,
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: CustomImageView(
              imagePath: ImageConstant.imgImage1137,
              fit: BoxFit.cover,
            ),
          ),

          // Modal Overlay
          Container(
            color: appTheme.blackCustom.withAlpha(204),
            child: GestureDetector(
              onTap: () => controller.closeModal(),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: Stack(
                  children: [
                    // Bottom Sheet Modal
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: GestureDetector(
                        onTap:
                            () {}, // Prevent closing when tapping on modal content
                        child: Container(
                          height: 380.h,
                          decoration: BoxDecoration(
                            color: appTheme.colorFF3F44,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12.h),
                              topRight: Radius.circular(12.h),
                            ),
                          ),
                          child: Stack(
                            children: [
                              // Close Button
                              Positioned(
                                top: 17.h,
                                right: 17.h,
                                child: GestureDetector(
                                  onTap: () => controller.closeModal(),
                                  child: Container(
                                    width: 22.h,
                                    height: 17.h,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgClosesmall,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),

                              // Rule Title
                              Positioned(
                                top: 36.h,
                                left: 24.h,
                                child: Text(
                                  'Rule',
                                  style: TextStyleHelper
                                      .instance.title18BoldSFProText
                                      .copyWith(height: 1.22),
                                ),
                              ),

                              // Rule Content
                              Positioned(
                                top: 75.h,
                                left: 27.h,
                                right: 27.h,
                                child: Container(
                                  height: 225.h,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        _buildRuleItem(
                                          '1.',
                                          'When the accumulated amount reaches {backend configuration amount}, you can start withdrawing money',
                                        ),
                                        SizedBox(height: 12.h),
                                        _buildRuleItem(
                                          '2.',
                                          'Inviting new friends to register will help you withdraw money quickly',
                                        ),
                                        SizedBox(height: 12.h),
                                        _buildRuleItem(
                                          '3.',
                                          'Each user can only help you once at most.',
                                        ),
                                        SizedBox(height: 12.h),
                                        _buildRuleItem(
                                          '4.',
                                          'Each user will receive one free spin per day, and the times do not stack up.',
                                        ),
                                        SizedBox(height: 12.h),
                                        _buildRuleItem(
                                          '5.',
                                          'The event is held every 3 days. The new round will reset all event progress, including the amount you have not withdrawn.',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRuleItem(String number, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          number,
          style: TextStyleHelper.instance.body14SemiBoldArial
              .copyWith(height: 1.14),
        ),
        SizedBox(width: 8.h),
        Expanded(
          child: Text(
            text,
            style: TextStyleHelper.instance.body14RegularArial
                .copyWith(height: 1.14),
          ),
        ),
      ],
    );
  }
}
