import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_bonus_grid.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_text_link.dart';
import './controller/max_tier_agent_dashboard_controller.dart';

class MaxTierAgentDashboardScreen extends StatelessWidget {
  MaxTierAgentDashboardScreen({Key? key}) : super(key: key);

  final MaxTierAgentDashboardController controller =
      Get.put(MaxTierAgentDashboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(68.h),
        child: CustomAppBar(
          logoImagePath: ImageConstant.imgLogowj93128x124,
          balanceAmount: '₱1980.00',
          profileIconPath: ImageConstant.imgGroup736,
          batteryIconPath: ImageConstant.img1LightGreenA700,
          statusBarImagePath: ImageConstant.img1Black900,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 67.h),
              _buildAgentTierSection(),
              SizedBox(height: 5.h),
              _buildAgentTierRequirementsLink(),
              SizedBox(height: 32.h),
              _buildShareWithFriendsSection(),
              SizedBox(height: 32.h),
              _buildTodaysIncomeSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAgentTierSection() {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        gradient: LinearGradient(
          colors: [Color(0x4CC455F0), Color(0x4CCEA931)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.colorFF8888,
            blurRadius: 21.h,
            offset: Offset(0, 4.h),
          ),
        ],
        border: Border.all(
          width: 1.h,
          color: appTheme.colorB2E6B5,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'My Agent Tier',
                style: TextStyleHelper.instance.body15Bold,
              ),
              Row(
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.h, vertical: 4.h),
                    decoration: BoxDecoration(
                      color: appTheme.colorFFA641,
                      borderRadius: BorderRadius.circular(9.h),
                    ),
                    child: Text(
                      'Master Agent I',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                  ),
                  SizedBox(width: 8.h),
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorBlueGray400,
                    height: 16.h,
                    width: 16.h,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Text(
            'You have reached the maximum Agent Tier',
            style: TextStyleHelper.instance.body14Bold
                .copyWith(color: appTheme.colorFF849F),
          ),
          SizedBox(height: 16.h),
          _buildBenefitsSection(),
        ],
      ),
    );
  }

  Widget _buildBenefitsSection() {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.color4C1014,
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.colorFF8888,
            blurRadius: 4.h,
            offset: Offset(0, 4.h),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Benefits',
            style: TextStyleHelper.instance.body15Bold,
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              Expanded(
                  child: _buildBenefitCard(
                      'Bet Rebate',
                      '1.0%',
                      ImageConstant.imgFrame2131329752,
                      ImageConstant.imgTdr22)),
              SizedBox(width: 16.h),
              Expanded(
                  child: _buildBenefitCard(
                      'Deposit Rebate',
                      '1.1%',
                      ImageConstant.imgFrame2131329752,
                      ImageConstant.imgGroup2131329972)),
              SizedBox(width: 16.h),
              Expanded(
                  child: _buildBenefitCard('Qualified Bonus', '₱88',
                      ImageConstant.imgFrame2131329752, null)),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgPolygon55,
                height: 14.h,
                width: 14.h,
              ),
              SizedBox(width: 24.h),
              CustomImageView(
                imagePath: ImageConstant.imgGroup2131329969,
                height: 5.h,
                width: 35.h,
              ),
              SizedBox(width: 24.h),
              CustomImageView(
                imagePath: ImageConstant.imgPolygon56,
                height: 14.h,
                width: 14.h,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBenefitCard(
      String label, String value, String backgroundImage, String? iconImage) {
    return Column(
      children: [
        Container(
          height: 81.h,
          width: double.infinity,
          child: Stack(
            children: [
              CustomImageView(
                imagePath: backgroundImage,
                height: 81.h,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              if (iconImage != null)
                Positioned(
                  top: 24.h,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: CustomImageView(
                      imagePath: iconImage,
                      height: 36.h,
                      width: 38.h,
                    ),
                  ),
                ),
              if (label == 'Bet Rebate') ...[
                Positioned(
                  top: 9.h,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: CustomImageView(
                      imagePath: ImageConstant.imgImage1100,
                      height: 55.h,
                      width: 55.h,
                    ),
                  ),
                ),
                Positioned(
                  top: 38.h,
                  right: 12.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgImage1104,
                    height: 17.h,
                    width: 18.h,
                  ),
                ),
              ],
            ],
          ),
        ),
        SizedBox(height: 8.h),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text:
                    '${label.split(' ')[0]} ${label.split(' ')[1]} ${label.contains('up to') ? 'up to ' : ''}',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF9EAA),
              ),
              TextSpan(
                text: value,
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFFFFC6),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildAgentTierRequirementsLink() {
    return Center(
      child: CustomTextLink(
        text: 'Agent Tier Requirements& Benefits',
        textColor: appTheme.colorFF85D4,
        margin: EdgeInsets.only(top: 5.h),
        onTap: () {
          // Handle navigation to agent tier requirements
        },
      ),
    );
  }

  Widget _buildShareWithFriendsSection() {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.img23653621,
                height: 62.h,
                width: 62.h,
              ),
              SizedBox(width: 16.h),
              Expanded(
                child: Text(
                  'Share with friends',
                  style: TextStyleHelper.instance.title18Bold,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgSubtractWhiteA700,
                height: 18.h,
                width: 18.h,
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(8.h),
                  decoration: BoxDecoration(
                    color: appTheme.colorFF161D,
                    border: Border.all(color: appTheme.colorFF85D4),
                    borderRadius: BorderRadius.circular(6.h),
                  ),
                  child: Text(
                    'http://www.jbet88.co?reCode?=arrre...',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFF85D4),
                  ),
                ),
              ),
              SizedBox(width: 12.h),
              CustomImageView(
                imagePath: ImageConstant.imgGroup14499,
                height: 35.h,
                width: 35.h,
              ),
            ],
          ),
          SizedBox(height: 24.h),
          _buildSocialMediaIcons(),
        ],
      ),
    );
  }

  Widget _buildSocialMediaIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath:
              ImageConstant.img6afbb433afc026dcfdf9fbeec26198a2vibericonlogo1,
          height: 32.h,
          width: 32.h,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgGroup12121,
          height: 32.h,
          width: 32.h,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgGroup12122,
          height: 32.h,
          width: 32.h,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgGroup12060,
          height: 32.h,
          width: 32.h,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgTwitter1,
          height: 32.h,
          width: 32.h,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgGroup12124,
          height: 32.h,
          width: 32.h,
        ),
      ],
    );
  }

  Widget _buildTodaysIncomeSection() {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: Column(
        children: [
          _buildTodaysIncomeHeader(),
          SizedBox(height: 24.h),
          Obx(() => CustomBonusGrid(
                bonusItems: controller.bonusItems.value,
                crossAxisSpacing: 16.h,
                mainAxisSpacing: 16.h,
                padding: EdgeInsets.zero,
              )),
          SizedBox(height: 16.h),
          _buildAgentRankingBonus(),
        ],
      ),
    );
  }

  Widget _buildTodaysIncomeHeader() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgVector1,
              height: 30.h,
              width: 20.h,
            ),
            SizedBox(width: 16.h),
            Text(
              'Today',
              style: TextStyleHelper.instance.title20Black,
            ),
            SizedBox(width: 16.h),
            CustomImageView(
              imagePath: ImageConstant.imgVector30x20,
              height: 30.h,
              width: 20.h,
            ),
          ],
        ),
        SizedBox(height: 16.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '₱70,577,000.00',
              style: TextStyleHelper.instance.headline26Bold,
            ),
            SizedBox(width: 8.h),
            CustomImageView(
              imagePath: ImageConstant.imgVectorBlueGray40016x16,
              height: 16.h,
              width: 16.h,
            ),
          ],
        ),
        SizedBox(height: 4.h),
        Text(
          'today\'s income',
          style: TextStyleHelper.instance.body14
              .copyWith(color: appTheme.colorFF8089),
        ),
      ],
    );
  }

  Widget _buildAgentRankingBonus() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.h),
        gradient: LinearGradient(
          colors: [Color(0xFFC498FA), Color(0xFF1A68FE)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 8.h,
            right: 0,
            left: 0,
            child: Center(
              child: CustomImageView(
                imagePath: ImageConstant.imgJb47x49,
                height: 47.h,
                width: 49.h,
              ),
            ),
          ),
          Column(
            children: [
              Text(
                'Agent Ranking Bonus',
                style: TextStyleHelper.instance.body12
                    .copyWith(color: appTheme.whiteCustom),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8.h),
              Text(
                '₱ 100,000.00',
                style: TextStyleHelper.instance.title16Bold
                    .copyWith(color: appTheme.whiteCustom),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
