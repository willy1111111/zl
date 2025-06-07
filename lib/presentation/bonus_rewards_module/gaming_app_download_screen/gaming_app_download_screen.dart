import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_bottom_navigation_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import './controller/gaming_app_download_controller.dart';
import './widgets/app_download_modal_widget.dart';
import './widgets/game_grid_item_widget.dart';
import './widgets/side_navigation_item_widget.dart';

class GamingAppDownloadScreen extends GetWidget<GamingAppDownloadController> {
  const GamingAppDownloadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  _buildHeader(),
                  _buildActionButtons(),
                  _buildPromotionalBanner(),
                  _buildLiveChatNotification(),
                  _buildJackpotSection(),
                  _buildMainContent(),
                  SizedBox(height: 80.h),
                ],
              ),
            ),
            _buildSideNavigation(),
            Obx(() => controller.isModalVisible.value
                ? AppDownloadModalWidget()
                : SizedBox.shrink()),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigation(),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: EdgeInsets.all(16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLogowj93128x78,
            height: 28.h,
            width: 78.h,
          ),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup736,
                height: 15.h,
                width: 16.h,
              ),
              SizedBox(width: 8.h),
              Obx(() => Text(
                    controller.gamingAppModel.value?.balance?.value ??
                        'R\$1980.00',
                    style: TextStyleHelper.instance.title16Bold
                        .copyWith(color: appTheme.colorFFFFB9),
                  )),
              SizedBox(width: 8.h),
              CustomImageView(
                imagePath: ImageConstant.img1LightGreenA700,
                height: 16.h,
                width: 14.h,
                onTap: () => controller.refreshBalance(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: 'Withdrawal',
              variant: CustomButtonVariant.gradient1,
              height: 36.h,
              onPressed: () => controller.onWithdrawalTap(),
            ),
          ),
          SizedBox(width: 8.h),
          Expanded(
            child: CustomButton(
              text: 'Deposit',
              iconPath: ImageConstant.imgVectorWhiteA700,
              variant: CustomButtonVariant.gradient2,
              height: 36.h,
              onPressed: () => controller.onDepositTap(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPromotionalBanner() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.h),
      child: CustomImageView(
        imagePath: ImageConstant.img130x345,
        width: double.infinity,
        height: 130.h,
        fit: BoxFit.cover,
        onTap: () => controller.onPromotionalBannerTap(),
      ),
    );
  }

  Widget _buildLiveChatNotification() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.h),
      padding: EdgeInsets.all(8.h),
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
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.colorFF85D4),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img1Red90001,
            height: 16.h,
            width: 16.h,
            onTap: () => controller.closeLiveChatNotification(),
          ),
        ],
      ),
    );
  }

  Widget _buildJackpotSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.h),
      child: Stack(
        children: [
          Container(
            height: 44.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF072700),
                  appTheme.colorFF1546,
                  Color(0xFF082701)
                ],
              ),
              border: Border.all(color: appTheme.colorFF786A),
              borderRadius: BorderRadius.circular(4.h),
            ),
            child: Stack(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIntersect,
                  width: double.infinity,
                  height: 44.h,
                  fit: BoxFit.cover,
                ),
                Center(
                  child: Obx(() => Text(
                        controller.gamingAppModel.value?.jackpotAmount?.value ??
                            '14,091,688.88',
                        style: TextStyleHelper.instance.headline24Black
                            .copyWith(letterSpacing: 2),
                      )),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup1084,
              height: 72.h,
              width: 108.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSideNavigation() {
    return Positioned(
      left: 0,
      top: 350.h,
      child: Obx(() => Column(
            children: List.generate(
              controller.sideNavigationItems.length,
              (index) => SideNavigationItemWidget(
                sideNavigationItem: controller.sideNavigationItems[index],
                onTap: () => controller.onSideNavigationTap(index),
              ),
            ),
          )),
    );
  }

  Widget _buildMainContent() {
    return Container(
      margin: EdgeInsets.only(left: 77.h, right: 16.h),
      child: Obx(() => GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 8.h,
              mainAxisSpacing: 8.h,
              childAspectRatio: 0.8,
            ),
            itemCount: controller.gameItems.length,
            itemBuilder: (context, index) {
              return GameGridItemWidget(
                gameItem: controller.gameItems[index],
                onTap: () => controller.onGameItemTap(index),
              );
            },
          )),
    );
  }

  Widget _buildBottomNavigation() {
    return CustomBottomNavigationBar(
      bottomBarItemList: controller.bottomNavigationItems,
      selectedIndex: 0,
      onChanged: (index) => controller.onBottomNavigationTap(index),
      backgroundColor: appTheme.colorFF232B,
      height: 64.h,
      hasFloatingInvite: true,
    );
  }
}
