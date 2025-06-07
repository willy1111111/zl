import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_text_link.dart';
import './controller/senior_agent_dashboard_controller.dart';
import './widgets/benefit_card_widget.dart';
import './widgets/bonus_card_widget.dart';
import './widgets/social_media_widget.dart';

class SeniorAgentDashboardScreen extends StatelessWidget {
  SeniorAgentDashboardScreen({Key? key}) : super(key: key);

  final SeniorAgentDashboardController controller =
      Get.put(SeniorAgentDashboardController());

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
          padding: EdgeInsets.symmetric(horizontal: 15.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 67.h),
              _buildAgentTierSection(),
              SizedBox(height: 5.h),
              _buildAgentTierRequirementsLink(),
              SizedBox(height: 28.h),
              _buildShareWithFriendsSection(),
              SizedBox(height: 10.h),
              _buildTodaysIncomeSection(),
              SizedBox(height: 60.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAgentTierSection() {
    return Container(
      width: 345.h,
      height: 240.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.15, -0.99),
          end: Alignment(0.85, 1.01),
          colors: [Color(0x4C3375FF), Color(0x4C3134CE)],
        ),
        borderRadius: BorderRadius.circular(10.h),
        border: Border.all(
          width: 1.h,
          color: appTheme.colorB23C97,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.colorFF8888,
            spreadRadius: 0,
            blurRadius: 21.h,
            offset: Offset(0, 4.h),
          ),
        ],
      ),
      padding: EdgeInsets.all(15.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'My Agent Tier',
                style: TextStyleHelper.instance.body15BoldArial,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: appTheme.colorFF1997,
                      borderRadius: BorderRadius.circular(9.h),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.h, vertical: 1.h),
                    child: Text(
                      'Senior Agent',
                      style: TextStyleHelper.instance.body12BoldArial
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
          SizedBox(height: 32.h),
          Text(
            'Already reached this Agent Tier',
            style: TextStyleHelper.instance.body14BoldArial
                .copyWith(color: appTheme.colorFF9DA6),
          ),
          SizedBox(height: 20.h),
          Container(
            decoration: BoxDecoration(
              color: appTheme.color4C1014,
              borderRadius: BorderRadius.circular(8.h),
              boxShadow: [
                BoxShadow(
                  color: appTheme.colorFF8888,
                  spreadRadius: 0,
                  blurRadius: 4.h,
                  offset: Offset(0, 4.h),
                ),
              ],
            ),
            padding: EdgeInsets.all(14.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My Benefits',
                  style: TextStyleHelper.instance.body15BoldArial,
                ),
                SizedBox(height: 18.h),
                Obx(() => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        controller.benefitCards.length,
                        (index) => BenefitCardWidget(
                          benefitCard: controller.benefitCards[index],
                        ),
                      ),
                    )),
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
          ),
        ],
      ),
    );
  }

  Widget _buildAgentTierRequirementsLink() {
    return Center(
      child: CustomTextLink(
        text: 'Agent Tier Requirements& Benefits',
        textColor: appTheme.colorFF85D4,
        onTap: () => controller.onAgentTierRequirementsTap(),
      ),
    );
  }

  Widget _buildShareWithFriendsSection() {
    return Container(
      width: 345.h,
      height: 168.h,
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
              Text(
                'Share with friends',
                style: TextStyleHelper.instance.title18BoldArial,
              ),
              Spacer(),
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
                    border: Border.all(color: appTheme.colorFF85D4, width: 1.h),
                    borderRadius: BorderRadius.circular(6.h),
                  ),
                  padding:
                      EdgeInsets.symmetric(horizontal: 13.h, vertical: 7.h),
                  child: Text(
                    'http://www.jbet88.co?reCode?=arrre...',
                    style: TextStyleHelper.instance.body14Arial,
                  ),
                ),
              ),
              SizedBox(width: 12.h),
              CustomImageView(
                imagePath: ImageConstant.imgGroup14499,
                height: 35.h,
                width: 35.h,
                onTap: () => controller.onCopyLinkTap(),
              ),
            ],
          ),
          SizedBox(height: 26.h),
          Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  controller.socialMediaItems.length,
                  (index) => SocialMediaWidget(
                    socialMedia: controller.socialMediaItems[index],
                    onTap: () => controller.onSocialMediaTap(index),
                  ),
                ),
              )),
        ],
      ),
    );
  }

  Widget _buildTodaysIncomeSection() {
    return Container(
      width: 345.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(10.h),
      ),
      padding: EdgeInsets.all(10.h),
      child: Column(
        children: [
          SizedBox(height: 9.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgVector1,
                height: 30.h,
                width: 20.h,
                onTap: () => controller.onPreviousDayTap(),
              ),
              SizedBox(width: 13.h),
              Text(
                'Today',
                style: TextStyleHelper.instance.title20BlackArial
                    .copyWith(color: appTheme.colorFFFFC6),
              ),
              SizedBox(width: 13.h),
              CustomImageView(
                imagePath: ImageConstant.imgVector30x20,
                height: 30.h,
                width: 20.h,
                onTap: () => controller.onNextDayTap(),
              ),
            ],
          ),
          SizedBox(height: 21.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '₱70,577,000.00',
                style: TextStyleHelper.instance.headline26BoldArial,
              ),
              SizedBox(width: 17.h),
              CustomImageView(
                imagePath: ImageConstant.imgVectorBlueGray40016x16,
                height: 16.h,
                width: 16.h,
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Text(
            'today\'s income',
            style: TextStyleHelper.instance.body14Arial
                .copyWith(color: appTheme.colorFF8089),
          ),
          SizedBox(height: 20.h),
          Obx(() => Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: BonusCardWidget(
                          bonusCard: controller.bonusCards[0],
                        ),
                      ),
                      SizedBox(width: 19.h),
                      Expanded(
                        child: BonusCardWidget(
                          bonusCard: controller.bonusCards[1],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 19.h),
                  Row(
                    children: [
                      Expanded(
                        child: BonusCardWidget(
                          bonusCard: controller.bonusCards[2],
                        ),
                      ),
                      SizedBox(width: 19.h),
                      Expanded(
                        child: BonusCardWidget(
                          bonusCard: controller.bonusCards[3],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 19.h),
                  Row(
                    children: [
                      Expanded(
                        child: BonusCardWidget(
                          bonusCard: controller.bonusCards[4],
                        ),
                      ),
                      SizedBox(width: 19.h),
                      Expanded(
                        child: BonusCardWidget(
                          bonusCard: controller.bonusCards[5],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  BonusCardWidget(
                    bonusCard: controller.bonusCards[6],
                    isFullWidth: true,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
