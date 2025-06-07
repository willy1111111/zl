import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/team_hierarchy_modal_controller.dart';

class TeamHierarchyModalScreen extends GetWidget<TeamHierarchyModalController> {
  const TeamHierarchyModalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.blackCustom,
      body: Stack(
        children: [
          // Background Image
          CustomImageView(
            imagePath: ImageConstant.imgImage1124,
            height: Get.height,
            width: Get.width,
            fit: BoxFit.cover,
          ),

          // Black Overlay with opacity
          Opacity(
            opacity: 0.8,
            child: Container(
              height: Get.height,
              width: Get.width,
              color: appTheme.blackCustom,
            ),
          ),

          // Modal Container
          Center(
            child: Container(
              width: Get.width * 0.9,
              margin: EdgeInsets.symmetric(horizontal: 20.h),
              decoration: BoxDecoration(
                color: appTheme.colorFF2528,
                borderRadius: BorderRadius.circular(10.h),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Header with close button
                  _buildModalHeader(),

                  // Hierarchy Chart Container
                  _buildHierarchyChart(),

                  // Explanation Text
                  _buildExplanationText(),

                  // OK Button
                  _buildOkButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildModalHeader() {
    return Container(
      padding: EdgeInsets.all(16.h),
      child: Stack(
        children: [
          Center(
            child: Text(
              'Description',
              style: TextStyleHelper.instance.title16Bold,
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: GestureDetector(
              onTap: () => Get.back(),
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup848,
                height: 20.h,
                width: 20.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHierarchyChart() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF3236,
        borderRadius: BorderRadius.circular(5.h),
      ),
      child: Column(
        children: [
          // YOU Level
          _buildYouLevel(),

          SizedBox(height: 24.h),

          // A Level
          _buildALevel(),

          SizedBox(height: 24.h),

          // B Level
          _buildBLevel(),

          SizedBox(height: 24.h),

          // C Level
          _buildCLevel(),

          SizedBox(height: 16.h),

          // D Level
          _buildDLevel(),
        ],
      ),
    );
  }

  Widget _buildYouLevel() {
    return Center(
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage1111,
            height: 70.h,
            width: 79.h,
          ),
          Positioned(
            top: 24.h,
            left: 20.h,
            child: Container(
              height: 36.h,
              width: 36.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.0, -1.0),
                  end: Alignment(0.0, 1.0),
                  colors: [
                    Color(0xFF6D3CCC),
                    appTheme.colorFFD59E,
                    Color(0xFFE6C7FF)
                  ],
                ),
                borderRadius: BorderRadius.circular(18.h),
              ),
              child: Center(
                child: ShaderMask(
                  shaderCallback: (bounds) => LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFFEBEDFF), Color(0xFF4755EE)],
                  ).createShader(bounds),
                  child: Text(
                    'YOU',
                    style: TextStyleHelper.instance.body14Bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildALevel() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildLevelItem(
            ImageConstant.imgImage1112,
            'A1',
            59.h,
            53.h,
            26.h,
            26.h,
            12.h,
            appTheme.colorFF8225,
            appTheme.colorFFE054,
            appTheme.colorFFFF94),
        _buildLevelItem(
            ImageConstant.imgImage1112,
            'A2',
            59.h,
            53.h,
            26.h,
            26.h,
            12.h,
            appTheme.colorFF8225,
            appTheme.colorFFE054,
            appTheme.colorFFFF94),
      ],
    );
  }

  Widget _buildBLevel() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildLevelItem(
            ImageConstant.imgImage1113,
            'B1',
            42.h,
            38.h,
            22.h,
            22.h,
            8.h,
            appTheme.colorFFBB02,
            appTheme.colorFFFF4E,
            appTheme.colorFFFF9E),
        _buildLevelItem(
            ImageConstant.imgImage1113,
            'B2',
            42.h,
            38.h,
            22.h,
            22.h,
            8.h,
            appTheme.colorFFBB02,
            appTheme.colorFFFF4E,
            appTheme.colorFFFF9E),
        _buildLevelItem(
            ImageConstant.imgImage1113,
            'B3',
            42.h,
            38.h,
            22.h,
            22.h,
            8.h,
            appTheme.colorFFBB02,
            appTheme.colorFFFF4E,
            appTheme.colorFFFF9E),
        _buildLevelItem(
            ImageConstant.imgImage1113,
            'B4',
            42.h,
            38.h,
            22.h,
            22.h,
            8.h,
            appTheme.colorFFBB02,
            appTheme.colorFFFF4E,
            appTheme.colorFFFF9E),
      ],
    );
  }

  Widget _buildCLevel() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildLevelItem(
            ImageConstant.imgImage1114,
            'C1',
            39.h,
            33.h,
            19.h,
            19.h,
            8.h,
            appTheme.colorFF2160,
            appTheme.colorFF3BAC,
            appTheme.colorFFACE9),
        _buildLevelItem(
            ImageConstant.imgImage1114,
            'C2',
            39.h,
            33.h,
            19.h,
            19.h,
            8.h,
            appTheme.colorFF2160,
            appTheme.colorFF3BAC,
            appTheme.colorFFACE9),
        _buildLevelItem(
            ImageConstant.imgImage1114,
            'C3',
            39.h,
            33.h,
            19.h,
            19.h,
            8.h,
            appTheme.colorFF2160,
            appTheme.colorFF3BAC,
            appTheme.colorFFACE9),
        _buildLevelItem(
            ImageConstant.imgImage1114,
            'C4',
            39.h,
            33.h,
            19.h,
            19.h,
            8.h,
            appTheme.colorFF2160,
            appTheme.colorFF3BAC,
            appTheme.colorFFACE9),
        _buildLevelItem(
            ImageConstant.imgImage1114,
            'C5',
            39.h,
            33.h,
            19.h,
            19.h,
            8.h,
            appTheme.colorFF2160,
            appTheme.colorFF3BAC,
            appTheme.colorFFACE9),
        _buildLevelItem(
            ImageConstant.imgImage1114,
            'C6',
            39.h,
            33.h,
            19.h,
            19.h,
            8.h,
            appTheme.colorFF2160,
            appTheme.colorFF3BAC,
            appTheme.colorFFACE9),
        _buildLevelItem(
            ImageConstant.imgImage1114,
            'C7',
            39.h,
            33.h,
            19.h,
            19.h,
            8.h,
            appTheme.colorFF2160,
            appTheme.colorFF3BAC,
            appTheme.colorFFACE9),
        _buildLevelItem(
            ImageConstant.imgImage1114,
            'C8',
            39.h,
            33.h,
            19.h,
            19.h,
            8.h,
            appTheme.colorFF2160,
            appTheme.colorFF3BAC,
            appTheme.colorFFACE9),
      ],
    );
  }

  Widget _buildDLevel() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildLevelItem(
            ImageConstant.imgImage1122,
            'D1',
            28.h,
            26.h,
            16.h,
            16.h,
            4.h,
            appTheme.colorFF0B30,
            appTheme.colorFF34C8,
            appTheme.colorFF58FF),
        _buildLevelItem(
            ImageConstant.imgImage1122,
            'D2',
            28.h,
            26.h,
            16.h,
            16.h,
            4.h,
            appTheme.colorFF0B30,
            appTheme.colorFF34C8,
            appTheme.colorFF58FF),
        _buildLevelItem(
            ImageConstant.imgImage1122,
            'D3',
            28.h,
            26.h,
            16.h,
            16.h,
            4.h,
            appTheme.colorFF0B30,
            appTheme.colorFF34C8,
            appTheme.colorFF58FF),
        _buildLevelItem(
            ImageConstant.imgImage1122,
            'D4',
            28.h,
            26.h,
            16.h,
            16.h,
            4.h,
            appTheme.colorFF0B30,
            appTheme.colorFF34C8,
            appTheme.colorFF58FF),
        _buildLevelItem(
            ImageConstant.imgImage1122,
            'D5',
            28.h,
            26.h,
            16.h,
            16.h,
            4.h,
            appTheme.colorFF0B30,
            appTheme.colorFF34C8,
            appTheme.colorFF58FF),
        _buildLevelItem(
            ImageConstant.imgImage1122,
            'D6',
            28.h,
            26.h,
            16.h,
            16.h,
            4.h,
            appTheme.colorFF0B30,
            appTheme.colorFF34C8,
            appTheme.colorFF58FF),
        _buildLevelItem(
            ImageConstant.imgImage1122,
            'D7',
            28.h,
            26.h,
            16.h,
            16.h,
            4.h,
            appTheme.colorFF0B30,
            appTheme.colorFF34C8,
            appTheme.colorFF58FF),
        _buildLevelItem(
            ImageConstant.imgImage1122,
            'D8',
            28.h,
            26.h,
            16.h,
            16.h,
            4.h,
            appTheme.colorFF0B30,
            appTheme.colorFF34C8,
            appTheme.colorFF58FF),
      ],
    );
  }

  Widget _buildLevelItem(
      String imagePath,
      String label,
      double imageWidth,
      double imageHeight,
      double badgeWidth,
      double badgeHeight,
      double topOffset,
      Color gradientStart,
      Color gradientMiddle,
      Color gradientEnd) {
    return Stack(
      children: [
        CustomImageView(
          imagePath: imagePath,
          height: imageHeight,
          width: imageWidth,
        ),
        Positioned(
          top: topOffset,
          left: (imageWidth - badgeWidth) / 2,
          child: Container(
            height: badgeHeight,
            width: badgeWidth,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.0, -1.0),
                end: Alignment(0.0, 1.0),
                colors: [gradientStart, gradientMiddle, gradientEnd],
              ),
              borderRadius: BorderRadius.circular(badgeHeight / 2),
            ),
            child: Center(
              child: ShaderMask(
                shaderCallback: (bounds) => LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: label.startsWith('A')
                      ? [Color(0xFFFFF8C4), Color(0xFF973722)]
                      : label.startsWith('B')
                          ? [Color(0xFFFBFBFB), Color(0xFF959595)]
                          : [Color(0xFFEED4BF), Color(0xFFDDA67F)],
                ).createShader(bounds),
                child: Text(
                  label,
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.whiteCustom),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildExplanationText() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          _buildExplanationRow(
              'A → YOU: A is your', 'Level 1 Teams（directly invited）'),
          SizedBox(height: 8.h),
          _buildExplanationRow('B → YOU: B is your', 'Level 2 Teams'),
          SizedBox(height: 8.h),
          _buildExplanationRow('C → YOU: C is your', 'Level 3 Teams'),
          SizedBox(height: 8.h),
          _buildExplanationRow('D → YOU: D is your', 'Level 4 Teams'),
          SizedBox(height: 12.h),
          Text(
            '※Team Count：level 1 (A)+level 2 (B)+ level 3 (C)+ level 4(D) Teamss are all your Team Counts',
            style: TextStyleHelper.instance.body12
                .copyWith(color: appTheme.colorFF8089, height: 1.5),
          ),
        ],
      ),
    );
  }

  Widget _buildExplanationRow(String greenText, String greyText) {
    return Row(
      children: [
        Text(
          greenText,
          style: TextStyleHelper.instance.body12Bold
              .copyWith(color: appTheme.colorFF85D4),
        ),
        SizedBox(width: 8.h),
        Expanded(
          child: Text(
            greyText,
            style: TextStyleHelper.instance.body12
                .copyWith(color: appTheme.colorFF8089),
          ),
        ),
      ],
    );
  }

  Widget _buildOkButton() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: appTheme.colorFF3236,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10.h),
          bottomRight: Radius.circular(10.h),
        ),
      ),
      child: GestureDetector(
        onTap: () => Get.back(),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16.h),
          child: Center(
            child: Text(
              'OK',
              style: TextStyleHelper.instance.title16Bold
                  .copyWith(color: appTheme.colorFF85D4),
            ),
          ),
        ),
      ),
    );
  }
}
