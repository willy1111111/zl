import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/agent_income_overview_controller.dart';
import './widgets/income_card_widget.dart';

class AgentIncomeOverviewScreen
    extends GetWidget<AgentIncomeOverviewController> {
  const AgentIncomeOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            // Background Image
            Positioned.fill(
              child: CustomImageView(
                imagePath: ImageConstant.imgImage956,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            // Modal Overlay
            Positioned.fill(
              child: Container(
                color: appTheme.blackCustom.withAlpha(128),
                child: _buildMainContent(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMainContent() {
    return Positioned(
      left: 16.h,
      top: 153.h,
      child: Container(
        width: 343.h,
        height: 516.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF25282D), Color(0xFF1E2024)],
          ),
          borderRadius: BorderRadius.circular(20.h),
          boxShadow: [
            BoxShadow(
              color: appTheme.color888888,
              offset: Offset(0, 4.h),
              blurRadius: 4.h,
            ),
          ],
        ),
        child: Stack(
          children: [
            // Close Button
            Positioned(
              top: 80.h,
              right: 19.h,
              child: GestureDetector(
                onTap: () => Get.back(),
                child: Container(
                  width: 20.h,
                  height: 20.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGroup848,
                    width: 20.h,
                    height: 20.h,
                  ),
                ),
              ),
            ),

            // Header Images
            Positioned(
              top: 61.h,
              left: 120.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgImage360,
                width: 136.h,
                height: 78.h,
              ),
            ),

            Positioned(
              top: 106.h,
              left: 19.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgImage540,
                width: 338.h,
                height: 78.h,
              ),
            ),

            // Title
            Positioned(
              top: 124.h,
              left: 67.h,
              child: Container(
                width: 241.h,
                height: 18.h,
                child: ShaderMask(
                  shaderCallback: (bounds) => LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFFFFFBDB), Color(0xFFFFC82F)],
                  ).createShader(bounds),
                  child: Text(
                    'Agent 7 major income',
                    style: TextStyleHelper.instance.title20BlackArial
                        .copyWith(height: 0.9),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ),

            // Green Line
            Positioned(
              top: 34.h,
              left: 15.h,
              child: Container(
                width: 5.h,
                height: 32.h,
                color: appTheme.colorFF85D4,
              ),
            ),

            // Recommendation Text
            Positioned(
              top: 28.h,
              left: 30.h,
              child: Container(
                width: 137.h,
                height: 20.h,
                child: Text(
                  'Recommend friends',
                  style: TextStyleHelper.instance.title16MediumArial
                      .copyWith(height: 1.19),
                  textAlign: TextAlign.left,
                ),
              ),
            ),

            Positioned(
              top: 50.h,
              left: 30.h,
              child: Container(
                width: 215.h,
                height: 20.h,
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    style: TextStyleHelper.instance.title16Arial
                        .copyWith(height: 1.25),
                    children: [
                      TextSpan(
                        text: 'To join ',
                        style: TextStyleHelper.instance.bodyTextMedium,
                      ),
                      TextSpan(
                        text: 'Jbet88',
                        style: TextStyleHelper.instance.bodyTextBold
                            .copyWith(color: appTheme.colorFFFFC6),
                      ),
                      TextSpan(
                        text: ' and Earn money',
                        style: TextStyleHelper.instance.bodyTextMedium,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Income Cards List
            Positioned(
              top: 200.h,
              left: 15.h,
              child: Container(
                width: 313.h,
                child: Obx(() => ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: controller.incomeItems.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(
                              bottom: index < controller.incomeItems.length - 1
                                  ? 5.h
                                  : 0),
                          child: IncomeCardWidget(
                            incomeItem: controller.incomeItems[index],
                          ),
                        );
                      },
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
