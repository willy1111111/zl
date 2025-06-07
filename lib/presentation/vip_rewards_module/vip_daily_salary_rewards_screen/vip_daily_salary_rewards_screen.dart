import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_vip_app_bar.dart';
import './controller/vip_daily_salary_rewards_controller.dart';
import './widgets/game_type_item_widget.dart';
import './widgets/vip_level_item_widget.dart';

class VipDailySalaryRewardsScreen
    extends GetWidget<VipDailySalaryRewardsController> {
  VipDailySalaryRewardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(86.h),
        child: CustomVipAppBar(
          title: 'VIP Daily Salary',
          amount: '₱19800.00',
          onLeadingPressed: () => Get.back(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeaderQuote(),
            _buildDescription(),
            _buildGameTypesSection(),
            _buildRewardDetailsSection(),
            _buildBottomDecorations(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderQuote() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.h),
      alignment: Alignment.center,
      child: Text(
        '"The higher the level, the more Daily Salary."',
        style: TextStyleHelper.instance.title16Bold
            .copyWith(color: appTheme.colorFFFFC6, height: 1.125),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildDescription() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      margin: EdgeInsets.only(bottom: 24.h),
      child: RichText(
        text: TextSpan(
          style: TextStyleHelper.instance.body14Bold
              .copyWith(color: appTheme.colorFF8089, height: 1.14),
          children: [
            TextSpan(
              text:
                  'Daily wage bonuses will be awarded based on your daily bet amount (applicable to the game types listed below).\n'
                  'The bonuses for different daily bet amounts vary by level.\n'
                  'You have placed a deposit today. It will refresh at 0:00 every day and is valid for one day. If you do not claim it by ',
            ),
            TextSpan(
              text:
                  '0:00 the next day, it will be considered abandoned and automatically reset to zero',
              style: TextStyleHelper.instance.textStyle9
                  .copyWith(color: appTheme.colorFF51A0),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGameTypesSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        border: Border.all(color: appTheme.colorFF292F),
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Total valid bets applicable range：',
            style: TextStyleHelper.instance.body14Bold
                .copyWith(color: appTheme.whiteCustom),
          ),
          SizedBox(height: 16.h),
          _buildGameTypesGrid(),
        ],
      ),
    );
  }

  Widget _buildGameTypesGrid() {
    return Obx(() => Column(
          children: [
            Row(
              children: List.generate(4, (index) {
                if (index < controller.gameTypes.length) {
                  return Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: index < 3 ? 8.h : 0),
                      child: GameTypeItemWidget(
                        gameTypeItemModel: controller.gameTypes[index],
                      ),
                    ),
                  );
                }
                return SizedBox.shrink();
              }),
            ),
            SizedBox(height: 8.h),
            Row(
              children: List.generate(3, (index) {
                int gameIndex = index + 4;
                if (gameIndex < controller.gameTypes.length) {
                  return Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: index < 2 ? 8.h : 0),
                      child: GameTypeItemWidget(
                        gameTypeItemModel: controller.gameTypes[gameIndex],
                      ),
                    ),
                  );
                }
                return SizedBox.shrink();
              }),
            ),
          ],
        ));
  }

  Widget _buildRewardDetailsSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        border: Border.all(color: appTheme.colorFF292F),
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Column(
        children: [
          _buildRewardHeader(),
          _buildTableHeader(),
          _buildVipLevelsList(),
        ],
      ),
    );
  }

  Widget _buildRewardHeader() {
    return Container(
      height: 40.h,
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle568,
            height: 40.h,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Center(
            child: Text(
              'Reward details',
              style: TextStyleHelper.instance.title16Bold
                  .copyWith(color: appTheme.whiteCustom, shadows: [
                Shadow(
                  offset: Offset(0, 2.h),
                  blurRadius: 2.h,
                  color: appTheme.colorFF0000,
                ),
              ]),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTableHeader() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF76CD00), Color(0xFF478A03)],
        ),
        border: Border.all(color: appTheme.colorFF4279),
      ),
      child: Container(
        height: 50.h,
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border:
                      Border(right: BorderSide(color: appTheme.colorFF4279)),
                ),
                child: Center(
                  child: Text(
                    'VIP level',
                    style: TextStyleHelper.instance.body12Black,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border:
                      Border(right: BorderSide(color: appTheme.colorFF4279)),
                ),
                padding: EdgeInsets.symmetric(horizontal: 8.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgBn01,
                      width: 27.h,
                      height: 21.h,
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      'Valid bet ranges',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.whiteCustom, height: 1.17),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img121x22,
                    width: 22.h,
                    height: 21.h,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    'Get',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.whiteCustom, height: 1.17),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVipLevelsList() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: appTheme.colorFF1517),
        borderRadius: BorderRadius.circular(6.h),
      ),
      child: Obx(() => ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: controller.vipLevels.length,
            separatorBuilder: (context, index) => Container(
              height: 1.h,
              color: appTheme.colorFF1517,
            ),
            itemBuilder: (context, index) {
              return VipLevelItemWidget(
                vipLevelItemModel: controller.vipLevels[index],
                isEvenRow: index % 2 == 0,
              );
            },
          )),
    );
  }

  Widget _buildBottomDecorations() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup1224,
            width: 32.h,
            height: 12.h,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup1224,
            width: 32.h,
            height: 12.h,
          ),
        ],
      ),
    );
  }
}
