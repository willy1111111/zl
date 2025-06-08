import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_balance_widget.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_timer_box.dart';
import '../../../../widgets/custom_winner_list.dart';
import './controller/red_package_ticket_event_controller.dart';
import './widgets/sidebar_item_widget.dart';

class RedPackageTicketEventScreen extends StatelessWidget {
  RedPackageTicketEventScreen({Key? key}) : super(key: key);

  final RedPackageTicketEventController controller =
      Get.put(RedPackageTicketEventController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              // Background layers
              _buildBackgroundImages(),

              // Main content
              Column(
                children: [
                  // Top promotional banner
                  _buildTopBanner(),

                  // Logo and balance section
                  _buildLogoBalanceSection(),

                  // Action buttons
                  _buildActionButtons(),

                  // Notification banner
                  _buildNotificationBanner(),

                  SizedBox(height: 20.h),

                  // Sidebar
                  _buildSidebar(),
                ],
              ),

              // Event overlay
              _buildEventOverlay(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBackgroundImages() {
    return Column(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgF1395x375,
          height: 395.h,
          width: double.maxFinite,
          fit: BoxFit.cover,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgF2450x375,
          height: 450.h,
          width: double.maxFinite,
          fit: BoxFit.cover,
        ),
        CustomImageView(
          imagePath: ImageConstant.img1403x375,
          height: 403.h,
          width: double.maxFinite,
          fit: BoxFit.cover,
        ),
      ],
    );
  }

  Widget _buildTopBanner() {
    return CustomAppBar(
      height: 68.h,
      backgroundImagePath:
          ImageConstant.img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi2,
      overlayImagePath:
          ImageConstant.img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi1,
      showProfile: true,
      profileImagePath: ImageConstant.img112,
      profileText: 'Many benefits for newcomers',
      showStars: true,
      starCount: 5,
      showDownloadButton: true,
      downloadButtonText: 'Download',
      showCloseButton: true,
      onDownloadPressed: () => controller.onDownloadPressed(),
      onClosePressed: () => controller.onClosePressed(),
    );
  }

  Widget _buildLogoBalanceSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLogowj931,
            height: 28.h,
            width: 78.h,
          ),
          Obx(() => CustomBalanceWidget(
                amount: controller.balanceAmount.value ?? '₱1980.00',
                onActionTap: () => controller.onBalanceActionTap(),
              )),
        ],
      ),
    );
  }

  Widget _buildActionButtons() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: 'Withdrawal',
              iconPath: ImageConstant.imgVectorWhiteA700,
              gradientColors: [Color(0xFFFFC61E), Color(0xFFFF9F00)],
              height: 36.h,
              onPressed: () => controller.onWithdrawalPressed(),
            ),
          ),
          SizedBox(width: 5.h),
          Expanded(
            child: CustomButton(
              text: 'Deposit',
              iconPath: ImageConstant.imgVectorWhiteA70011x16,
              gradientColors: [Color(0xFF76CD00), Color(0xFF478A03)],
              height: 36.h,
              onPressed: () => controller.onDepositPressed(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationBanner() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 8.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(17.h),
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant
                .img3b4bde395738f0c8b07d1baa47c5d48f172c19aa158772swckar1,
            height: 19.h,
            width: 24.h,
          ),
          SizedBox(width: 8.h),
          Expanded(
            child: Text(
              '🔥The recharge of the🔥',
              style: TextStyleHelper.instance.body14Bold,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img1,
            height: 16.h,
            width: 16.h,
          ),
          SizedBox(width: 8.h),
          Text(
            'The recharge',
            style: TextStyleHelper.instance.body14Bold,
          ),
        ],
      ),
    );
  }

  Widget _buildSidebar() {
    return Positioned(
      left: 0,
      top: 350.h,
      child: Column(
        children: [
          Obx(() => ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.sidebarItems.length,
                itemBuilder: (context, index) {
                  return SidebarItemWidget(
                    sidebarItemModel: controller.sidebarItems[index],
                    isSelected: controller.selectedSidebarIndex.value == index,
                    onTap: () => controller.onSidebarItemTap(index),
                  );
                },
              )),
        ],
      ),
    );
  }

  Widget _buildEventOverlay() {
    return Container(
      color: appTheme.blackCustom.withAlpha(204),
      child: Column(
        children: [
          SizedBox(height: 15.h),

          // Event header
          _buildEventHeader(),

          // Event title
          _buildEventTitle(),

          // Navigation icons
          _buildNavigationIcons(),

          // Event options
          _buildEventOptions(),

          // Bonus text
          _buildBonusText(),

          // Countdown timer
          _buildCountdownTimer(),

          // Main prize display
          _buildMainPrizeDisplay(),

          // Progress bar
          _buildProgressBar(),

          // Claim button
          _buildClaimButton(),

          // Close button
          _buildCloseButton(),

          // Winners list
          _buildWinnersList(),
        ],
      ),
    );
  }

  Widget _buildEventHeader() {
    return Container(
      margin: EdgeInsets.only(top: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage360,
            height: 78.h,
            width: 136.h,
          ),
        ],
      ),
    );
  }

  Widget _buildEventTitle() {
    return Container(
      margin: EdgeInsets.only(top: 48.h),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage23,
            height: 70.h,
            width: 306.h,
          ),
          Positioned(
            top: 4.h,
            left: 74.h,
            child: Container(
              child: Stack(
                children: [
                  Text(
                    'TICKET EVENT',
                    style: TextStyleHelper.instance.headline26,
                  ),
                  Text(
                    'TICKET EVENT',
                    style: TextStyleHelper.instance.headline26,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavigationIcons() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6.h, vertical: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => controller.onPreviousPressed(),
            child: CustomImageView(
              imagePath: ImageConstant.imgUnion,
              height: 28.h,
              width: 28.h,
            ),
          ),
          GestureDetector(
            onTap: () => controller.onNextPressed(),
            child: CustomImageView(
              imagePath: ImageConstant.imgUnion28x28,
              height: 28.h,
              width: 28.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEventOptions() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 35.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Lucky Wheel
          GestureDetector(
            onTap: () => controller.onLuckyWheelTap(),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgMaskGroup,
                  height: 58.h,
                  width: 90.h,
                ),
                SizedBox(height: 5.h),
                Text(
                  'Lucky Wheel',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFF7310),
                ),
              ],
            ),
          ),

          // Red Package
          GestureDetector(
            onTap: () => controller.onRedPackageTap(),
            child: Container(
              child: Stack(
                children: [
                  Container(
                    height: 70.h,
                    width: 110.h,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0x000B783D), Color(0xFF9FB90A)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(10.h),
                      border:
                          Border.all(color: appTheme.colorFFFFFB, width: 2.h),
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 8.h),
                        child: Text(
                          'Red Package',
                          style: TextStyleHelper.instance.body14Bold
                              .copyWith(color: appTheme.whiteCustom),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -10.h,
                    left: 33.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgImage41353x44,
                      height: 53.h,
                      width: 44.h,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Cash Voucher
          GestureDetector(
            onTap: () => controller.onCashVoucherTap(),
            child: Column(
              children: [
                Container(
                  height: 54.h,
                  width: 90.h,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0x00EC3232), Color(0xFFFFBA48)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(8.h),
                  ),
                  child: Center(
                    child: CustomImageView(
                      imagePath: ImageConstant.imgCash1,
                      height: 50.h,
                      width: 61.h,
                    ),
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  'Cash Voucher',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFF5A27),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBonusText() {
    return Container(
      margin: EdgeInsets.only(top: 7.h),
      child: Text(
        'APP download bonus – ₱38',
        style: TextStyleHelper.instance.title16Black,
      ),
    );
  }

  Widget _buildCountdownTimer() {
    return Container(
      margin: EdgeInsets.only(top: 31.h),
      child: Column(
        children: [
          Text(
            'Remaining time',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.whiteCustom),
          ),
          SizedBox(height: 19.h),
          Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTimerBox(
                    value: controller.days.value ?? '02',
                    unit: 'Day',
                  ),
                  SizedBox(width: 8.h),
                  Text(
                    ':',
                    style: TextStyleHelper.instance.title18Black,
                  ),
                  SizedBox(width: 8.h),
                  CustomTimerBox(
                    value: controller.hours.value ?? '01',
                    unit: 'hr',
                    useBottomPosition: true,
                  ),
                  SizedBox(width: 8.h),
                  Text(
                    ':',
                    style: TextStyleHelper.instance.title18Black,
                  ),
                  SizedBox(width: 8.h),
                  CustomTimerBox(
                    value: controller.minutes.value ?? '21',
                    unit: 'min',
                  ),
                  SizedBox(width: 8.h),
                  Text(
                    ':',
                    style: TextStyleHelper.instance.title18Black,
                  ),
                  SizedBox(width: 8.h),
                  CustomTimerBox(
                    value: controller.seconds.value ?? '06',
                    unit: 'sec',
                  ),
                ],
              )),
        ],
      ),
    );
  }

  Widget _buildMainPrizeDisplay() {
    return Container(
      margin: EdgeInsets.only(top: 59.h),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.img4,
            height: 224.h,
            width: 291.h,
          ),
          Positioned(
            top: 4.h,
            left: -1.h,
            child: CustomImageView(
              imagePath: ImageConstant.img3219x322,
              height: 219.h,
              width: 322.h,
            ),
          ),
          Positioned(
            top: 4.h,
            left: 79.h,
            child: CustomImageView(
              imagePath: ImageConstant.img2134x102,
              height: 197.h,
              width: 150.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProgressBar() {
    return Container(
      margin: EdgeInsets.only(top: 19.h, left: 47.h, right: 47.h),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 12.h,
              decoration: BoxDecoration(
                color: appTheme.color999FB0,
                borderRadius: BorderRadius.circular(6.h),
              ),
              child: Stack(
                children: [
                  Obx(() => Container(
                        width: (controller.progress.value ?? 0.1) * 280.h,
                        height: 12.h,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFFFFF80E), Color(0xFFFF7A00)],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          borderRadius: BorderRadius.circular(6.h),
                        ),
                      )),
                ],
              ),
            ),
          ),
          SizedBox(width: 8.h),
          Obx(() => Text(
                '${((controller.progress.value ?? 0.1) * 100).toStringAsFixed(2)}%',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.whiteCustom),
              )),
        ],
      ),
    );
  }

  Widget _buildClaimButton() {
    return Container(
      margin: EdgeInsets.only(top: 27.h, left: 43.h, right: 43.h),
      child: CustomButton(
        text: 'Claim',
        gradientColors: [Color(0xFFFFCC18), Color(0xFFF55800)],
        width: 290.h,
        height: 40.h,
        borderRadius: 20.h,
        onPressed: () => controller.onClaimPressed(),
      ),
    );
  }

  Widget _buildCloseButton() {
    return Positioned(
      top: 21.h,
      right: 26.h,
      child: GestureDetector(
        onTap: () => controller.onEventClosePressed(),
        child: CustomImageView(
          imagePath: ImageConstant.imgGroup,
          height: 32.h,
          width: 32.h,
        ),
      ),
    );
  }

  Widget _buildWinnersList() {
    return Container(
      margin: EdgeInsets.only(top: 55.h, left: 24.h, right: 24.h),
      child: Obx(() => CustomWinnerList(
            winnerItems: controller.winners
                .map((winner) => CustomWinnerItem(
                      avatarPath: winner.avatarPath?.value ?? '',
                      username: winner.username?.value ?? '',
                      bonusAmount: winner.bonusAmount?.value ?? '',
                    ))
                .toList(),
          )),
    );
  }
}
