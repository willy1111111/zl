import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_highlight_text.dart';
import '../../../../widgets/custom_image_view.dart';
import '../controller/junior_agent_dashboard_controller.dart';

class AgentTierCardWidget extends StatelessWidget {
  AgentTierCardWidget({Key? key}) : super(key: key);

  var controller = Get.find<JuniorAgentDashboardController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.132, 0),
          end: Alignment(1, 1),
          colors: [
            Color(0x4CD869FF),
            appTheme.colorFF4891,
          ],
        ),
        borderRadius: BorderRadius.circular(10.h),
        border: Border.all(
          color: Color(0xFFB880FB).withAlpha(179),
          width: 1.h,
        ),
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTierHeader(),
          SizedBox(height: 16.h),
          _buildTierBadge(),
          SizedBox(height: 16.h),
          _buildTeamCountProgress(),
          SizedBox(height: 16.h),
          _buildTeamBettingProgress(),
          SizedBox(height: 24.h),
          _buildBenefitsSection(),
        ],
      ),
    );
  }

  Widget _buildTierHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'My Agent Tier',
          style: TextStyleHelper.instance.body15Bold,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgVectorBlueGray400,
          height: 16.h,
          width: 16.h,
        ),
      ],
    );
  }

  Widget _buildTierBadge() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFFFF9E,
        borderRadius: BorderRadius.circular(9.h),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 1.h),
      child: Text(
        'Junior Agent I',
        style: TextStyleHelper.instance.body12
            .copyWith(color: appTheme.whiteCustom),
      ),
    );
  }

  Widget _buildTeamCountProgress() {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgGroup2131329967,
          height: 10.h,
          width: 17.h,
        ),
        SizedBox(width: 12.h),
        SizedBox(
          width: 65.h,
          child: Text(
            'Team Count',
            style: TextStyleHelper.instance.body12
                .copyWith(color: appTheme.colorFF9DA6),
          ),
        ),
        SizedBox(width: 12.h),
        Expanded(
          child: Container(
            height: 10.h,
            decoration: BoxDecoration(
              color: appTheme.blackCustom,
              borderRadius: BorderRadius.circular(5.h),
            ),
            child: Stack(
              children: [
                Container(
                  width: 100.h,
                  height: 10.h,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF0C3BCE), Color(0xFF3AC4FF)],
                    ),
                    borderRadius: BorderRadius.circular(5.h),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 12.h),
        Text(
          '5/10',
          style: TextStyleHelper.instance.label10
              .copyWith(color: appTheme.whiteCustom),
        ),
      ],
    );
  }

  Widget _buildTeamBettingProgress() {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgGroup2131329968,
          height: 13.h,
          width: 18.h,
        ),
        SizedBox(width: 12.h),
        SizedBox(
          width: 70.h,
          child: Text(
            'Team Betting',
            style: TextStyleHelper.instance.body12
                .copyWith(color: appTheme.colorFF9DA6),
          ),
        ),
        SizedBox(width: 12.h),
        Expanded(
          child: Container(
            height: 10.h,
            decoration: BoxDecoration(
              color: appTheme.blackCustom,
              borderRadius: BorderRadius.circular(5.h),
            ),
            child: Stack(
              children: [
                Container(
                  width: 60.h,
                  height: 10.h,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF3617E8), Color(0xFF806AFF)],
                    ),
                    borderRadius: BorderRadius.circular(5.h),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 12.h),
        Text(
          '₱550.00/10000',
          style: TextStyleHelper.instance.label10
              .copyWith(color: appTheme.whiteCustom),
        ),
      ],
    );
  }

  Widget _buildBenefitsSection() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.color4C1014,
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Benefits',
            style: TextStyleHelper.instance.body15Bold,
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildBenefitItem(
                ImageConstant.imgFrame2131329752,
                ImageConstant.imgTdr22,
                'Bet Rebate up to ',
                '0.8%',
                32.h,
                24.h,
              ),
              _buildBenefitItem(
                ImageConstant.imgFrame2131329752,
                ImageConstant.imgGroup2131329972,
                'Deposit Rebate ',
                '1.0%',
                34.h,
                14.h,
              ),
              _buildBenefitItem(
                ImageConstant.imgFrame2131329752,
                ImageConstant.imgImage1100,
                'Qualified Bonus ',
                '₱88',
                36.h,
                9.h,
                badgeImagePath: ImageConstant.imgImage1104,
              ),
            ],
          ),
          SizedBox(height: 16.h),
          _buildNavigationArrows(),
        ],
      ),
    );
  }

  Widget _buildBenefitItem(
    String backgroundImagePath,
    String iconImagePath,
    String mainText,
    String highlightText,
    double iconLeft,
    double iconTop, {
    String? badgeImagePath,
  }) {
    return Column(
      children: [
        Container(
          height: 81.h,
          width: 118.h,
          child: Stack(
            children: [
              CustomImageView(
                imagePath: backgroundImagePath,
                height: 81.h,
                width: 118.h,
              ),
              Positioned(
                left: iconLeft,
                top: iconTop,
                child: CustomImageView(
                  imagePath: iconImagePath,
                  height: badgeImagePath != null
                      ? 55.h
                      : (iconImagePath.contains('tdr2') ? 36.h : 48.h),
                  width: badgeImagePath != null
                      ? 55.h
                      : (iconImagePath.contains('tdr2') ? 38.h : 56.h),
                ),
              ),
              if (badgeImagePath != null)
                Positioned(
                  left: 69.h,
                  top: 38.h,
                  child: CustomImageView(
                    imagePath: badgeImagePath,
                    height: 17.h,
                    width: 18.h,
                  ),
                ),
            ],
          ),
        ),
        SizedBox(height: 8.h),
        CustomHighlightText(
          mainText: mainText,
          highlightText: highlightText,
          textAlign: TextAlign.center,
          fontSize: 12.fSize,
        ),
      ],
    );
  }

  Widget _buildNavigationArrows() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgPolygon55,
          height: 14.h,
          width: 14.h,
        ),
        SizedBox(width: 16.h),
        CustomImageView(
          imagePath: ImageConstant.imgGroup2131329969,
          height: 5.h,
          width: 35.h,
        ),
        SizedBox(width: 16.h),
        CustomImageView(
          imagePath: ImageConstant.imgPolygon56,
          height: 14.h,
          width: 14.h,
        ),
      ],
    );
  }
}
