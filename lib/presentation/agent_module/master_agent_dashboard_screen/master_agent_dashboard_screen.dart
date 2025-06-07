import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_text_link.dart';
import './controller/master_agent_dashboard_controller.dart';
import './widgets/benefit_card_widget.dart';
import './widgets/income_card_widget.dart';
import './widgets/progress_indicator_widget.dart';
import './widgets/social_media_icons_widget.dart';

class MasterAgentDashboardScreen extends StatelessWidget {
  MasterAgentDashboardScreen({Key? key}) : super(key: key);

  final MasterAgentDashboardController controller =
      Get.put(MasterAgentDashboardController());

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
        padding: EdgeInsets.all(16.h),
        child: Column(
          children: [
            _buildAgentTierSection(),
            SizedBox(height: 16.h),
            _buildShareSection(),
            SizedBox(height: 16.h),
            _buildTodaysIncomeSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildAgentTierSection() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.0, -1.0),
          end: Alignment(0.0, 1.0),
          colors: [Color(0xB2FFEA74), Color(0xB2AE7100)],
          stops: [0.0, 1.0],
        ),
        borderRadius: BorderRadius.circular(10.h),
      ),
      padding: EdgeInsets.all(1.h),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.0, -1.0),
            end: Alignment(0.0, 1.0),
            colors: [Color(0x4CFFE100), Color(0x4CFFA500)],
            stops: [0.0, 1.0],
          ),
          borderRadius: BorderRadius.circular(9.h),
        ),
        padding: EdgeInsets.all(16.h),
        child: Column(
          children: [
            _buildAgentTierHeader(),
            SizedBox(height: 16.h),
            ProgressIndicatorWidget(
              iconPath: ImageConstant.imgGroup2131329967Yellow20002,
              title: 'Team Count',
              progress: 0.47,
              progressText: '4/10',
            ),
            SizedBox(height: 16.h),
            ProgressIndicatorWidget(
              iconPath: ImageConstant.imgGroup2131329968Black900,
              title: 'Team Betting',
              progress: 0.52,
              progressText: '₱500/₱1000',
            ),
            SizedBox(height: 16.h),
            ProgressIndicatorWidget(
              iconPath: ImageConstant.imgGroup2131330066,
              title: 'Team Deposit',
              progress: 0.85,
              progressText: '₱900/₱1000',
            ),
            SizedBox(height: 16.h),
            _buildBenefitsSection(),
            SizedBox(height: 16.h),
            CustomTextLink(
              text: 'Agent Tier Requirements& Benefits',
              textColor: appTheme.colorFF009D,
              onTap: () {
                // Handle navigation to agent tier requirements
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAgentTierHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'My Agent Tier',
          style: TextStyleHelper.instance.body15Bold
              .copyWith(color: appTheme.colorFFFFFF),
        ),
        Container(
          decoration: BoxDecoration(
            color: appTheme.colorFFEE8A,
            borderRadius: BorderRadius.circular(9.h),
          ),
          padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 1.h),
          child: Text(
            'Master Agent I',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFFFFFF),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgVectorBlueGray400,
          height: 16.h,
          width: 16.h,
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
            style: TextStyleHelper.instance.body15Bold
                .copyWith(color: appTheme.colorFFFFFF),
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              Expanded(
                child: BenefitCardWidget(
                  backgroundImagePath: ImageConstant.imgFrame2131329752,
                  iconImagePath: ImageConstant.imgTdr22,
                  overlayImagePath: ImageConstant.imgImage1100,
                  badgeImagePath: ImageConstant.imgImage1104,
                  mainText: 'Bet Rebate up to ',
                  highlightText: '1.0%',
                ),
              ),
              SizedBox(width: 16.h),
              Expanded(
                child: BenefitCardWidget(
                  backgroundImagePath: ImageConstant.imgFrame2131329752,
                  iconImagePath: ImageConstant.imgGroup2131329972,
                  mainText: 'Deposit Rebate ',
                  highlightText: '1.1%',
                ),
              ),
              SizedBox(width: 16.h),
              Expanded(
                child: BenefitCardWidget(
                  backgroundImagePath: ImageConstant.imgFrame2131329752,
                  mainText: 'Qualified Bonus ',
                  highlightText: '₱88',
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          _buildNavigationDots(),
        ],
      ),
    );
  }

  Widget _buildNavigationDots() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgPolygon55Yellow20003,
          height: 14.h,
          width: 14.h,
        ),
        SizedBox(width: 8.h),
        CustomImageView(
          imagePath: ImageConstant.imgGroup2131329969,
          height: 5.h,
          width: 35.h,
        ),
        SizedBox(width: 8.h),
        CustomImageView(
          imagePath: ImageConstant.imgPolygon56Yellow20003,
          height: 14.h,
          width: 14.h,
        ),
      ],
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
            children: [
              CustomImageView(
                imagePath: ImageConstant.img23653621,
                height: 62.h,
                width: 62.h,
              ),
              SizedBox(width: 16.h),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Share with friends',
                      style: TextStyleHelper.instance.title18Bold
                          .copyWith(color: appTheme.colorFFFFFF),
                    ),
                    SizedBox(height: 4.h),
                    CustomImageView(
                      imagePath: ImageConstant.imgSubtractWhiteA700,
                      height: 18.h,
                      width: 18.h,
                    ),
                  ],
                ),
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
          SizedBox(height: 16.h),
          SocialMediaIconsWidget(),
        ],
      ),
    );
  }

  Widget _buildTodaysIncomeSection() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF3842,
        borderRadius: BorderRadius.circular(10.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        children: [
          _buildTodaysIncomeHeader(),
          SizedBox(height: 24.h),
          _buildIncomeCardsGrid(),
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
              style: TextStyleHelper.instance.headline26Bold
                  .copyWith(color: appTheme.colorFFFFFF),
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
              .copyWith(color: appTheme.colorFF849F),
        ),
      ],
    );
  }

  Widget _buildIncomeCardsGrid() {
    return Obx(() => GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.h,
            mainAxisSpacing: 16.h,
            childAspectRatio: 1.2,
          ),
          itemCount: controller.incomeCards.length,
          itemBuilder: (context, index) {
            return IncomeCardWidget(
              incomeCard: controller.incomeCards[index],
            );
          },
        ));
  }
}
