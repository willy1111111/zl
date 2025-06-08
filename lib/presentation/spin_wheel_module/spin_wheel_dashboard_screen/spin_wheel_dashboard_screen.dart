import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/spin_wheel_dashboard_controller.dart';
import './widgets/countdown_timer_widget.dart';
import './widgets/stats_card_widget.dart';
import './widgets/transaction_item_widget.dart';

class SpinWheelDashboardScreen extends GetWidget<SpinWheelDashboardController> {
  SpinWheelDashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: CustomAppBar(
        title: 'Spin',
        hasBackButton: true,
        backButtonIcon: ImageConstant.img4,
        actions: [
          Container(
            width: 24.h,
            height: 24.h,
            margin: EdgeInsets.only(right: 16.h),
            decoration: BoxDecoration(
              color: appTheme.colorFF6B72,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                'i',
                style: TextStyleHelper.instance.body12
                    .copyWith(color: appTheme.whiteCustom),
              ),
            ),
          ),
          Container(
            width: 24.h,
            height: 24.h,
            margin: EdgeInsets.only(right: 16.h),
            child: Stack(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img22,
                  height: 24.h,
                  width: 24.h,
                ),
                Positioned(
                  top: -4.h,
                  right: -4.h,
                  child: Container(
                    width: 12.h,
                    height: 12.h,
                    decoration: BoxDecoration(
                      color: appTheme.redCustom,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        '1',
                        style: TextStyleHelper.instance.label8,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 8.h),
            _buildBalanceCard(),
            SizedBox(height: 20.h),
            _buildSpinWheelSection(),
            SizedBox(height: 20.h),
            _buildLuckyWinBanner(),
            SizedBox(height: 20.h),
            _buildInviteFriendsSection(),
            SizedBox(height: 20.h),
            CountdownTimerWidget(),
            SizedBox(height: 20.h),
            _buildStatsSection(),
            SizedBox(height: 20.h),
            _buildTabNavigation(),
            SizedBox(height: 16.h),
            _buildTransactionHistory(),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  Widget _buildBalanceCard() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      height: 110.h,
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.44, 0),
          end: Alignment(0.44, 1),
          colors: [
            Color(0x33D8D908),
            appTheme.color802FA0,
            appTheme.color80009E,
          ],
        ),
        border: Border.all(
          color: appTheme.color33D8D9,
          width: 1.h,
        ),
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgTdr22,
                    height: 40.h,
                    width: 40.h,
                  ),
                  SizedBox(width: 12.h),
                  Obx(() => Text(
                        '₱ ${controller.dashboardModel.value?.balance?.value ?? '992.59'}',
                        style: TextStyleHelper.instance.headline24Bold
                            .copyWith(color: appTheme.whiteCustom),
                      )),
                ],
              ),
              CustomButton(
                text: 'Withdraw',
                iconPath: ImageConstant.img32,
                variant: CustomButtonVariant.withdrawal,
                onTap: () => controller.onWithdrawTap(),
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
                fontSize: 12.fSize,
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Container(
            padding: EdgeInsets.all(4.h),
            decoration: BoxDecoration(
              color: appTheme.blackCustom,
              borderRadius: BorderRadius.circular(8.h),
            ),
            child: Stack(
              children: [
                Container(
                  height: 14.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: appTheme.transparentCustom,
                    borderRadius: BorderRadius.circular(6.h),
                  ),
                ),
                Container(
                  height: 14.h,
                  width: MediaQuery.of(Get.context!).size.width * 0.563,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0xFFFF7F00), Color(0xFFFFE900)],
                    ),
                    borderRadius: BorderRadius.circular(6.h),
                  ),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 8.h),
                      child: Text(
                        '70%',
                        style: TextStyleHelper.instance.body12Bold
                            .copyWith(color: appTheme.whiteCustom),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.h),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Withdrawl to wallet still requires ',
                  style: TextStyleHelper.instance.body12
                      .copyWith(color: appTheme.whiteCustom),
                ),
                TextSpan(
                  text: '3.07',
                  style: TextStyleHelper.instance.body12
                      .copyWith(color: appTheme.colorFFFEF4),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSpinWheelSection() {
    return Container(
      height: 400.h,
      width: double.infinity,
      child: Stack(
        children: [
          // Background Images
          Positioned(
            top: 0,
            left: 0,
            child: CustomImageView(
              imagePath: ImageConstant.img,
              height: 556.h,
              width: 375.h,
            ),
          ),
          Positioned(
            top: 9.h,
            left: 0,
            child: CustomImageView(
              imagePath: ImageConstant.imgF1529x375,
              height: 529.h,
              width: 375.h,
            ),
          ),
          Positioned(
            top: -20.h,
            left: 0,
            child: CustomImageView(
              imagePath: ImageConstant.imgF2587x375,
              height: 587.h,
              width: 375.h,
            ),
          ),
          Positioned(
            top: 40.h,
            left: 0,
            child: CustomImageView(
              imagePath: ImageConstant.img291x375,
              height: 291.h,
              width: 375.h,
            ),
          ),
          // Character Images
          Positioned(
            top: 84.h,
            left: 227.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgFc2,
              height: 139.h,
              width: 111.h,
            ),
          ),
          Positioned(
            top: 119.h,
            left: 241.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgImage1108,
              height: 62.h,
              width: 62.h,
            ),
          ),
          Positioned(
            top: 78.h,
            left: 45.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgBaoshi1,
              height: 140.h,
              width: 140.h,
            ),
          ),
          Positioned(
            top: 47.h,
            left: 99.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgImage771,
              height: 184.h,
              width: 231.h,
            ),
          ),
          // Spin Wheel
          Positioned(
            top: 132.h,
            left: 36.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup2131330042,
              height: 302.h,
              width: 302.h,
            ),
          ),
          Positioned(
            top: 138.h,
            left: 42.h,
            child: Obx(() => AnimatedRotation(
                  turns: controller.wheelRotation.value,
                  duration: Duration(seconds: 3),
                  child: CustomImageView(
                    imagePath: ImageConstant.img8,
                    height: 290.h,
                    width: 290.h,
                  ),
                )),
          ),
          // Center Spin Button
          Positioned(
            top: 211.h,
            left: 114.h,
            child: GestureDetector(
              onTap: () => controller.onSpinTap(),
              child: Container(
                width: 147.h,
                height: 147.h,
                decoration: BoxDecoration(
                  color: appTheme.blackCustom,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: CustomImageView(
                    imagePath: ImageConstant.img95x95,
                    height: 95.h,
                    width: 95.h,
                  ),
                ),
              ),
            ),
          ),
          // Wheel Overlay
          Positioned(
            top: 140.h,
            left: 44.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgWhiteA700,
              height: 285.h,
              width: 285.h,
            ),
          ),
          // Spin Indicator
          Positioned(
            top: 132.h,
            left: 175.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup2131330076,
              height: 35.h,
              width: 24.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLuckyWinBanner() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 18.h),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrame2131329917,
            height: 72.h,
            width: 338.h,
          ),
          Positioned(
            top: 24.h,
            left: 85.h,
            child: Text(
              'LUCKY WIN',
              style: TextStyleHelper.instance.title16ExtraBold,
            ),
          ),
          Positioned(
            top: 48.h,
            left: 85.h,
            child: Text(
              'PER DAY',
              style: TextStyleHelper.instance.title20ExtraBold,
            ),
          ),
          Positioned(
            top: 20.h,
            left: 212.h,
            child: Container(
              width: 25.h,
              height: 53.h,
              child: Text(
                '1',
                textAlign: TextAlign.center,
                style:
                    TextStyleHelper.instance.display44Black.copyWith(shadows: [
                  Shadow(
                    offset: Offset(-4.h, 0),
                    color: appTheme.colorFF2F19,
                  ),
                ]),
              ),
            ),
          ),
          Positioned(
            top: 23.h,
            left: 243.h,
            child: Text(
              'FREE',
              style: TextStyleHelper.instance.title22ExtraBold,
            ),
          ),
          Positioned(
            top: 48.h,
            left: 243.h,
            child: Text(
              'SPINS',
              style: TextStyleHelper.instance.title18ExtraBold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInviteFriendsSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF363C41), Color(0xFF2B3035)],
        ),
        borderRadius: BorderRadius.circular(25.h),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4.h),
            blurRadius: 4.h,
            color: appTheme.blackCustom,
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            'You have achieved this level',
            style: TextStyleHelper.instance.body15Bold,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.h),
          CustomButton(
            text: 'Invite friends to get money',
            iconPath: ImageConstant.img42,
            variant: CustomButtonVariant.gradient,
            onTap: () => controller.onInviteFriendsTap(),
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 16.h),
            fontSize: 15.fSize,
          ),
        ],
      ),
    );
  }

  Widget _buildStatsSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        children: [
          Expanded(
            child: StatsCardWidget(
              title: 'SPIN BONUS TOTAL',
              amount: '₱17,288,717.93',
              isTotal: true,
            ),
          ),
          SizedBox(width: 8.h),
          Expanded(
            child: StatsCardWidget(
              avatarPath: ImageConstant.imgImage2,
              userName: 'Sanikhan',
              winAmount: 'BNT 27.66',
              isTotal: false,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabNavigation() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => controller.onTabTap(0),
              child: Obx(() => Container(
                    padding: EdgeInsets.symmetric(vertical: 12.h),
                    decoration: BoxDecoration(
                      color: (controller.selectedTabIndex.value == 0)
                          ? Color(0xFF32363D)
                          : appTheme.colorFF2528,
                      borderRadius: BorderRadius.circular(10.h),
                    ),
                    child: Text(
                      'Report',
                      textAlign: TextAlign.center,
                      style: TextStyleHelper.instance.body14.copyWith(
                          color: (controller.selectedTabIndex.value == 0)
                              ? appTheme.whiteCustom
                              : appTheme.colorFF8089),
                    ),
                  )),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => controller.onTabTap(1),
              child: Obx(() => Container(
                    padding: EdgeInsets.symmetric(vertical: 12.h),
                    decoration: BoxDecoration(
                      color: (controller.selectedTabIndex.value == 1)
                          ? Color(0xFF32363D)
                          : appTheme.colorFF2528,
                      borderRadius: BorderRadius.circular(10.h),
                    ),
                    child: Text(
                      'My invitation',
                      textAlign: TextAlign.center,
                      style: TextStyleHelper.instance.body14.copyWith(
                          color: (controller.selectedTabIndex.value == 1)
                              ? appTheme.whiteCustom
                              : appTheme.colorFF8089),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTransactionHistory() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
      height: 182.h,
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.transparentCustom,
        border: Border.all(
          color: appTheme.colorFF3236,
          width: 4.h,
        ),
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: Obx(() => ListView.separated(
            itemCount: controller.transactionItems.length,
            separatorBuilder: (context, index) => SizedBox(height: 16.h),
            itemBuilder: (context, index) {
              return TransactionItemWidget(
                transactionItem: controller.transactionItems[index],
              );
            },
          )),
    );
  }
}
