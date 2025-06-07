import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_text_link.dart';
import './controller/intermediate_agent_dashboard_controller.dart';
import './widgets/benefit_item_widget.dart';
import './widgets/bonus_card_widget.dart';

class IntermediateAgentDashboardScreen extends StatelessWidget {
  IntermediateAgentDashboardScreen({Key? key}) : super(key: key);

  final IntermediateAgentDashboardController controller =
      Get.put(IntermediateAgentDashboardController());

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
        padding: EdgeInsets.all(15.h),
        child: Column(
          children: [
            SizedBox(height: 67.h),
            _buildAgentTierSection(),
            SizedBox(height: 10.h),
            _buildAgentTierRequirementsLink(),
            SizedBox(height: 33.h),
            _buildShareWithFriendsSection(),
            SizedBox(height: 10.h),
            _buildTodaysIncomeSection(),
            SizedBox(height: 120.h),
          ],
        ),
      ),
    );
  }

  Widget _buildAgentTierSection() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.13, -0.99),
          end: Alignment(-0.13, 0.99),
          colors: [
            Color(0xB216D9C1),
            appTheme.colorB21051,
          ],
        ),
        borderRadius: BorderRadius.circular(10.h),
      ),
      padding: EdgeInsets.all(1.h),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.15, -0.99),
            end: Alignment(-0.15, 0.99),
            colors: [
              Color(0x4C27D8C5),
              appTheme.color4C0F4E,
            ],
          ),
          borderRadius: BorderRadius.circular(9.h),
        ),
        padding: EdgeInsets.all(15.h),
        height: 240.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Agent Tier',
                  style:
                      TextStyleHelper.instance.body15Bold.copyWith(height: 1.2),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgVectorBlueGray400,
                  height: 16.h,
                  width: 16.h,
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Container(
              decoration: BoxDecoration(
                color: appTheme.colorFF12B4,
                borderRadius: BorderRadius.circular(9.h),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 1.h),
              child: Text(
                'Intermediate Agent I',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.whiteCustom, height: 1.17),
              ),
            ),
            SizedBox(height: 18.h),
            _buildTeamStats(),
            Spacer(),
            _buildBenefitsSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildTeamStats() {
    return Column(
      children: [
        _buildStatRow(
          iconPath: ImageConstant.imgGroup2131329967,
          iconSize: Size(17.h, 10.h),
          label: 'Team Count',
          value: 'Reached 5',
        ),
        SizedBox(height: 21.h),
        _buildStatRow(
          iconPath: ImageConstant.imgGroup2131329968,
          iconSize: Size(18.h, 13.h),
          label: 'Team Betting',
          value: 'Reached ₱9000',
        ),
      ],
    );
  }

  Widget _buildStatRow({
    required String iconPath,
    required Size iconSize,
    required String label,
    required String value,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: iconPath,
          height: iconSize.height,
          width: iconSize.width,
        ),
        SizedBox(width: 25.h),
        Text(
          label,
          style: TextStyleHelper.instance.body12Bold
              .copyWith(color: appTheme.colorFF9DA6, height: 1.17),
        ),
        Spacer(),
        Container(
          width: 197.h,
          height: 10.h,
          decoration: BoxDecoration(
            color: appTheme.blackCustom,
            borderRadius: BorderRadius.circular(5.h),
          ),
        ),
        SizedBox(width: 73.h),
        Text(
          value,
          style: TextStyleHelper.instance.label10Bold.copyWith(height: 1.2),
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
            offset: Offset(0, 4.h),
            blurRadius: 4.h,
            spreadRadius: 0,
          ),
        ],
      ),
      padding: EdgeInsets.all(14.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Benefits',
            style: TextStyleHelper.instance.body15Bold.copyWith(height: 1.2),
          ),
          SizedBox(height: 18.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BenefitItemWidget(
                benefitModel: controller.benefitsList[0],
              ),
              BenefitItemWidget(
                benefitModel: controller.benefitsList[1],
              ),
              BenefitItemWidget(
                benefitModel: controller.benefitsList[2],
              ),
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
              SizedBox(width: 55.h),
              CustomImageView(
                imagePath: ImageConstant.imgGroup2131329969,
                height: 5.h,
                width: 35.h,
              ),
              SizedBox(width: 55.h),
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

  Widget _buildAgentTierRequirementsLink() {
    return CustomTextLink(
      text: 'Agent Tier Requirements& Benefits',
      textColor: appTheme.colorFF85D4,
      margin: EdgeInsets.only(bottom: 33.h),
      onTap: () {
        // Handle navigation to requirements page
      },
    );
  }

  Widget _buildShareWithFriendsSection() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(10.h),
      ),
      padding: EdgeInsets.all(15.h),
      child: Column(
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.img23653621,
                height: 62.h,
                width: 62.h,
              ),
              SizedBox(width: 8.h),
              Expanded(
                child: Text(
                  'Share with friends',
                  style: TextStyleHelper.instance.title18Bold
                      .copyWith(height: 1.17),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgSubtractWhiteA700,
                height: 18.h,
                width: 18.h,
              ),
            ],
          ),
          SizedBox(height: 28.h),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF161D,
                    border: Border.all(
                      color: appTheme.colorFF85D4,
                      width: 1.h,
                    ),
                    borderRadius: BorderRadius.circular(6.h),
                  ),
                  padding:
                      EdgeInsets.symmetric(horizontal: 13.h, vertical: 7.h),
                  child: Text(
                    'http://www.jbet88.co?reCode?=arrre...',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFF85D4, height: 1.21),
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
          SizedBox(height: 27.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
      padding: EdgeInsets.all(10.h),
      child: Column(
        children: [
          SizedBox(height: 14.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgVector1,
                height: 30.h,
                width: 20.h,
              ),
              SizedBox(width: 26.h),
              Text(
                'Today',
                style: TextStyleHelper.instance.title20Black
                    .copyWith(height: 1.45),
              ),
              SizedBox(width: 26.h),
              CustomImageView(
                imagePath: ImageConstant.imgVector30x20,
                height: 30.h,
                width: 20.h,
              ),
            ],
          ),
          SizedBox(height: 35.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '₱70,577,000.00',
                style: TextStyleHelper.instance.headline26Bold
                    .copyWith(height: 1.15),
              ),
              SizedBox(width: 17.h),
              CustomImageView(
                imagePath: ImageConstant.imgVectorBlueGray40016x16,
                height: 16.h,
                width: 16.h,
              ),
            ],
          ),
          Text(
            'today\'s income',
            style: TextStyleHelper.instance.body14
                .copyWith(color: appTheme.colorFF8089, height: 1.21),
          ),
          SizedBox(height: 33.h),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 19.h,
              mainAxisSpacing: 19.h,
              childAspectRatio: 158.h / 58.h,
            ),
            itemCount: controller.bonusCards.length,
            itemBuilder: (context, index) {
              return BonusCardWidget(
                bonusCardModel: controller.bonusCards[index],
              );
            },
          ),
          SizedBox(height: 19.h),
          BonusCardWidget(
            bonusCardModel: controller.agentRankingBonus.value!,
            isFullWidth: true,
          ),
        ],
      ),
    );
  }
}
