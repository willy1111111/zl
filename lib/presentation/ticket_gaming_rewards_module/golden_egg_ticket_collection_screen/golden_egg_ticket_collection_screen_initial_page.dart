import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_balance_widget.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_row.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_sidebar.dart';
import './controller/golden_egg_ticket_collection_controller.dart';
import './widgets/event_overlay_widget.dart';
import './widgets/game_card_widget.dart';

class GoldenEggTicketCollectionScreenInitialPage extends StatelessWidget {
  GoldenEggTicketCollectionScreenInitialPage({Key? key}) : super(key: key);

  GoldenEggTicketCollectionController controller = Get.put(
      GoldenEggTicketCollectionController()); // Modified: Fixed controller instantiation

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                _buildTopSection(),
                SizedBox(height: 41.h),
                _buildActionButtons(),
                SizedBox(height: 11.h),
                _buildMainContent(),
                SizedBox(height: 100.h),
              ],
            ),
          ),
          Obx(() => controller.showEventOverlay.value
              ? EventOverlayWidget(
                  onClosePressed: () => controller.closeEventOverlay(),
                  onClaimPressed: () => controller.claimReward(),
                )
              : SizedBox.shrink()),
        ],
      ),
    );
  }

  Widget _buildTopSection() {
    return Container(
      width: double.maxFinite,
      child: Column(
        children: [
          CustomAppBar(
            height: 68.h,
            backgroundImagePath: ImageConstant
                .img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi2,
            overlayImagePath: ImageConstant
                .img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi1,
            showProfile: true,
            profileImagePath: ImageConstant.img112,
            profileText: 'Many benefits for newcomers',
            showStars: true,
            starCount: 5,
            showDownloadButton: true,
            downloadButtonText: 'Download',
            showCloseButton: true,
            onDownloadPressed: () => controller.handleDownload(),
            onClosePressed: () => controller.closeBanner(),
          ),
          SizedBox(height: 8.h),
          _buildLogoAndBalance(),
        ],
      ),
    );
  }

  Widget _buildLogoAndBalance() {
    return Container(
      width: double.maxFinite,
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
            amount: controller.balance.value ?? '₱1980.00',
            onActionTap: () => controller.addFunds(),
          ),
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
              onPressed: () => controller.handleWithdrawal(),
            ),
          ),
          SizedBox(width: 5.h),
          Expanded(
            child: CustomButton(
              text: 'Deposit',
              iconPath: ImageConstant.imgVectorWhiteA70011x16,
              gradientColors: [Color(0xFF76CD00), Color(0xFF478A03)],
              height: 36.h,
              onPressed: () => controller.handleDeposit(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainContent() {
    return Container(
      width: double.maxFinite,
      child: Column(
        children: [
          _buildNotificationBanner(),
          SizedBox(height: 16.h),
          _buildContentWithSidebar(),
          SizedBox(height: 16.h),
          _buildVipSection(),
        ],
      ),
    );
  }

  Widget _buildNotificationBanner() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
      padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 8.h),
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
              style: TextStyleHelper.instance.body14BoldArial,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img1,
            height: 16.h,
            width: 16.h,
          ),
          SizedBox(width: 17.h),
          Text(
            'The recharge',
            style: TextStyleHelper.instance.body14BoldArial,
          ),
        ],
      ),
    );
  }

  Widget _buildContentWithSidebar() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSidebar(),
        SizedBox(width: 11.h),
        Expanded(
          child: Column(
            children: [
              _buildGameGrid(),
              SizedBox(height: 16.h),
              _buildMaskImage(),
            ],
          ),
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
      onItemTap: (index) => controller.onSidebarTap(index),
    );
  }

  Widget _buildGameGrid() {
    return Container(
      padding: EdgeInsets.only(right: 15.h),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 9.h,
          mainAxisSpacing: 20.h,
          childAspectRatio: 0.88,
        ),
        itemCount: controller.gameItems.length,
        itemBuilder: (context, index) {
          return GameCardWidget(
            gameItem: controller.gameItems[index],
            onTap: () => controller.onGameTap(controller.gameItems[index]),
          );
        },
      ),
    );
  }

  Widget _buildVipSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: CustomImageRow(
        imageList: [
          ImageConstant.img,
          ImageConstant.img56x94,
          ImageConstant.imgVip,
        ],
        spacing: 26.h,
        imageWidth: 94.h,
        imageHeight: 56.h,
      ),
    );
  }

  Widget _buildMaskImage() {
    return Container(
      padding: EdgeInsets.only(right: 15.h),
      child: CustomImageView(
        imagePath: ImageConstant.imgMaskGroup,
        height: 130.h,
        width: 345.h,
        fit: BoxFit.cover,
      ),
    );
  }
}
