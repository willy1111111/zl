import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/congratulations_reward_controller.dart';
import './widgets/achievement_item_widget.dart';

class CongratulationsRewardScreen extends StatelessWidget {
  CongratulationsRewardScreen({Key? key}) : super(key: key);

  final CongratulationsRewardController controller =
      Get.put(CongratulationsRewardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: Container(
        width: double.maxFinite,
        height: SizeUtils.height,
        child: Stack(
          children: [
            // Background Glow Effect
            Positioned(
              top: 189.h,
              left: 121.h,
              child: Container(
                width: 143.h,
                height: 143.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFFD3F760), Color(0xFF8CF60A)],
                  ),
                  borderRadius: BorderRadius.circular(71.5.h),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.colorFF8888,
                      offset: Offset(0, 4.h),
                      blurRadius: 95.h,
                    ),
                  ],
                ),
              ),
            ),

            // Main Dashboard Background with Achievement List
            Positioned(
              top: 216.h,
              left: 19.h,
              child: Container(
                width: 340.h,
                height: 669.h,
                decoration: BoxDecoration(
                  color: appTheme.color300303,
                  border: Border.all(color: appTheme.color458E8E, width: 1.h),
                  borderRadius: BorderRadius.circular(10.h),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.colorFF8888,
                      offset: Offset(0, 4.h),
                      blurRadius: 11.h,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.h),
                  child: Obx(() => ListView.separated(
                        itemCount: controller.achievementList.length,
                        separatorBuilder: (context, index) => Container(
                          width: 279.h,
                          height: 1.h,
                          color: appTheme.colorFF4045,
                          margin: EdgeInsets.symmetric(vertical: 16.h),
                        ),
                        itemBuilder: (context, index) {
                          return AchievementItemWidget(
                            achievementModel: controller.achievementList[index],
                            onClaimTap: () => controller.onClaimTap(index),
                            onInviteTap: () => controller.onInviteTap(index),
                          );
                        },
                      )),
                ),
              ),
            ),

            // Top App Bar
            Positioned(
              top: 0,
              left: 0,
              child: CustomAppBar(
                logoImagePath: ImageConstant.imgLogowj93128x124,
                balanceAmount: '₱1980.00',
                profileIconPath: ImageConstant.imgGroup736,
                batteryIconPath: ImageConstant.img1LightGreenA700,
              ),
            ),

            // Countdown Section
            Positioned(
              top: 146.h,
              left: 13.h,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'countdown: ',
                      style: TextStyleHelper.instance.body12
                          .copyWith(color: appTheme.colorFF8089),
                    ),
                    TextSpan(
                      text: '22days 22hr 9min 30 sec',
                      style: TextStyleHelper.instance.body14Bold
                          .copyWith(color: appTheme.colorFF85D4),
                    ),
                  ],
                ),
              ),
            ),

            // Rules Section
            Positioned(
              top: 140.h,
              right: 16.h,
              child: Column(
                children: [
                  Container(
                    width: 16.h,
                    height: 19.h,
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: appTheme.colorFFFFC6, width: 1.h),
                      borderRadius: BorderRadius.circular(8.h),
                    ),
                    child: Center(
                      child: Text(
                        '?',
                        style: TextStyleHelper.instance.body12Black,
                      ),
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    'rules',
                    style: TextStyleHelper.instance.label10
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                ],
              ),
            ),

            // Progress Text
            Positioned(
              top: 186.h,
              left: 18.h,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'we\'re ',
                      style: TextStyleHelper.instance.label10
                          .copyWith(color: appTheme.colorFF8384),
                    ),
                    TextSpan(
                      text: '5 missions short of completion.',
                      style: TextStyleHelper.instance.label10
                          .copyWith(color: appTheme.colorFFFFC6),
                    ),
                  ],
                ),
              ),
            ),

            // Congratulations Modal Overlay
            Obx(() => controller.showCongratulationsModal.value
                ? _buildCongratulationsModal()
                : SizedBox.shrink()),
          ],
        ),
      ),
    );
  }

  Widget _buildCongratulationsModal() {
    return Container(
      width: double.maxFinite,
      height: SizeUtils.height,
      color: Colors.black54,
      child: Stack(
        children: [
          // Background Images
          Positioned(
            top: 79.h,
            left: 0,
            child: CustomImageView(
              imagePath: ImageConstant.img2281x375,
              height: 281.h,
              width: 375.h,
            ),
          ),
          Positioned(
            top: 300.h,
            left: 0,
            child: CustomImageView(
              imagePath: ImageConstant.img1375x375,
              height: 375.h,
              width: 375.h,
            ),
          ),

          // Congratulations Banner
          Positioned(
            top: 88.h,
            left: 119.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgImage360,
              height: 78.h,
              width: 136.h,
            ),
          ),
          Positioned(
            top: 133.h,
            left: 38.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgImage540,
              height: 78.h,
              width: 298.h,
            ),
          ),

          // Congratulations Text
          Positioned(
            top: 144.h,
            left: 91.h,
            child: ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFFFFBDB), Color(0xFFFFC82F)],
              ).createShader(bounds),
              child: Text(
                'Congratulations!',
                style:
                    TextStyleHelper.instance.headline26.copyWith(height: 1.15),
              ),
            ),
          ),

          // Main Modal
          Positioned(
            top: 159.h,
            left: 24.h,
            child: Container(
              width: 327.h,
              height: 357.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF1E20,
                borderRadius: BorderRadius.circular(12.h),
              ),
              child: Stack(
                children: [
                  // Glow Effect
                  Positioned(
                    top: 247.h,
                    left: 0,
                    child: Container(
                      width: 327.h,
                      height: 110.h,
                      decoration: BoxDecoration(
                        color: appTheme.color5954E7,
                        borderRadius: BorderRadius.circular(163.5.h),
                        boxShadow: [
                          BoxShadow(
                            color: appTheme.colorFF8888,
                            offset: Offset(0, 4.h),
                            blurRadius: 180.h,
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Crown/Stars Image
                  Positioned(
                    top: 25.h,
                    left: 80.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgF1,
                      height: 165.h,
                      width: 165.h,
                    ),
                  ),

                  // Money Stack Images
                  Positioned(
                    top: 47.h,
                    left: 117.h,
                    child: CustomImageView(
                      imagePath: ImageConstant
                          .imgB928f94165e9728829ff07d0c5d4434611caf4103b62867w8is,
                      height: 99.h,
                      width: 99.h,
                    ),
                  ),
                  Positioned(
                    top: 61.h,
                    left: 98.h,
                    child: CustomImageView(
                      imagePath: ImageConstant
                          .imgB928f94165e9728829ff07d0c5d4434611caf4103b62867w8is,
                      height: 99.h,
                      width: 99.h,
                    ),
                  ),

                  // Amount Text
                  Positioned(
                    top: 160.h,
                    left: 103.h,
                    child: Text(
                      '₱388.00',
                      style: TextStyleHelper.instance.headline32Bold
                          .copyWith(height: 1.16),
                    ),
                  ),

                  // Description Text
                  Positioned(
                    top: 207.h,
                    left: 45.h,
                    child: Container(
                      width: 234.h,
                      child: Text(
                        'Congratulations on inviting 10 qualified users and receiving a wealth bonus.',
                        textAlign: TextAlign.center,
                        style: TextStyleHelper.instance.title16Bold
                            .copyWith(color: appTheme.colorFFE1E1, height: 1.5),
                      ),
                    ),
                  ),

                  // Confirm Button
                  Positioned(
                    top: 293.h,
                    left: 15.h,
                    child: GestureDetector(
                      onTap: () => controller.onConfirmTap(),
                      child: Container(
                        width: 296.h,
                        height: 50.h,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xFF76CD00), Color(0xFF478A03)],
                          ),
                          borderRadius: BorderRadius.circular(25.h),
                        ),
                        child: Center(
                          child: Text(
                            'Confirm',
                            style: TextStyleHelper.instance.title16Bold
                                .copyWith(color: appTheme.whiteCustom),
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
    );
  }
}
