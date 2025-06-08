import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_rich_text.dart';
import '../controller/bonus_center_controller.dart';
import '../models/bonus_center_model.dart';

class BonusSectionWidget extends StatelessWidget {
  final BonusSectionModel bonusSection;

  const BonusSectionWidget({
    Key? key,
    required this.bonusSection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<BonusCenterController>();

    return Obx(() => Container(
          width: 345.h,
          margin: EdgeInsets.only(bottom: 10.h),
          padding: EdgeInsets.all(12.h),
          decoration: BoxDecoration(
            color: appTheme.colorFF2528,
            borderRadius: BorderRadius.circular(8.h),
            boxShadow: [
              BoxShadow(
                color: appTheme.color888888,
                offset: Offset(0, 4),
                blurRadius: 4,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              SizedBox(height: 12.h),
              Container(
                height: 1.h,
                width: double.infinity,
                color: appTheme.colorFF282F,
              ),
              if (!(bonusSection.isCompact?.value ?? false)) ...[
                SizedBox(height: 16.h),
                _buildContent(controller),
              ],
            ],
          ),
        ));
  }

  Widget _buildHeader() {
    return Row(
      children: [
        if (bonusSection.hasComplexIcon?.value ?? false)
          _buildComplexExperienceIcon()
        else
          CustomImageView(
            imagePath: bonusSection.icon?.value ?? '',
            height: 32.h,
            width: 32.h,
          ),
        SizedBox(width: 8.h),
        Text(
          bonusSection.title?.value ?? '',
          style: TextStyleHelper.instance.title16Bold,
        ),
        Spacer(),
        Text(
          bonusSection.totalAmount?.value ?? '',
          style: TextStyleHelper.instance.body14Bold
              .copyWith(color: appTheme.colorFFFFC6),
        ),
      ],
    );
  }

  Widget _buildComplexExperienceIcon() {
    return Container(
      width: 33.h,
      height: 28.h,
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.img17,
            height: 28.h,
            width: 33.h,
          ),
          CustomImageView(
            imagePath: ImageConstant.img133x67,
            height: 16.h,
            width: 33.h,
            margin: EdgeInsets.only(top: 8.h, left: 2.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.img14,
            height: 17.h,
            width: 33.h,
            margin: EdgeInsets.only(top: 8.h, left: 2.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage381,
            height: 5.h,
            width: 5.h,
            margin: EdgeInsets.only(top: 1.h, left: 19.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage383,
            height: 4.h,
            width: 4.h,
            margin: EdgeInsets.only(top: 4.h, left: 17.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage382,
            height: 4.h,
            width: 4.h,
            margin: EdgeInsets.only(top: 2.h, left: 14.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.img2,
            height: 4.h,
            width: 8.h,
            margin: EdgeInsets.only(top: 20.h, left: 6.h),
          ),
          Positioned(
            top: 13.h,
            left: 7.h,
            child: Container(
              width: 25.h,
              height: 8.h,
              child: Text(
                'Experience',
                style: TextStyleHelper.instance.label4.copyWith(shadows: [
                  Shadow(
                    color: appTheme.colorFF0000,
                    offset: Offset(0, 0),
                    blurRadius: 1,
                  ),
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent(BonusCenterController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (bonusSection.description?.value.isNotEmpty ?? false) ...[
          Text(
            bonusSection.description?.value ?? '',
            style: TextStyleHelper.instance.body14Bold
                .copyWith(color: appTheme.colorFF8089),
          ),
          SizedBox(height: 8.h),
        ],
        if (bonusSection.hasMoneyRainLayout?.value ?? false)
          _buildMoneyRainLayout()
        else
          _buildRegularDetailsLayout(),
        if (bonusSection.hasProgressBar?.value ?? false) ...[
          SizedBox(height: 16.h),
          _buildProgressBar(),
        ],
        if (bonusSection.withdrawalText?.value.isNotEmpty ?? false) ...[
          SizedBox(height: 8.h),
          CustomRichText(
            textSegments: [
              CustomTextSegment(
                text: 'You still need ',
                fontSize: 12.fSize,
                fontWeight: FontWeight.bold,
                color: appTheme.colorFF8089,
              ),
              CustomTextSegment(
                text: '7.64',
                fontSize: 12.fSize,
                fontWeight: FontWeight.bold,
                color: appTheme.colorFFFFC6,
              ),
              CustomTextSegment(
                text: ' to withdraw to Wallet',
                fontSize: 12.fSize,
                fontWeight: FontWeight.bold,
                color: appTheme.colorFF8089,
              ),
            ],
          ),
        ],
        if (bonusSection.hasSocialIcons?.value ?? false) ...[
          SizedBox(height: 8.h),
          _buildSocialIcons(),
        ],
        SizedBox(height: 16.h),
        _buildActionButton(controller),
        if (bonusSection.hasSignInButton?.value ?? false) ...[
          SizedBox(height: 8.h),
          _buildSignInButton(controller),
        ],
        if (bonusSection.eventText?.value.isNotEmpty ?? false) ...[
          SizedBox(height: 8.h),
          Center(
            child: Text(
              bonusSection.eventText?.value ?? '',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ),
        ],
        if (bonusSection.timeText?.value.isNotEmpty ?? false) ...[
          SizedBox(height: 8.h),
          Center(
            child: Text(
              bonusSection.timeText?.value ?? '',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ),
        ],
        if (bonusSection.activityTime?.value.isNotEmpty ?? false) ...[
          SizedBox(height: 8.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgYellow70002,
                height: 17.h,
                width: 16.h,
              ),
              SizedBox(width: 8.h),
              CustomRichText(
                textSegments: [
                  CustomTextSegment(
                    text: 'Activity Time: ',
                    fontSize: 12.fSize,
                    fontWeight: FontWeight.bold,
                    color: appTheme.colorFF8089,
                  ),
                  CustomTextSegment(
                    text: '36Day 22:26',
                    fontSize: 12.fSize,
                    fontWeight: FontWeight.bold,
                    color: appTheme.colorFF51A0,
                  ),
                ],
              ),
            ],
          ),
        ],
      ],
    );
  }

  Widget _buildRegularDetailsLayout() {
    return Column(
      children: bonusSection.details?.map((detail) {
            if (detail.isHighlighted?.value ?? false) {
              return Container(
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 8.h),
                padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.h),
                decoration: BoxDecoration(
                  color: appTheme.colorFF1E20,
                  borderRadius: BorderRadius.circular(8.h),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      detail.label?.value ?? '',
                      style: TextStyleHelper.instance.body14Bold
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                    Text(
                      detail.amount?.value ?? '',
                      style: TextStyleHelper.instance.body14Bold
                          .copyWith(color: appTheme.colorFF85D4),
                    ),
                  ],
                ),
              );
            } else {
              return Padding(
                padding: EdgeInsets.only(bottom: 8.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: CustomRichText(
                        textSegments: _parseDetailText(
                            detail.label?.value ?? '',
                            detail.amount?.value ?? ''),
                      ),
                    ),
                    if (!_isInlineAmount(detail.label?.value ?? ''))
                      Text(
                        detail.amount?.value ?? '',
                        style: TextStyleHelper.instance.body14Bold
                            .copyWith(color: appTheme.colorFF85D4),
                      ),
                  ],
                ),
              );
            }
          }).toList() ??
          [],
    );
  }

  Widget _buildMoneyRainLayout() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: bonusSection.details?.map((detail) {
            return Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img761,
                  height: 28.h,
                  width: 29.h,
                ),
                SizedBox(height: 4.h),
                Text(
                  detail.label?.value ?? '',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFF8089),
                ),
                Text(
                  detail.amount?.value ?? '',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFF85D4),
                ),
              ],
            );
          }).toList() ??
          [],
    );
  }

  Widget _buildProgressBar() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 290.h,
              height: 8.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF3451,
                borderRadius: BorderRadius.circular(4.h),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.colorFF0000,
                    offset: Offset(0, 1),
                    blurRadius: 1,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Container(
                    width: (290.h * (bonusSection.progressValue?.value ?? 0)),
                    height: 8.h,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF85D420), Color(0xFF8EFD00)],
                      ),
                      borderRadius: BorderRadius.circular(4.h),
                    ),
                  ),
                  Positioned(
                    right: (290.h *
                            (1 - (bonusSection.progressValue?.value ?? 0))) -
                        7.h,
                    top: -3.h,
                    child: Container(
                      width: 14.h,
                      height: 14.h,
                      decoration: BoxDecoration(
                        color: appTheme.colorFFA0FF,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: appTheme.colorFFE5FF,
                            offset: Offset(1, 1),
                            blurRadius: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              '212',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(right: 80.h),
            child: Text(
              bonusSection.progressText?.value ?? '',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSocialIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgGroup13079,
          height: 32.h,
          width: 32.h,
        ),
        SizedBox(width: 40.h),
        CustomImageView(
          imagePath: ImageConstant.imgSocialMedia,
          height: 32.h,
          width: 32.h,
        ),
      ],
    );
  }

  Widget _buildActionButton(BonusCenterController controller) {
    return GestureDetector(
      onTap: () => controller
          .onSectionButtonPressed(bonusSection.buttonAction?.value ?? ''),
      child: Container(
        width: double.infinity,
        height: 36.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF2B32,
          borderRadius: BorderRadius.circular(18.h),
        ),
        child: Center(
          child: Text(
            bonusSection.buttonText?.value ?? '',
            style: TextStyleHelper.instance.body14Bold
                .copyWith(color: appTheme.colorFF85D4),
          ),
        ),
      ),
    );
  }

  Widget _buildSignInButton(BonusCenterController controller) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () => controller.onSignInPressed(),
        child: Container(
          width: 80.h,
          height: 30.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF76CD01), Color(0xFF498D03)],
            ),
            borderRadius: BorderRadius.circular(15.h),
          ),
          child: Center(
            child: Text(
              'Sign in',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
        ),
      ),
    );
  }

  bool _isInlineAmount(String label) {
    return label.contains('：') || label.contains(':');
  }

  List<CustomTextSegment> _parseDetailText(String label, String amount) {
    if (label.contains('：') || label.contains(':')) {
      List<String> parts = label.split(RegExp(r'[：:]'));
      return [
        CustomTextSegment(
          text: '${parts[0]}：',
          fontSize: 14.fSize,
          fontWeight: FontWeight.bold,
          color: appTheme.colorFF8089,
        ),
        CustomTextSegment(
          text: amount,
          fontSize: 14.fSize,
          fontWeight: FontWeight.bold,
          color: appTheme.colorFF85D4,
        ),
      ];
    } else {
      return [
        CustomTextSegment(
          text: label,
          fontSize: 14.fSize,
          fontWeight: FontWeight.bold,
          color: appTheme.colorFF8089,
        ),
      ];
    }
  }
}
