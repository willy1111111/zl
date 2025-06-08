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
import './controller/treasure_chest_ticket_claim_controller.dart';
import './widgets/game_card_widget.dart';

//  // Removed non-existent import

class TreasureChestTicketClaimScreen extends StatelessWidget {
  TreasureChestTicketClaimScreen({Key? key}) : super(key: key);

  final TreasureChestTicketClaimController controller =
      Get.put(TreasureChestTicketClaimController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: Stack(
        children: [
          _buildMainContent(),
          Obx(() => controller.showEventDialog.value
              ? _buildEventDialog()
              : SizedBox.shrink()),
        ],
      ),
    );
  }

  Widget _buildMainContent() {
    return Column(
      children: [
        _buildHeader(),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 8.h),
                _buildLogoAndBalance(),
                SizedBox(height: 8.h),
                _buildActionButtons(),
                SizedBox(height: 45.h),
                _buildMaskOverlay(),
                SizedBox(height: 17.h),
                _buildNotificationBanner(),
                SizedBox(height: 16.h),
                _buildVipBanners(),
                SizedBox(height: 10.h),
                _buildGameContent(),
                SizedBox(height: 200.h),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildHeader() {
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

  Widget _buildLogoAndBalance() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLogowj931,
            height: 28.h,
            width: 78.h,
          ),
          CustomBalanceWidget(
            amount: '₱1980.00',
            onActionTap: () => controller.onBalanceActionTap(),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        children: [
          CustomButton(
            text: 'Withdrawal',
            iconPath: ImageConstant.imgVectorWhiteA700,
            width: 170.h,
            height: 36.h,
            gradientColors: [Color(0xFFFFC61E), Color(0xFFFF9F00)],
            onPressed: () => controller.onWithdrawalPressed(),
          ),
          SizedBox(width: 5.h),
          CustomButton(
            text: 'Deposit',
            iconPath: ImageConstant.imgVectorWhiteA70011x16,
            width: 170.h,
            height: 36.h,
            gradientColors: [Color(0xFF76CD00), Color(0xFF478A03)],
            onPressed: () => controller.onDepositPressed(),
          ),
        ],
      ),
    );
  }

  Widget _buildMaskOverlay() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: CustomImageView(
        imagePath: ImageConstant.imgMaskGroup,
        height: 130.h,
        width: 345.h,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildNotificationBanner() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Container(
        width: 345.h,
        height: 34.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          borderRadius: BorderRadius.circular(17.h),
        ),
        child: Row(
          children: [
            SizedBox(width: 6.h),
            CustomImageView(
              imagePath: ImageConstant
                  .img3b4bde395738f0c8b07d1baa47c5d48f172c19aa158772swckar1,
              height: 19.h,
              width: 24.h,
            ),
            SizedBox(width: 8.h),
            Expanded(
              child: Text(
                '🔥The recharge of th🔥',
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
            SizedBox(width: 6.h),
          ],
        ),
      ),
    );
  }

  Widget _buildVipBanners() {
    return Padding(
      padding: EdgeInsets.only(left: 72.h),
      child: CustomImageRow(
        imageList: [
          ImageConstant.img,
          ImageConstant.img56x94,
          ImageConstant.imgVip,
        ],
        imageWidth: 94.h,
        imageHeight: 56.h,
        spacing: 26.h,
        borderRadius: 4.h,
      ),
    );
  }

  Widget _buildGameContent() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSidebar(),
        SizedBox(width: 11.h),
        Expanded(
          child: _buildGameGrid(),
        ),
      ],
    );
  }

  Widget _buildSidebar() {
    return CustomSidebar(
      sidebarItems: [
        CustomSidebarItem(
          iconPath: ImageConstant.imgVectorDeepOrangeA400,
          label: 'Hot',
          routeName: '/hot',
        ),
        CustomSidebarItem(
          iconPath: ImageConstant.img132x32,
          label: 'Collect',
          routeName: '/collect',
          isHighlighted: true,
        ),
        CustomSidebarItem(
          iconPath: ImageConstant.img10733643587,
          label: 'Slot',
          routeName: '/slot',
        ),
        CustomSidebarItem(
          iconPath: ImageConstant.img103,
          label: 'Live',
          routeName: '/live',
        ),
        CustomSidebarItem(
          iconPath: ImageConstant.img5,
          label: 'Bingo',
          routeName: '/bingo',
        ),
        CustomSidebarItem(
          iconPath: ImageConstant.img2,
          label: 'Table',
          routeName: '/table',
        ),
        CustomSidebarItem(
          iconPath: ImageConstant.img7,
          label: 'Fish',
          routeName: '/fish',
        ),
        CustomSidebarItem(
          iconPath: ImageConstant.img3,
          label: 'Egame',
          routeName: '/egame',
        ),
        CustomSidebarItem(
          iconPath: ImageConstant.img6,
          label: 'Sport',
          routeName: '/sport',
        ),
      ],
      selectedIndex: 1,
      onItemTap: (index) => controller.onSidebarItemTap(index),
    );
  }

  Widget _buildGameGrid() {
    return Padding(
      padding: EdgeInsets.only(right: 15.h),
      child: Column(
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgPolygon10,
                height: 15.h,
                width: 9.h,
              ),
              SizedBox(width: 5.h),
              Expanded(
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
                    return GameCardWidget(
                      gameItem: controller.gameItems[index],
                      onTap: () => controller.onGameCardTap(index),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildEventDialog() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: appTheme.blackCustom.withAlpha(191),
      child: Stack(
        children: [
          _buildEventBackground(),
          _buildEventCloseButtons(),
          _buildEventHeader(),
          _buildEventCategories(),
          _buildEventMainContent(),
          _buildEventTimer(),
          _buildTreasureChest(),
          _buildEventProgress(),
          _buildClaimButton(),
          _buildWinnerList(),
        ],
      ),
    );
  }

  Widget _buildEventBackground() {
    return Stack(
      children: [
        Positioned(
          top: 198.h,
          left: 0,
          child: CustomImageView(
            imagePath: ImageConstant.imgF1,
            height: 414.h,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 170.h,
          left: 0,
          child: CustomImageView(
            imagePath: ImageConstant.imgF2,
            height: 472.h,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 103.h,
          left: 0,
          child: CustomImageView(
            imagePath: ImageConstant.img1403x375,
            height: 403.h,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

  Widget _buildEventCloseButtons() {
    return Stack(
      children: [
        Positioned(
          top: 153.h,
          left: 6.h,
          child: GestureDetector(
            onTap: () => controller.closeEventDialog(),
            child: CustomImageView(
              imagePath: ImageConstant.imgUnion,
              height: 28.h,
              width: 28.h,
            ),
          ),
        ),
        Positioned(
          top: 153.h,
          right: 7.h,
          child: GestureDetector(
            onTap: () => controller.closeEventDialog(),
            child: CustomImageView(
              imagePath: ImageConstant.imgUnion28x28,
              height: 28.h,
              width: 28.h,
            ),
          ),
        ),
        Positioned(
          top: 21.h,
          right: 26.h,
          child: GestureDetector(
            onTap: () => controller.closeEventDialog(),
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup,
              height: 32.h,
              width: 32.h,
            ),
          ),
        ),
      ],
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
        Positioned(
          top: 69.h,
          left: 109.h,
          child: Text(
            'TICKET EVENT',
            style: TextStyleHelper.instance.headline26LilitaOne,
          ),
        ),
        Positioned(
          top: 67.h,
          left: 109.h,
          child: ShaderMask(
            shaderCallback: (bounds) => LinearGradient(
              colors: [Color(0xFFFFFBDB), Color(0xFFFFC82F)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ).createShader(bounds),
            child: Text(
              'TICKET EVENT',
              style: TextStyleHelper.instance.headline26LilitaOne
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildEventCategories() {
    return Stack(
      children: [
        Positioned(
          top: 139.h,
          left: 35.h,
          child: Container(
            width: 90.h,
            height: 54.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0x006F1EE4), Color(0xFFA666F8)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(8.h),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgMaskGroup1,
                  height: 40.h,
                  width: 40.h,
                ),
                SizedBox(height: 2.h),
                Text(
                  'Golden Egg',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFF3C1F),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 129.h,
          left: 133.h,
          child: Container(
            width: 110.h,
            height: 70.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0x00EC3232), Color(0xFFFFBA48)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(10.h),
              border: Border.all(color: appTheme.colorFFFFFB, width: 2.h),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCash160x60,
                  height: 60.h,
                  width: 60.h,
                ),
                SizedBox(height: 2.h),
                Text(
                  'Cash Voucher',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.whiteCustom),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 132.h,
          right: 63.h,
          child: Stack(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMaskGroup,
                height: 61.h,
                width: 90.h,
              ),
              Positioned(
                bottom: 0,
                left: 8.h,
                child: Text(
                  'Lucky Wheel',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFF7310),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildEventMainContent() {
    return Positioned(
      top: 200.h,
      left: 41.h,
      child: ShaderMask(
        shaderCallback: (bounds) => LinearGradient(
          colors: [Color(0xFFFFF39A), Color(0xFFFFC931)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ).createShader(bounds),
        child: Text(
          'You can obtain ₱18 Cash Voucher',
          style: TextStyleHelper.instance.title16Black
              .copyWith(color: appTheme.whiteCustom),
        ),
      ),
    );
  }

  Widget _buildEventTimer() {
    return Stack(
      children: [
        Positioned(
          top: 231.h,
          left: 142.h,
          child: Text(
            'Remaining time',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.whiteCustom),
          ),
        ),
        Positioned(
          top: 250.h,
          left: 105.h,
          child: Row(
            children: [
              CustomTimerBox(
                value: '01',
                unit: 'hr',
                useBottomPosition: true,
              ),
              SizedBox(width: 6.h),
              Text(
                ':',
                style: TextStyleHelper.instance.title18Black,
              ),
              SizedBox(width: 6.h),
              CustomTimerBox(
                value: '21',
                unit: 'min',
              ),
              SizedBox(width: 6.h),
              Text(
                ':',
                style: TextStyleHelper.instance.title18Black,
              ),
              SizedBox(width: 6.h),
              CustomTimerBox(
                value: '06',
                unit: 'sec',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTreasureChest() {
    return Stack(
      children: [
        Positioned(
          top: 303.h,
          left: 70.h,
          child: CustomImageView(
            imagePath: ImageConstant.img111,
            height: 217.h,
            width: 235.h,
          ),
        ),
        Positioned(
          top: 457.h,
          right: 74.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgImage359,
            height: 49.h,
            width: 46.h,
          ),
        ),
        Positioned(
          top: 408.h,
          left: 50.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgTohlf1,
            height: 97.h,
            width: 90.h,
          ),
        ),
        Positioned(
          top: 449.h,
          left: 95.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgImage358,
            height: 66.h,
            width: 106.h,
          ),
        ),
        Positioned(
          top: 454.h,
          left: 201.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgImage9,
            height: 72.h,
            width: 75.h,
          ),
        ),
      ],
    );
  }

  Widget _buildEventProgress() {
    return Stack(
      children: [
        Positioned(
          top: 522.h,
          left: 95.h,
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage283,
                height: 24.h,
                width: 24.h,
              ),
              SizedBox(width: 8.h),
              Text(
                '₱880.00 / 10000',
                style: TextStyleHelper.instance.title18Black,
              ),
            ],
          ),
        ),
        Positioned(
          top: 552.h,
          left: 47.h,
          child: Container(
            width: 280.h,
            height: 12.h,
            decoration: BoxDecoration(
              color: appTheme.color999FB0,
              borderRadius: BorderRadius.circular(6.h),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 35.h,
                height: 12.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFFFF80E), Color(0xFFFF7A00)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(6.h),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 550.h,
          right: 56.h,
          child: Text(
            '10.00%',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.whiteCustom),
          ),
        ),
      ],
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

  Widget _buildWinnerList() {
    return Positioned(
      top: 634.h,
      left: 24.h,
      child: CustomWinnerList(
        winnerItems: [
          CustomWinnerItem(
            avatarPath: ImageConstant.imgEllipse539,
            username: '123***123',
            bonusAmount: '₱ 1,000,000,000.00',
          ),
          CustomWinnerItem(
            avatarPath: ImageConstant.imgEllipse53920x20,
            username: '123***123',
            bonusAmount: '₱ 1,000,000,000.00',
          ),
          CustomWinnerItem(
            avatarPath: ImageConstant.imgEllipse5391,
            username: '124***123',
            bonusAmount: '₱ 1,000,000,000.00',
          ),
        ],
      ),
    );
  }
}
