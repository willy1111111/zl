import 'package:flutter/material.dart';
import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_app_bar.dart';
import 'controller/j_bet_agent_dashboard_controller.dart';
import 'widgets/bonus_card_widget.dart';
import 'widgets/benefit_item_widget.dart';

class JBetAgentDashboardScreen extends StatelessWidget {
  JBetAgentDashboardScreen({Key? key}) : super(key: key);

  final JBetAgentDashboardController controller =
      Get.put(JBetAgentDashboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: CustomAppBar(
        logoImagePath: ImageConstant.imgLogowj931,
        balanceAmount: '₱1980.00',
        profileIconPath: ImageConstant.imgGroup736,
        batteryIconPath: ImageConstant.img1LightGreenA700,
        statusBarImagePath: ImageConstant.img1,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 67.h),
            _buildAgentTierCard(),
            SizedBox(height: 20.h),
            _buildAgentTierRequirementsLink(),
            SizedBox(height: 32.h),
            _buildShareWithFriendsSection(),
            SizedBox(height: 16.h),
            _buildTodaysIncomeSection(),
            SizedBox(height: 120.h),
          ],
        ),
      ),
    );
  }

  Widget _buildAgentTierCard() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.0, -1.0),
          end: Alignment(0.0, 1.0),
          colors: [
            Color(0xB23C97FF),
            appTheme.colorB2343A,
          ],
        ),
        borderRadius: BorderRadius.circular(10.h),
      ),
      padding: EdgeInsets.all(1.h),
      child: Container(
        height: 240.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.0, -1.0),
            end: Alignment(0.0, 1.0),
            colors: [
              Color(0x4C3375FF),
              appTheme.color4C3134,
            ],
          ),
          borderRadius: BorderRadius.circular(9.h),
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
                Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.h, vertical: 1.h),
                      decoration: BoxDecoration(
                        color: appTheme.colorFF1997,
                        borderRadius: BorderRadius.circular(9.h),
                      ),
                      child: Text(
                        'Senior Agent',
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
              'Already reached this Agent Tier',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.colorFF9DA6),
            ),
            SizedBox(height: 32.h),
            _buildBenefitsSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildBenefitsSection() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF1014,
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.colorFF8888,
            blurRadius: 4.h,
            offset: Offset(0, 4.h),
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
          Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: controller.benefitItems
                    .map((item) => BenefitItemWidget(
                          benefitItem: item,
                        ))
                    .toList(),
              )),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgPolygon55BlueGray400,
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
                imagePath: ImageConstant.imgPolygon56BlueGray400,
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
    return GestureDetector(
      onTap: () => controller.onAgentTierRequirementsPressed(),
      child: Text(
        'Agent Tier Requirements& Benefits',
        style: TextStyleHelper.instance.body14.copyWith(
            color: appTheme.colorFF85D4, decoration: TextDecoration.underline),
      ),
    );
  }

  Widget _buildShareWithFriendsSection() {
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
                  child: Obx(() => Text(
                        controller.jBetAgentDashboardModel.value?.shareLink
                                ?.value ??
                            '',
                        style: TextStyleHelper.instance.body14
                            .copyWith(color: appTheme.colorFF85D4),
                      )),
                ),
              ),
              SizedBox(width: 12.h),
              GestureDetector(
                onTap: () => controller.onCopyLinkPressed(),
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup14499LightGreenA700,
                  height: 35.h,
                  width: 35.h,
                ),
              ),
            ],
          ),
          SizedBox(height: 32.h),
          _buildSocialMediaIcons(),
        ],
      ),
    );
  }

  Widget _buildSocialMediaIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath:
              ImageConstant.img6afbb433afc026dcfdf9fbeec26198a2vibericonlogo1,
          height: 32.h,
          width: 32.h,
        ),
        SizedBox(width: 16.h),
        CustomImageView(
          imagePath: ImageConstant.imgGroup840,
          height: 32.h,
          width: 32.h,
        ),
        SizedBox(width: 16.h),
        CustomImageView(
          imagePath: ImageConstant.imgGroup838,
          height: 32.h,
          width: 32.h,
        ),
        SizedBox(width: 16.h),
        CustomImageView(
          imagePath: ImageConstant.imgGroup12060,
          height: 32.h,
          width: 32.h,
        ),
        SizedBox(width: 16.h),
        CustomImageView(
          imagePath: ImageConstant.imgTwitter1,
          height: 32.h,
          width: 32.h,
        ),
        SizedBox(width: 16.h),
        CustomImageView(
          imagePath: ImageConstant.imgGroup12019,
          height: 32.h,
          width: 32.h,
        ),
      ],
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
              Obx(() => Text(
                    controller.jBetAgentDashboardModel.value?.todaysIncome
                            ?.value ??
                        '',
                    style: TextStyleHelper.instance.headline26Bold,
                  )),
              SizedBox(width: 8.h),
              CustomImageView(
                imagePath: ImageConstant.imgVectorBlueGray40016x16,
                height: 16.h,
                width: 16.h,
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Text(
            'today\'s income',
            style: TextStyleHelper.instance.body14
                .copyWith(color: appTheme.colorFF8089),
          ),
          SizedBox(height: 32.h),
          _buildBonusCardsGrid(),
          SizedBox(height: 16.h),
          _buildAgentRankingBonus(),
        ],
      ),
    );
  }

  Widget _buildBonusCardsGrid() {
    return Obx(() => GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.h,
            mainAxisSpacing: 16.h,
            childAspectRatio: 1.3,
          ),
          itemCount: controller.bonusCards.length,
          itemBuilder: (context, index) {
            return BonusCardWidget(
              bonusCard: controller.bonusCards[index],
            );
          },
        ));
  }

  Widget _buildAgentRankingBonus() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.5, -0.87),
          end: Alignment(0.5, 0.87),
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
          Column(
            children: [
              Obx(() => Text(
                    controller.jBetAgentDashboardModel.value
                            ?.agentRankingBonusTitle?.value ??
                        '',
                    style: TextStyleHelper.instance.body12
                        .copyWith(color: appTheme.whiteCustom),
                  )),
              SizedBox(height: 4.h),
              Obx(() => Text(
                    controller.jBetAgentDashboardModel.value
                            ?.agentRankingBonusAmount?.value ??
                        '',
                    style: TextStyleHelper.instance.title16Bold,
                  )),
            ],
          ),
          Positioned(
            top: 7.h,
            right: 7.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgJb47x49,
              height: 47.h,
              width: 49.h,
            ),
          ),
        ],
      ),
    );
  }
}
