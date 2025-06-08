import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_currency_display.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/jetbet_gaming_hub_controller.dart';
import './widgets/game_card_widget.dart';
import './widgets/promotional_card_widget.dart';
import './widgets/sidebar_category_widget.dart';

// Modified: Fixed import path

class JetbetGamingHubScreenInitialPage extends StatelessWidget {
  JetbetGamingHubScreenInitialPage({Key? key}) : super(key: key);

  JetbetGamingHubController controller = Get.put(JetbetGamingHubController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(68.h),
        child: CustomAppBar(
          appBarType: CustomAppBarType.promotional,
          backgroundImage: ImageConstant
              .img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi2,
          overlayImage: ImageConstant
              .img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi1,
          appIcon: ImageConstant.img112,
          title: 'Many benefits for newcomers',
          showStars: true,
          starCount: 5,
          showDownloadButton: true,
          downloadButtonText: 'Download',
          showCloseButton: true,
          onDownloadTap: () => controller.onDownloadTap(),
          onCloseTap: () => controller.onCloseTap(),
        ),
      ),
      backgroundColor: appTheme.colorFF1E20,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBalanceSection(),
            _buildDownloadBanner(),
            _buildNotificationBanner(),
            _buildJackpotSection(),
            _buildMainContentArea(),
          ],
        ),
      ),
    );
  }

  Widget _buildBalanceSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h).copyWith(top: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLogowj93128x78,
            height: 28.h,
            width: 78.h,
          ),
          SizedBox(height: 5.h),
          CustomCurrencyDisplay(
            price: '₱1980.00',
            onRefresh: () => controller.onRefreshBalance(),
          ),
          SizedBox(height: 4.h),
          _buildActionButtons(),
        ],
      ),
    );
  }

  Widget _buildActionButtons() {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 36.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFFFC61E), Color(0xFFFF9F00)],
              ),
              borderRadius: BorderRadius.circular(2.h),
            ),
            child: Center(
              child: Text(
                'Withdrawal',
                style: TextStyleHelper.instance.body14BoldArial,
              ),
            ),
          ),
        ),
        SizedBox(width: 5.h),
        Expanded(
          child: Container(
            height: 36.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF76CD00), Color(0xFF478A03)],
              ),
              borderRadius: BorderRadius.circular(2.h),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgVectorWhiteA70011x16,
                  height: 11.h,
                  width: 16.h,
                ),
                SizedBox(width: 6.h),
                Text(
                  'Deposit',
                  style: TextStyleHelper.instance.body14BoldArial,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDownloadBanner() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h).copyWith(top: 8.h),
      child: CustomImageView(
        imagePath: ImageConstant.img,
        height: 130.h,
        width: double.maxFinite,
        fit: BoxFit.cover,
        radius: BorderRadius.circular(8.h),
      ),
    );
  }

  Widget _buildNotificationBanner() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h).copyWith(top: 17.h),
      padding: EdgeInsets.all(7.h),
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
              style: TextStyleHelper.instance.body14BoldArial
                  .copyWith(color: appTheme.colorFF85D4),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img1Red900,
            height: 16.h,
            width: 16.h,
          ),
          SizedBox(width: 11.h),
          Text(
            'The recharge',
            style: TextStyleHelper.instance.body14BoldArial
                .copyWith(color: appTheme.colorFF85D4),
          ),
        ],
      ),
    );
  }

  Widget _buildJackpotSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h).copyWith(top: 17.h),
      child: Row(
        children: [
          _buildCollectButton(),
          SizedBox(width: 11.h),
          Expanded(
            child: _buildJackpotDisplay(),
          ),
        ],
      ),
    );
  }

  Widget _buildCollectButton() {
    return Container(
      width: 72.h,
      height: 108.h,
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup1084,
            height: 108.h,
            width: 72.h,
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img11,
                  height: 36.h,
                  width: 36.h,
                ),
                SizedBox(height: 1.h),
                Text(
                  'Collect',
                  style: TextStyleHelper.instance.body12BoldArial
                      .copyWith(color: appTheme.colorFF8089),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildJackpotDisplay() {
    return Container(
      height: 44.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF072700), appTheme.colorFF1546, Color(0xFF082701)],
        ),
        border: Border.all(color: appTheme.colorFF786A),
        borderRadius: BorderRadius.circular(4.h),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 1.h,
            top: 1.h,
            right: 1.h,
            bottom: 1.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgIntersect,
              fit: BoxFit.cover,
              radius: BorderRadius.circular(3.h),
            ),
          ),
          Positioned(
            left: 1.h,
            top: -12.h,
            child: CustomImageView(
              imagePath: ImageConstant.img155x70,
              height: 55.h,
              width: 70.h,
            ),
          ),
          Positioned(
            left: 82.h,
            top: -12.h,
            child: CustomImageView(
              imagePath: ImageConstant.img119x31,
              height: 19.h,
              width: 31.h,
            ),
          ),
          Positioned(
            right: 10.h,
            top: -12.h,
            child: CustomImageView(
              imagePath: ImageConstant.img219x31,
              height: 19.h,
              width: 31.h,
            ),
          ),
          Positioned(
            left: 108.h,
            top: -14.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgJackpot1,
              height: 22.h,
              width: 86.h,
            ),
          ),
          Positioned(
            left: 69.h,
            top: 7.h,
            child: ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFFFF819),
                  appTheme.colorFFFFFE,
                  Color(0xFFFEF500)
                ],
              ).createShader(bounds),
              child: Text(
                '14,091,688.88',
                style: TextStyleHelper.instance.headline24BlackArial
                    .copyWith(letterSpacing: 2.h),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainContentArea() {
    return Container(
      margin: EdgeInsets.only(top: 68.h),
      child: Stack(
        children: [
          _buildSidebar(),
          _buildGameGrid(),
          _buildPromotionalCards(),
        ],
      ),
    );
  }

  Widget _buildSidebar() {
    return Positioned(
      left: 0,
      top: 0,
      child: Obx(
        () => Column(
          children: controller.sidebarCategories
              .asMap()
              .entries
              .map(
                (entry) => SidebarCategoryWidget(
                  category: entry.value,
                  isSelected: entry.key == 0,
                  onTap: () => controller.onCategoryTap(entry.key),
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  Widget _buildGameGrid() {
    return Container(
      margin: EdgeInsets.only(left: 77.h, right: 15.h),
      child: Obx(
        () => GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 9.h,
            mainAxisSpacing: 6.h,
            childAspectRatio: 0.85,
          ),
          itemCount: controller.gameCards.length,
          itemBuilder: (context, index) {
            return GameCardWidget(
              gameCard: controller.gameCards[index],
              onTap: () => controller.onGameCardTap(index),
            );
          },
        ),
      ),
    );
  }

  Widget _buildPromotionalCards() {
    return Stack(
      children: [
        Positioned(
          right: 7.h,
          top: 8.h,
          child: Column(
            children: [
              PromotionalCardWidget(
                cardData: controller.promotionalCards.isNotEmpty
                    ? controller.promotionalCards[0]
                    : null,
                onTap: () => controller.onPromotionalCardTap(0),
              ),
              SizedBox(height: 2.h),
              PromotionalCardWidget(
                cardData: controller.promotionalCards.length > 1
                    ? controller.promotionalCards[1]
                    : null,
                onTap: () => controller.onPromotionalCardTap(1),
              ),
            ],
          ),
        ),
        Positioned(
          left: 63.h,
          top: 169.h,
          child: PromotionalCardWidget(
            cardData: controller.promotionalCards.length > 2
                ? controller.promotionalCards[2]
                : null,
            onTap: () => controller.onPromotionalCardTap(2),
          ),
        ),
        Positioned(
          left: 245.h,
          top: 144.h,
          child: CustomImageView(
            imagePath: ImageConstant.img410,
            height: 150.h,
            width: 130.h,
          ),
        ),
        Positioned(
          left: 122.h,
          top: 292.h,
          child: PromotionalCardWidget(
            cardData: controller.promotionalCards.length > 3
                ? controller.promotionalCards[3]
                : null,
            onTap: () => controller.onPromotionalCardTap(3),
          ),
        ),
        Positioned(
          right: 7.h,
          top: 330.h,
          child: PromotionalCardWidget(
            cardData: controller.promotionalCards.length > 4
                ? controller.promotionalCards[4]
                : null,
            onTap: () => controller.onPromotionalCardTap(4),
          ),
        ),
      ],
    );
  }
}
