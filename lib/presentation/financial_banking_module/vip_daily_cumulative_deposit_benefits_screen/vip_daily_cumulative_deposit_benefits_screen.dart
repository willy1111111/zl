import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/vip_daily_cumulative_deposit_benefits_controller.dart';
import './widgets/vip_level_card_widget.dart';

class VipDailyCumulativeDepositBenefitsScreen
    extends GetWidget<VipDailyCumulativeDepositBenefitsController> {
  const VipDailyCumulativeDepositBenefitsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: 'Daily Cumulative Deposit',
      height: CustomAppBarHeight.standard,
      showBalance: true,
      balanceAmount: '₱1980.00',
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildStatusBar(),
          _buildMainContent(),
        ],
      ),
    );
  }

  Widget _buildStatusBar() {
    return Container(
      width: double.maxFinite,
      height: 13.h,
      child: CustomImageView(
        imagePath: ImageConstant.img1,
        height: 13.h,
        width: 356.h,
      ),
    );
  }

  Widget _buildMainContent() {
    return Padding(
      padding: EdgeInsets.all(16.h),
      child: Column(
        children: [
          _buildCurrentVipStatusCard(),
          SizedBox(height: 16.h),
          _buildYesterdayBonusCard(),
          SizedBox(height: 16.h),
          _buildBenefitsHeader(),
          SizedBox(height: 16.h),
          _buildVipBenefitsInfo(),
          SizedBox(height: 16.h),
          _buildVipLevelCardsGrid(),
          SizedBox(height: 80.h),
        ],
      ),
    );
  }

  Widget _buildCurrentVipStatusCard() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildVipBadgeSection(),
              SizedBox(width: 16.h),
              _buildStatusInfo(),
            ],
          ),
          SizedBox(height: 16.h),
          _buildInfoMessage(),
        ],
      ),
    );
  }

  Widget _buildVipBadgeSection() {
    return Container(
      width: 230.h,
      height: 165.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF1E20,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage244,
            width: 141.h,
            height: 165.h,
          ),
          Positioned(
            top: 8.h,
            left: 8.h,
            right: 8.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgIconvip1,
                      width: 56.h,
                      height: 56.h,
                    ),
                    SizedBox(width: 8.h),
                    Text(
                      'VIP1',
                      style: TextStyleHelper.instance.body14Bold
                          .copyWith(color: appTheme.blackCustom),
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                Text(
                  '₱10.00',
                  style: TextStyleHelper.instance.headline24Black
                      .copyWith(color: appTheme.blackCustom),
                ),
                SizedBox(height: 8.h),
                Text(
                  'MAX',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.blackCustom),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 8.h,
            left: 8.h,
            right: 8.h,
            child: _buildDepositTable(),
          ),
        ],
      ),
    );
  }

  Widget _buildDepositTable() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Cumulative Deposit',
              style: TextStyleHelper.instance.body12,
            ),
            Text(
              'Get',
              style: TextStyleHelper.instance.body12,
            ),
          ],
        ),
        SizedBox(height: 4.h),
        _buildDepositRow('₱150', '₱2.00'),
        _buildDepositRow('₱250', '₱4.00'),
        _buildDepositRow('₱500', '₱6.00'),
      ],
    );
  }

  Widget _buildDepositRow(String deposit, String reward) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            deposit,
            style: TextStyleHelper.instance.body12,
          ),
          Text(
            reward,
            style: TextStyleHelper.instance.body12,
          ),
        ],
      ),
    );
  }

  Widget _buildStatusInfo() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildStatusItem('Current VIP：', 'VIP1', appTheme.colorFFFFC6),
          SizedBox(height: 12.h),
          _buildStatusItem(
              'Total bets placed today：', '₱150.50', appTheme.whiteCustom),
          SizedBox(height: 12.h),
          _buildStatusItem(
              'Estimated cashback today：', '₱2.90', appTheme.whiteCustom),
          SizedBox(height: 16.h),
          CustomButton(
            text: 'Deposit Now',
            variant: CustomButtonVariant.gradient,
            onPressed: () {
              controller.onDepositNowPressed();
            },
          ),
        ],
      ),
    );
  }

  Widget _buildStatusItem(String label, String value, Color valueColor) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyleHelper.instance.body12,
        ),
        SizedBox(height: 4.h),
        Text(
          value,
          style: TextStyleHelper.instance.body14Bold,
        ),
      ],
    );
  }

  Widget _buildInfoMessage() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgVectorLightGreenA70014x14,
          width: 14.h,
          height: 14.h,
        ),
        SizedBox(width: 8.h),
        Expanded(
          child: Text(
            'If you recharge an additional ₱150, you are expected to receive ₱4.00',
            style: TextStyleHelper.instance.body12
                .copyWith(color: appTheme.whiteCustom, height: 1.5),
          ),
        ),
      ],
    );
  }

  Widget _buildYesterdayBonusCard() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.img,
            width: 51.h,
            height: 40.h,
          ),
          SizedBox(width: 16.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bonus From Yesterday:',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.whiteCustom),
                ),
                SizedBox(height: 4.h),
                Text(
                  '₱4933.70',
                  style: TextStyleHelper.instance.title16Bold
                      .copyWith(color: appTheme.colorFFFFC6),
                ),
              ],
            ),
          ),
          CustomButton(
            text: 'Received',
            variant: CustomButtonVariant.grayGradient,
            onPressed: () {
              controller.onReceivedPressed();
            },
          ),
        ],
      ),
    );
  }

  Widget _buildBenefitsHeader() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF0C5D,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8.h),
          topRight: Radius.circular(8.h),
        ),
      ),
      padding: EdgeInsets.all(16.h),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle620,
            width: 276.h,
            height: 60.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'VIP Daily Cumulative Deposit ',
                      style: TextStyleHelper.instance.title16Bold,
                    ),
                    TextSpan(
                      text: 'Benefits',
                      style: TextStyleHelper.instance.title16Bold,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                'The higher the level, the more\nthe Cumulative Deposit bonus',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.colorFFFFC6),
              ),
            ],
          ),
          Positioned(
            bottom: 8.h,
            right: 48.h,
            child: CustomImageView(
              imagePath: ImageConstant
                  .img003c43379e03cb1b39665abbcbdfb918f34e18e8977fcl4agd1,
              width: 51.h,
              height: 22.h,
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: CustomImageView(
              imagePath: ImageConstant
                  .img0867343e1b2a94d23faebd743b153cfab88dc3f999116r6tuknfw12001,
              width: 66.h,
              height: 67.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVipBenefitsInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'VIP Cumulative Deposit',
          style: TextStyleHelper.instance.body14Bold
              .copyWith(color: appTheme.colorFF85D4),
        ),
        SizedBox(height: 8.h),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text:
                    '1.In our Daily Accumulated Recharge Event, generous rewards are available daily\n2. You have placed a deposit today. It will refresh at 0:00 every day and is valid for one day. If you do not claim it by',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF8089, height: 1.17),
              ),
              TextSpan(
                text:
                    ' 0:00 the next day, it will be considered abandoned and automatically reset to zero.\n3. The cashback rewards for different VIP levels vary. Please refer to the benefits corresponding to your level below. Each user can claim this reward only once per day',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF85D4, height: 1.17),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildVipLevelCardsGrid() {
    return Obx(() => GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.h,
            mainAxisSpacing: 16.h,
            childAspectRatio: 0.8,
          ),
          itemCount: controller.vipLevelCards.length,
          itemBuilder: (context, index) {
            return VipLevelCardWidget(
              vipLevelCard: controller.vipLevelCards[index],
            );
          },
        ));
  }
}
