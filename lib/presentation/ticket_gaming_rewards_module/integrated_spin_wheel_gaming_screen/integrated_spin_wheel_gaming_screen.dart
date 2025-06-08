import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_balance_widget.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_row.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_sidebar.dart';
import '../../../../widgets/custom_timer_box.dart';
import '../../../../widgets/custom_winner_list.dart';
import './controller/integrated_spin_wheel_gaming_controller.dart';
import './widgets/game_item_widget.dart';

class IntegratedSpinWheelGamingScreen extends StatelessWidget {
  IntegratedSpinWheelGamingScreen({Key? key}) : super(key: key);

  final IntegratedSpinWheelGamingController controller =
      Get.put(IntegratedSpinWheelGamingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                _buildAppBarSection(),
                _buildLogoAndBalanceSection(),
                _buildNotificationBanner(),
                SizedBox(height: 350.h),
                _buildGameGridSection(),
                _buildVipBannersSection(),
                SizedBox(height: 200.h),
              ],
            ),
          ),
          _buildSidebarSection(),
          _buildMaskOverlay(),
          _buildFloatingActionButton(),
          _buildSpecialIndicators(),
          _buildArrowIndicator(),
          Obx(() => controller.showTicketEventModal.value
              ? _buildTicketEventModal()
              : SizedBox.shrink()),
        ],
      ),
    );
  }

  Widget _buildAppBarSection() {
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

  Widget _buildLogoAndBalanceSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Column(
        children: [
          SizedBox(height: 8.h),
          Align(
            alignment: Alignment.centerLeft,
            child: CustomImageView(
              imagePath: ImageConstant.imgLogowj931,
              height: 28.h,
              width: 78.h,
            ),
          ),
          SizedBox(height: 4.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CustomButton(
                    text: 'Withdrawal',
                    iconPath: ImageConstant.imgVectorWhiteA700,
                    gradientColors: [Color(0xFFFFC61E), Color(0xFFFF9F00)],
                    width: 170.h,
                    onPressed: () => controller.onWithdrawalPressed(),
                  ),
                  SizedBox(width: 5.h),
                  CustomButton(
                    text: 'Deposit',
                    iconPath: ImageConstant.imgVectorWhiteA70011x16,
                    gradientColors: [Color(0xFF76CD00), Color(0xFF478A03)],
                    width: 156.h,
                    onPressed: () => controller.onDepositPressed(),
                  ),
                ],
              ),
              CustomBalanceWidget(
                amount: '₱1980.00',
                onActionTap: () => controller.onBalanceRefresh(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationBanner() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h, vertical: 8.h),
      padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 7.h),
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
          Text(
            'The recharge',
            style: TextStyleHelper.instance.body14Bold,
          ),
          SizedBox(width: 8.h),
          CustomImageView(
            imagePath: ImageConstant.img1,
            height: 16.h,
            width: 16.h,
          ),
        ],
      ),
    );
  }

  Widget _buildSidebarSection() {
    return Positioned(
      left: 0,
      top: 350.h,
      child: CustomSidebar(
        sidebarItems: controller.sidebarItems.value,
        selectedIndex: controller.selectedSidebarIndex.value,
        onItemTap: (index) => controller.onSidebarItemTap(index),
      ),
    );
  }

  Widget _buildGameGridSection() {
    return Container(
      margin: EdgeInsets.only(left: 77.h, right: 15.h),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 9.h,
          mainAxisSpacing: 9.h,
          childAspectRatio: 0.7,
        ),
        itemCount: controller.gameItems.length,
        itemBuilder: (context, index) {
          return GameItemWidget(
            gameItem: controller.gameItems[index],
            onTap: () => controller.onGameItemTap(index),
          );
        },
      ),
    );
  }

  Widget _buildVipBannersSection() {
    return Container(
      margin: EdgeInsets.only(left: 72.h, right: 15.h, top: 8.h),
      child: CustomImageRow(
        imageList: [
          ImageConstant.img,
          ImageConstant.img56x94,
          ImageConstant.imgVip,
        ],
        spacing: 6.h,
      ),
    );
  }

  Widget _buildMaskOverlay() {
    return Positioned(
      top: 153.h,
      left: 15.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgMaskGroup,
        height: 130.h,
        width: 345.h,
      ),
    );
  }

  Widget _buildFloatingActionButton() {
    return Positioned(
      top: 734.h,
      left: 160.h,
      child: GestureDetector(
        onTap: () => controller.onFabTap(),
        child: Container(
          height: 56.h,
          width: 56.h,
          decoration: BoxDecoration(
            color: appTheme.colorFF242A,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup13043,
              height: 53.h,
              width: 49.h,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSpecialIndicators() {
    return Column(
      children: [
        Positioned(
          top: 759.h,
          right: 50.h,
          child: Stack(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup827,
                height: 50.h,
                width: 50.h,
              ),
              Positioned(
                top: 2.h,
                left: 2.h,
                child: Text(
                  '99',
                  style: TextStyleHelper.instance.body12,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 609.h,
          right: 50.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup11853,
            height: 50.h,
            width: 50.h,
          ),
        ),
      ],
    );
  }

  Widget _buildArrowIndicator() {
    return Positioned(
      top: 431.h,
      left: 63.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgPolygon10,
        height: 15.h,
        width: 9.h,
      ),
    );
  }

  Widget _buildTicketEventModal() {
    return Container(
      color: appTheme.blackCustom.withAlpha(128),
      child: Center(
        child: Stack(
          children: [
            _buildModalBackground(),
            _buildModalContent(),
          ],
        ),
      ),
    );
  }

  Widget _buildModalBackground() {
    return Stack(
      children: [
        Positioned(
          top: 198.h,
          left: 0,
          child: CustomImageView(
            imagePath: ImageConstant.imgF1,
            height: 414.h,
            width: 375.h,
          ),
        ),
        Positioned(
          top: 170.h,
          left: 0,
          child: CustomImageView(
            imagePath: ImageConstant.imgF2,
            height: 472.h,
            width: 375.h,
          ),
        ),
        Positioned(
          top: 103.h,
          left: 0,
          child: CustomImageView(
            imagePath: ImageConstant.img1403x375,
            height: 403.h,
            width: 375.h,
          ),
        ),
      ],
    );
  }

  Widget _buildModalContent() {
    return Stack(
      children: [
        _buildCloseButton(),
        _buildEventHeader(),
        _buildTitle(),
        _buildCashVoucherText(),
        _buildCountdownTimer(),
        _buildSpinWheel(),
        _buildProgressBar(),
        _buildClaimButton(),
        _buildWinnerNotifications(),
      ],
    );
  }

  Widget _buildCloseButton() {
    return Positioned(
      top: 21.h,
      right: 26.h,
      child: GestureDetector(
        onTap: () => controller.onCloseModal(),
        child: CustomImageView(
          imagePath: ImageConstant.imgGroup,
          height: 32.h,
          width: 32.h,
        ),
      ),
    );
  }

  Widget _buildEventHeader() {
    return Stack(
      children: [
        Positioned(
          top: 15.h,
          left: 124.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgImage360,
            height: 78.h,
            width: 136.h,
          ),
        ),
        Positioned(
          top: 63.h,
          left: 35.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgImage23,
            height: 70.h,
            width: 306.h,
          ),
        ),
      ],
    );
  }

  Widget _buildTitle() {
    return Positioned(
      top: 67.h,
      left: 109.h,
      child: Stack(
        children: [
          Text(
            'TICKET EVENT',
            style: TextStyleHelper.instance.headline26Regular
                .copyWith(height: 30.h / 26.fSize),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFFFFBDB), Color(0xFFFFC82F)],
              ),
            ),
            child: Text(
              'TICKET EVENT',
              style: TextStyleHelper.instance.headline26Regular.copyWith(
                  color: appTheme.transparentCustom, height: 30.h / 26.fSize),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCashVoucherText() {
    return Positioned(
      top: 200.h,
      left: 41.h,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFFFF39A), Color(0xFFFFC931)],
          ),
        ),
        child: Text(
          'You can obtain ₱18 Cash Voucher',
          style: TextStyleHelper.instance.title16Black.copyWith(
              color: appTheme.transparentCustom, height: 23.h / 16.fSize),
        ),
      ),
    );
  }

  Widget _buildCountdownTimer() {
    return Positioned(
      top: 232.h,
      left: 142.h,
      child: Column(
        children: [
          Text(
            'Remaining time',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.whiteCustom, height: 14.h / 12.fSize),
          ),
          SizedBox(height: 5.h),
          Row(
            children: [
              CustomTimerBox(
                value: '01',
                unit: 'hr',
                useBottomPosition: true,
              ),
              SizedBox(width: 6.h),
              Text(
                ':',
                style: TextStyleHelper.instance.title18Black
                    .copyWith(height: 26.h / 18.fSize),
              ),
              SizedBox(width: 6.h),
              CustomTimerBox(
                value: '21',
                unit: 'min',
              ),
              SizedBox(width: 6.h),
              Text(
                ':',
                style: TextStyleHelper.instance.title18Black
                    .copyWith(height: 26.h / 18.fSize),
              ),
              SizedBox(width: 6.h),
              CustomTimerBox(
                value: '06',
                unit: 'sec',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSpinWheel() {
    return Positioned(
      top: 303.h,
      left: 123.h,
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgZhizhen1,
            height: 99.h,
            width: 117.h,
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Stack(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img1215x301,
                  height: 215.h,
                  width: 301.h,
                ),
                Positioned(
                  top: -32.h,
                  left: -26.h,
                  child: Obx(() => AnimatedRotation(
                        turns: controller.wheelRotation.value,
                        duration: Duration(seconds: 3),
                        child: CustomImageView(
                          imagePath: ImageConstant.img12250x278,
                          height: 250.h,
                          width: 278.h,
                        ),
                      )),
                ),
                Positioned(
                  top: 95.h,
                  left: 124.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.img13,
                    height: 67.h,
                    width: 68.h,
                  ),
                ),
                Positioned(
                  top: 17.h,
                  left: -91.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgYellow300,
                    height: 211.h,
                    width: 296.h,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProgressBar() {
    return Positioned(
      top: 553.h,
      left: 47.h,
      child: Stack(
        children: [
          Container(
            height: 12.h,
            width: 280.h,
            decoration: BoxDecoration(
              color: appTheme.color999FB0,
              borderRadius: BorderRadius.circular(6.h),
            ),
          ),
          Container(
            height: 12.h,
            width: 35.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFFFF80E), Color(0xFFFF7A00)],
              ),
              borderRadius: BorderRadius.circular(6.h),
            ),
          ),
          Positioned(
            top: -3.h,
            right: -41.h,
            child: Text(
              '10.00%',
              style: TextStyleHelper.instance.body12Bold.copyWith(
                  color: appTheme.whiteCustom, height: 14.h / 12.fSize),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildClaimButton() {
    return Positioned(
      top: 579.h,
      left: 43.h,
      child: CustomButton(
        text: 'Claim',
        width: 290.h,
        height: 40.h,
        gradientColors: [Color(0xFFFFCC18), Color(0xFFF55800)],
        borderRadius: 20.h,
        onPressed: () => controller.onClaimPressed(),
      ),
    );
  }

  Widget _buildWinnerNotifications() {
    return Positioned(
      top: 634.h,
      left: 24.h,
      child: CustomWinnerList(
        winnerItems: controller.winnerItems.value,
        width: 327.h,
        height: 117.h,
      ),
    );
  }
}
