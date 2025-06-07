import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_text_link.dart';
import './controller/elite_agent_dashboard_controller.dart';
import './widgets/bonus_card_widget.dart';

class EliteAgentDashboardScreen extends StatelessWidget {
  EliteAgentDashboardScreen({Key? key}) : super(key: key);

  final EliteAgentDashboardController controller =
      Get.put(EliteAgentDashboardController());

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
              SizedBox(height: 16.h),
              _buildAgentRequirementsLink(),
              SizedBox(height: 32.h),
              _buildShareSection(),
              SizedBox(height: 32.h),
              _buildTodaysIncomeSection(),
              SizedBox(height: 120.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAgentTierSection() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0x4CC455F0),
            appTheme.color4CCEA9,
          ],
        ),
        borderRadius: BorderRadius.circular(10.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.colorFF8888,
            blurRadius: 21,
            offset: Offset(0, 4),
          ),
        ],
        border: Border.all(
          width: 1.h,
          color: Color(0xFFE6B572).withAlpha(179),
        ),
      ),
      padding: EdgeInsets.all(16.h),
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
              CustomImageView(
                imagePath: ImageConstant.imgVectorBlueGray400,
                height: 16.h,
                width: 16.h,
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Container(
            decoration: BoxDecoration(
              color: appTheme.colorFFA641,
              borderRadius: BorderRadius.circular(9.h),
            ),
            padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 4.h),
            child: Text(
              'Master Agent I',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
          SizedBox(height: 16.h),
          _buildTeamMetrics(),
          SizedBox(height: 24.h),
          _buildBenefitsSection(),
        ],
      ),
    );
  }

  Widget _buildTeamMetrics() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup2131329967,
                  height: 10.h,
                  width: 17.h,
                ),
                SizedBox(width: 8.h),
                Text(
                  'Team Count',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFF9DA6),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 10.h,
                  width: 197.h,
                  decoration: BoxDecoration(
                    color: appTheme.blackCustom,
                    borderRadius: BorderRadius.circular(5.h),
                  ),
                ),
                SizedBox(width: 8.h),
                Text(
                  'Reached 5',
                  style: TextStyleHelper.instance.label10Bold,
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 16.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup2131329968,
                  height: 13.h,
                  width: 18.h,
                ),
                SizedBox(width: 8.h),
                Text(
                  'Team Betting',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFF9DA6),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 10.h,
                  width: 197.h,
                  decoration: BoxDecoration(
                    color: appTheme.blackCustom,
                    borderRadius: BorderRadius.circular(5.h),
                  ),
                ),
                SizedBox(width: 8.h),
                Text(
                  'Reached ₱9000',
                  style: TextStyleHelper.instance.label10Bold,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildBenefitsSection() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.color4C1014,
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.colorFF8888,
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
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
              _buildBenefitCard(
                imagePath: ImageConstant.imgFrame2131329752,
                overlayImages: [
                  ImageConstant.imgTdr22,
                  ImageConstant.imgImage1100,
                  ImageConstant.imgImage1104,
                ],
                mainText: 'Bet Rebate up to ',
                highlightText: '1.0%',
              ),
              _buildBenefitCard(
                imagePath: ImageConstant.imgFrame2131329752,
                overlayImages: [
                  ImageConstant.imgGroup2131329972,
                ],
                mainText: 'Deposit Rebate ',
                highlightText: '1.1%',
              ),
              _buildBenefitCard(
                imagePath: ImageConstant.imgFrame2131329752,
                overlayImages: [],
                mainText: 'Qualified Bonus ',
                highlightText: '₱88',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBenefitCard({
    required String imagePath,
    required List<String> overlayImages,
    required String mainText,
    required String highlightText,
  }) {
    return Column(
      children: [
        Container(
          height: 81.h,
          width: 118.h,
          child: Stack(
            children: [
              CustomImageView(
                imagePath: imagePath,
                height: 81.h,
                width: 118.h,
                fit: BoxFit.cover,
              ),
              if (overlayImages.isNotEmpty)
                ...overlayImages.asMap().entries.map((entry) {
                  int index = entry.key;
                  String overlayPath = entry.value;
                  return Positioned(
                    top: index == 0 ? 24.h : (index == 1 ? 9.h : 38.h),
                    left: index == 0 ? 4.h : (index == 1 ? 8.h : 41.h),
                    child: CustomImageView(
                      imagePath: overlayPath,
                      height: index == 0 ? 36.h : (index == 1 ? 55.h : 17.h),
                      width: index == 0 ? 38.h : (index == 1 ? 55.h : 18.h),
                    ),
                  );
                }).toList(),
            ],
          ),
        ),
        SizedBox(height: 8.h),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: mainText,
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF9EAA),
              ),
              TextSpan(
                text: highlightText,
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFFFFC6),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildAgentRequirementsLink() {
    return Center(
      child: CustomTextLink(
        text: 'Agent Tier Requirements& Benefits',
        textColor: appTheme.colorFF009D,
        onTap: () {
          // Handle navigation
        },
      ),
    );
  }

  Widget _buildShareSection() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(10.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img23653621,
                    height: 62.h,
                    width: 62.h,
                  ),
                  SizedBox(width: 16.h),
                  Text(
                    'Share with friends',
                    style: TextStyleHelper.instance.title18Bold,
                  ),
                ],
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
                  decoration: BoxDecoration(
                    color: appTheme.colorFF161D,
                    border: Border.all(color: appTheme.colorFF85D4),
                    borderRadius: BorderRadius.circular(6.h),
                  ),
                  padding: EdgeInsets.all(8.h),
                  child: Text(
                    'http://www.jbet88.co?reCode?=arrre...',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFF85D4),
                  ),
                ),
              ),
              SizedBox(width: 8.h),
              CustomImageView(
                imagePath: ImageConstant.imgGroup14499,
                height: 35.h,
                width: 35.h,
              ),
            ],
          ),
          SizedBox(height: 24.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomImageView(
                imagePath: ImageConstant
                    .img6afbb433afc026dcfdf9fbeec26198a2vibericonlogo1,
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
          ),
        ],
      ),
    );
  }

  Widget _buildTodaysIncomeSection() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(10.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        children: [
          _buildTodaysIncomeHeader(),
          SizedBox(height: 24.h),
          Obx(() => GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.h,
                  mainAxisSpacing: 16.h,
                  childAspectRatio: 1.5,
                ),
                itemCount: controller.bonusCards.length,
                itemBuilder: (context, index) {
                  return BonusCardWidget(
                    bonusCard: controller.bonusCards[index],
                  );
                },
              )),
          SizedBox(height: 16.h),
          _buildAgentRankingBonusCard(),
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
            SizedBox(width: 8.h),
            Text(
              'Today',
              style: TextStyleHelper.instance.title20Black,
            ),
            SizedBox(width: 8.h),
            CustomImageView(
              imagePath: ImageConstant.imgVector30x20,
              height: 30.h,
              width: 20.h,
            ),
          ],
        ),
        SizedBox(height: 8.h),
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

  Widget _buildAgentRankingBonusCard() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFC498FA),
            appTheme.colorFF1A68,
          ],
        ),
        borderRadius: BorderRadius.circular(7.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Stack(
        children: [
          Positioned(
            top: 8.h,
            right: 138.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgJb47x49,
              height: 47.h,
              width: 49.h,
            ),
          ),
          Center(
            child: Column(
              children: [
                Text(
                  'Agent Ranking Bonus',
                  style: TextStyleHelper.instance.body12
                      .copyWith(color: appTheme.whiteCustom),
                ),
                SizedBox(height: 4.h),
                Text(
                  '₱ 100,000.00',
                  style: TextStyleHelper.instance.title16Bold
                      .copyWith(color: appTheme.whiteCustom),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
