import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_bottom_nav_bar.dart';
import '../../../../widgets/custom_currency_display.dart';
import '../../widgets/custom_image_view.dart';
import './controller/narad_gaming_hub_home_controller.dart';
import './widgets/game_item_widget.dart';
import './widgets/overlay_notification_widget.dart';
import './widgets/side_navigation_item_widget.dart';

class NaradGamingHubHomeScreen extends GetWidget<NaradGamingHubHomeController> {
  const NaradGamingHubHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: SizedBox(
        height: 958.h,
        width: double.maxFinite,
        child: Stack(
          children: [
            _buildMainContent(),
            _buildOverlayNotifications(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  Widget _buildMainContent() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildTopPromotionalBanner(),
          SizedBox(height: 8.h),
          _buildLogoAndBalanceSection(),
          SizedBox(height: 25.h),
          _buildActionButtons(),
          SizedBox(height: 8.h),
          _buildMainBanner(),
          SizedBox(height: 17.h),
          _buildScrollingTextBanner(),
          SizedBox(height: 16.h),
          _buildCollectSection(),
          SizedBox(height: 6.h),
          _buildJackpotSection(),
          SizedBox(height: 10.h),
          _buildGameContentArea(),
          SizedBox(height: 350.h),
        ],
      ),
    );
  }

  Widget _buildTopPromotionalBanner() {
    return CustomAppBar(
      appBarType: CustomAppBarType.promotional,
      height: 68.h,
      backgroundImage:
          ImageConstant.img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi2,
      overlayImage:
          ImageConstant.img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi1,
      appIcon: ImageConstant.img112,
      title: 'Many benefits for newcomers',
      showStars: true,
      starCount: 5,
      showDownloadButton: true,
      downloadButtonText: 'Download',
      showCloseButton: true,
      onDownloadTap: () => controller.onDownloadTap(),
      onCloseTap: () => controller.onCloseTap(),
    );
  }

  Widget _buildLogoAndBalanceSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLogowj93128x78,
            height: 28.h,
            width: 78.h,
          ),
          CustomCurrencyDisplay(
            price: '₱1980.00',
            onRefresh: () => controller.onRefreshBalance(),
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
          Expanded(
            child: Container(
              height: 36.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFffc61e), Color(0xFFff9f00)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(2.h),
              ),
              child: Material(
                color: appTheme.transparentCustom,
                child: InkWell(
                  onTap: () => controller.onWithdrawalTap(),
                  borderRadius: BorderRadius.circular(2.h),
                  child: Center(
                    child: Text(
                      'Withdrawal',
                      style: TextStyleHelper.instance.body14Bold2,
                    ),
                  ),
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
                  colors: [Color(0xFF76cd00), Color(0xFF478a03)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(2.h),
              ),
              child: Material(
                color: appTheme.transparentCustom,
                child: InkWell(
                  onTap: () => controller.onDepositTap(),
                  borderRadius: BorderRadius.circular(2.h),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgVectorWhiteA70011x16,
                          height: 11.h,
                          width: 16.h,
                        ),
                        SizedBox(width: 8.h),
                        Text(
                          'Deposit',
                          style: TextStyleHelper.instance.body14Bold2,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainBanner() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.h),
        child: CustomImageView(
          imagePath: ImageConstant.img,
          height: 130.h,
          width: 345.h,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildScrollingTextBanner() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Container(
        height: 34.h,
        width: 345.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          borderRadius: BorderRadius.circular(17.h),
        ),
        padding: EdgeInsets.symmetric(horizontal: 8.h),
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
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Text(
                      '🔥The recharge of the🔥',
                      style: TextStyleHelper.instance.body14Bold2
                          .copyWith(color: appTheme.colorFF85D4),
                    ),
                    SizedBox(width: 8.h),
                    CustomImageView(
                      imagePath: ImageConstant.img1Red900,
                      height: 16.h,
                      width: 16.h,
                    ),
                    SizedBox(width: 8.h),
                    Text(
                      'The recharge',
                      style: TextStyleHelper.instance.body14Bold2
                          .copyWith(color: appTheme.colorFF85D4),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCollectSection() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup1084,
            height: 108.h,
            width: 72.h,
          ),
          Positioned(
            top: 7.h,
            left: 16.h,
            child: CustomImageView(
              imagePath: ImageConstant.img11,
              height: 36.h,
              width: 36.h,
            ),
          ),
          Positioned(
            bottom: 14.h,
            left: 13.h,
            child: Text(
              'Collect',
              style: TextStyleHelper.instance.body12Bold2
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildJackpotSection() {
    return Padding(
      padding: EdgeInsets.only(left: 76.h, right: 17.h),
      child: Container(
        height: 44.h,
        width: 282.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF072700),
              appTheme.colorFF1546,
              Color(0xFF082701)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          border: Border.all(color: appTheme.colorFF786A),
          borderRadius: BorderRadius.circular(4.h),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 1.h,
              left: 1.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgIntersect,
                height: 42.h,
                width: 280.h,
              ),
            ),
            Positioned(
              top: -12.h,
              left: 1.h,
              child: CustomImageView(
                imagePath: ImageConstant.img155x70,
                height: 55.h,
                width: 70.h,
              ),
            ),
            Positioned(
              top: -14.h,
              left: 82.h,
              child: CustomImageView(
                imagePath: ImageConstant.img119x31,
                height: 19.h,
                width: 31.h,
              ),
            ),
            Positioned(
              top: -14.h,
              right: 17.h,
              child: CustomImageView(
                imagePath: ImageConstant.img219x31,
                height: 19.h,
                width: 31.h,
              ),
            ),
            Positioned(
              top: -16.h,
              left: 108.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgJackpot1,
                height: 22.h,
                width: 86.h,
              ),
            ),
            Positioned(
              top: 7.h,
              left: 69.h,
              child: ShaderMask(
                shaderCallback: (bounds) => LinearGradient(
                  colors: [
                    Color(0xFFfff819),
                    appTheme.colorFFFFFE,
                    Color(0xFFfef500)
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ).createShader(bounds),
                child: Text(
                  '14,091,688.88',
                  style: TextStyleHelper.instance.headline24Black
                      .copyWith(letterSpacing: 2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGameContentArea() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSideNavigation(),
        SizedBox(width: 11.h),
        Expanded(
          child: _buildGameGrid(),
        ),
      ],
    );
  }

  Widget _buildSideNavigation() {
    return Column(
      children: [
        _buildHotButton(),
        ...controller.sideNavigationItems
            .map((item) => SideNavigationItemWidget(
                  item: item,
                  onTap: () => controller.onSideNavigationTap(item),
                )),
      ],
    );
  }

  Widget _buildHotButton() {
    return Container(
      width: 66.h,
      height: 64.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFffc61e), Color(0xFFffa001)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8.h),
          bottomLeft: Radius.circular(8.h),
        ),
      ),
      child: Material(
        color: appTheme.transparentCustom,
        child: InkWell(
          onTap: () => controller.onHotButtonTap(),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8.h),
            bottomLeft: Radius.circular(8.h),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 8.h,
                left: 18.h,
                child: CustomImageView(
                  imagePath: ImageConstant.imgVectorDeepOrangeA400,
                  height: 36.h,
                  width: 30.h,
                ),
              ),
              Positioned(
                bottom: 6.h,
                left: 23.h,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF232b32), Color(0xFF25282d)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Text(
                    'Hot',
                    style: TextStyleHelper.instance.body12Bold2
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGameGrid() {
    return Obx(() => GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 9.h,
            mainAxisSpacing: 9.h,
            childAspectRatio: 88 / 104,
          ),
          itemCount: controller.gameItems.length,
          itemBuilder: (context, index) {
            return GameItemWidget(
              gameItem: controller.gameItems[index],
              onTap: () =>
                  controller.onGameItemTap(controller.gameItems[index]),
            );
          },
        ));
  }

  Widget _buildOverlayNotifications() {
    return Obx(() => Stack(
          children: controller.overlayNotifications
              .map(
                (notification) => OverlayNotificationWidget(
                  notification: notification,
                  onTap: () =>
                      controller.onOverlayNotificationTap(notification),
                ),
              )
              .toList(),
        ));
  }

  Widget _buildBottomNavBar() {
    return CustomBottomNavBar(
      items: [
        CustomBottomNavItem(
          title: 'Home',
          routeName: AppRoutes.naradGamingHubHomeScreen,
          icon: ImageConstant.imgVectorLightGreenA70001,
        ),
        CustomBottomNavItem(
          title: 'Promotion',
          routeName: '/promotion',
          icon: ImageConstant.img1BlueGray40020x20,
        ),
        CustomBottomNavItem(
          title: 'Invite',
          routeName: '/invite',
          elevatedIcon: ImageConstant.imgInvite1,
        ),
        CustomBottomNavItem(
          title: 'Deposit',
          routeName: '/deposit',
          icon: ImageConstant.img1BlueGray40020x19,
        ),
        CustomBottomNavItem(
          title: 'Teams',
          routeName: '/teams',
          icon: ImageConstant.img1BlueGray400,
        ),
      ],
      selectedIndex: 0,
      onChanged: (index) => controller.onBottomNavChanged(index),
    );
  }
}
