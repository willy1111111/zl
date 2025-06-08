import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/lucky_spin_invitation_guide_controller.dart';
import './widgets/instruction_step_widget.dart';

class LuckySpinInvitationGuideScreen
    extends GetWidget<LuckySpinInvitationGuideController> {
  LuckySpinInvitationGuideScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: CustomAppBar(
        title: 'Lucky Spin',
        hasBackButton: true,
        hasTransparentBackground: true,
        centerTitle: true,
        actions: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgVectorWhiteA70018x18,
                height: 18.h,
                width: 18.h,
              ),
              SizedBox(width: 8.h),
              Text(
                'Rule',
                style: TextStyleHelper.instance.body14Medium,
              ),
              SizedBox(width: 16.h),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildSpinWheelHeader(),
            _buildContentSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildSpinWheelHeader() {
    return Container(
      height: 437.h,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF5AA100),
            appTheme.colorFF0042,
            appTheme.colorFF0027,
          ],
          stops: [0.0, 0.5, 1.0],
        ),
      ),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant
                .img13bfb824593aba1c2fea6fafba4759c27997bb3c4a3bd7qyppfyfw658webp1,
            height: 375.h,
            width: 375.h,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 71.h,
            left: 14.h,
            child: CustomImageView(
              imagePath: ImageConstant
                  .img015b2e1a09d09e1aa24dd5d2582263d5c5d8363db5097akcxogfw658webp1,
              height: 345.h,
              width: 307.h,
            ),
          ),
          Positioned(
            top: 160.h,
            left: 221.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgFc2,
              height: 94.h,
              width: 119.h,
            ),
          ),
          Positioned(
            top: 190.h,
            left: 233.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgImage1108,
              height: 53.h,
              width: 53.h,
            ),
          ),
          Positioned(
            top: 155.h,
            left: 65.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgBaoshi1,
              height: 119.h,
              width: 119.h,
            ),
          ),
          Positioned(
            top: 129.h,
            left: 111.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgImage771,
              height: 157.h,
              width: 197.h,
            ),
          ),
          Positioned(
            top: 201.h,
            left: 58.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup2131330042,
              height: 258.h,
              width: 258.h,
            ),
          ),
          Positioned(
            top: 171.h,
            left: 28.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup2131330058,
              height: 317.h,
              width: 317.h,
            ),
          ),
          Positioned(
            top: 269.h,
            left: 125.h,
            child: Container(
              height: 126.h,
              width: 126.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [appTheme.blackCustom, appTheme.blackCustom],
                ),
                borderRadius: BorderRadius.circular(63.h),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img95x95,
                    height: 81.h,
                    width: 81.h,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgLuckSpin,
                    height: 72.h,
                    width: 42.h,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 256.h,
            left: 184.h,
            child: Text(
              '999.99',
              style: TextStyleHelper.instance.label11Bold,
            ),
          ),
          Positioned(
            top: 254.h,
            left: 201.h,
            child: Text(
              'unknow',
              style: TextStyleHelper.instance.label11Bold,
            ),
          ),
          Positioned(
            top: 78.h,
            left: 36.h,
            child: SizedBox(
              width: 303.h,
              child: Text(
                'Tips for inviting\nfriends to Get ৳500',
                textAlign: TextAlign.center,
                // Modified: Fixed Text.copyWith() to TextStyle.copyWith()
                style: TextStyleHelper.instance.headline30
                    .copyWith(height: 1.0, shadows: [
                  Shadow(
                    offset: Offset(0, 4.h),
                    blurRadius: 8.h,
                    color: Colors.black26,
                  ),
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContentSection() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF1E2024), appTheme.colorFF1E20, Color(0xFF1E2024)],
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.h),
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLogowj932,
            height: 39.h,
            width: 110.h,
          ),
          SizedBox(height: 32.h),
          Obx(() => ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.instructionSteps.length,
                separatorBuilder: (context, index) => SizedBox(height: 32.h),
                itemBuilder: (context, index) {
                  return InstructionStepWidget(
                    instructionStep: controller.instructionSteps[index],
                  );
                },
              )),
        ],
      ),
    );
  }
}
