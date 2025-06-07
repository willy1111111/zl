import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/teams_dashboard_controller.dart';
import './widgets/member_card_widget.dart';

// Modified: Fixed import path

class TeamsDashboardScreenInitialPage extends StatelessWidget {
  TeamsDashboardScreenInitialPage({Key? key}) : super(key: key);

  TeamsDashboardController controller = Get.put(TeamsDashboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.h),
        child: Column(
          children: [
            _buildAgentTierCards(),
            SizedBox(height: 16.h),
            _buildLevelProgressSection(),
            SizedBox(height: 16.h),
            _buildStatisticsSection(),
            SizedBox(height: 16.h),
            _buildFilterControls(),
            SizedBox(height: 16.h),
            Expanded(child: _buildMembersList()),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      logoImagePath: ImageConstant.imgLogowj931,
      currencyAmount: '₱1980.00',
      walletIconPath: ImageConstant.imgGroup736,
      batteryIconPath: ImageConstant.img1LightGreenA700,
    );
  }

  Widget _buildAgentTierCards() {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFFF825B), Color(0xFFFF5070)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(8.h),
            ),
            padding: EdgeInsets.all(16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.img1Black90036x26,
                      height: 36.h,
                      width: 26.h,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgVectorWhiteA70014x14,
                      height: 14.h,
                      width: 14.h,
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                Text(
                  'My Agent Tier',
                  style: TextStyleHelper.instance.body14Regular
                      .copyWith(color: appTheme.whiteCustom),
                ),
                SizedBox(height: 4.h),
                Text(
                  'Junior Agent I',
                  style: TextStyleHelper.instance.title16Bold,
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 16.h),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF07CCFF), Color(0xFF004FF6)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(8.h),
            ),
            padding: EdgeInsets.all(16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFrame2131330282,
                      height: 36.h,
                      width: 26.h,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgVectorWhiteA70014x14,
                      height: 14.h,
                      width: 14.h,
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                Text(
                  'Team Count',
                  style: TextStyleHelper.instance.body14Regular
                      .copyWith(color: appTheme.whiteCustom),
                ),
                SizedBox(height: 4.h),
                Text(
                  '975',
                  style: TextStyleHelper.instance.title20Bold,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLevelProgressSection() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Row(
        children: [
          Container(
            width: 80.h,
            height: 64.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.h),
            ),
            child: Stack(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgUnionLightGreenA700,
                  height: 64.h,
                  width: 80.h,
                  fit: BoxFit.cover,
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Level 1',
                        style: TextStyleHelper.instance.body14Bold,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgFrame2131330282,
                            height: 10.h,
                            width: 7.h,
                          ),
                          SizedBox(width: 4.h),
                          Text(
                            '25',
                            style: TextStyleHelper.instance.body14Bold,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 16.h),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildLevelItem('Level 2', '20', true),
                _buildLevelItem('Level 3', '33', false),
                _buildLevelItem('Level 4', '79', false),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLevelItem(String level, String count, bool hasIndicator) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              level,
              style: TextStyleHelper.instance.body14Regular
                  .copyWith(color: appTheme.colorFF8089),
            ),
            if (hasIndicator) ...[
              SizedBox(width: 4.h),
              Container(
                width: 6.h,
                height: 6.h,
                decoration: BoxDecoration(
                  color: appTheme.colorFFFF44,
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ],
        ),
        SizedBox(height: 4.h),
        Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgFrame2131330282,
              height: 10.h,
              width: 7.h,
            ),
            SizedBox(width: 4.h),
            Text(
              count,
              style: TextStyleHelper.instance.body14Regular
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildStatisticsSection() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildStatItem('Today', '+32'),
          Container(
            width: 1.h,
            height: 40.h,
            color: appTheme.colorFF4146,
          ),
          _buildStatItem('Yesterday', '+39'),
          Container(
            width: 1.h,
            height: 40.h,
            color: appTheme.colorFF4146,
          ),
          _buildStatItem('This month', '+52'),
        ],
      ),
    );
  }

  Widget _buildStatItem(String label, String value) {
    return Column(
      children: [
        Text(
          label,
          style: TextStyleHelper.instance.body14Regular
              .copyWith(color: appTheme.colorFF8089),
        ),
        SizedBox(height: 8.h),
        Text(
          value,
          style: TextStyleHelper.instance.body14Bold,
        ),
      ],
    );
  }

  Widget _buildFilterControls() {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: appTheme.colorFF2528,
            borderRadius: BorderRadius.circular(6.h),
            boxShadow: [
              BoxShadow(
                color: appTheme.blackCustom,
                offset: Offset(0, 4.h),
                blurRadius: 4.h,
              ),
            ],
          ),
          padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.h),
          child: Row(
            children: [
              Text(
                'All',
                style: TextStyleHelper.instance.body13Regular,
              ),
              SizedBox(width: 8.h),
              CustomImageView(
                imagePath: ImageConstant.imgPolygon1,
                height: 11.h,
                width: 13.h,
              ),
            ],
          ),
        ),
        SizedBox(width: 16.h),
        Container(
          decoration: BoxDecoration(
            color: appTheme.colorFF2528,
            borderRadius: BorderRadius.circular(6.h),
            boxShadow: [
              BoxShadow(
                color: appTheme.blackCustom,
                offset: Offset(0, 4.h),
                blurRadius: 4.h,
              ),
            ],
          ),
          padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.h),
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgVectorBlueGray40016x17,
                height: 16.h,
                width: 17.h,
              ),
              SizedBox(width: 8.h),
              Text(
                '2024/08/21 - 2024/08/27',
                style: TextStyleHelper.instance.body13Regular,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMembersList() {
    return Obx(() => ListView.separated(
          itemCount: controller.membersList.length,
          separatorBuilder: (context, index) => SizedBox(height: 16.h),
          itemBuilder: (context, index) {
            return MemberCardWidget(
              memberModel: controller.membersList[index],
            );
          },
        ));
  }
}
