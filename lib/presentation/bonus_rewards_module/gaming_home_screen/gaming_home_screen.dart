import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import './controller/gaming_home_controller.dart';
import './widgets/download_modal_widget.dart';
import './widgets/game_item_widget.dart';
import './widgets/side_navigation_item_widget.dart';

class GamingHomeScreen extends StatelessWidget {
  GamingHomeScreen({Key? key}) : super(key: key);

  final GamingHomeController controller = Get.put(GamingHomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: Obx(() {
        return Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  _buildTopPromotionalBanner(),
                  SizedBox(height: 8.h),
                  _buildAppBarSection(),
                  SizedBox(height: 8.h),
                  _buildActionButtons(),
                  SizedBox(height: 8.h),
                  _buildMainGameImage(),
                  SizedBox(height: 17.h),
                  _buildNotificationBanner(),
                  SizedBox(height: 30.h),
                  _buildJackpotSection(),
                  SizedBox(height: 8.h),
                  _buildCollectSection(),
                  SizedBox(height: 58.h),
                  _buildGameGrid(),
                  SizedBox(height: 100.h),
                ],
              ),
            ),
            _buildSideNavigation(),
            _buildPromotionalImage(),
            if (controller.showDownloadModal.value)
              DownloadModalWidget(
                onClose: () => controller.showDownloadModal.value = false,
              ),
          ],
        );
      }),
    );
  }

  Widget _buildTopPromotionalBanner() {
    return Container(
      width: double.infinity,
      height: 68.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFF76CD00), Color(0xFF478A03)],
        ),
      ),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant
                .img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi2,
            height: 68.h,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          CustomImageView(
            imagePath: ImageConstant
                .img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi1,
            height: 68.h,
            width: 279.h,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 9.h,
            left: 12.h,
            child: CustomImageView(
              imagePath: ImageConstant.img112,
              height: 50.h,
              width: 50.h,
            ),
          ),
          Positioned(
            top: 41.h,
            left: 68.h,
            child: Row(
              children: List.generate(5, (index) {
                return Container(
                  margin: EdgeInsets.only(right: 2.h),
                  width: 15.h,
                  height: 15.h,
                  decoration: BoxDecoration(
                    color: appTheme.colorFFFFF4,
                    shape: BoxShape.circle,
                  ),
                );
              }),
            ),
          ),
          Positioned(
            top: 10.h,
            left: 68.h,
            child: Text(
              'MANY BENEFITS FOR NEWCOMERS',
              style: TextStyleHelper.instance.body12BoldArial
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
          Positioned(
            top: 18.h,
            right: 30.h,
            child: Container(
              width: 97.h,
              height: 32.h,
              decoration: BoxDecoration(
                color: appTheme.whiteCustom,
                borderRadius: BorderRadius.circular(16.h),
              ),
              child: Center(
                child: Text(
                  'Download',
                  style: TextStyleHelper.instance.body14BoldNotoSans,
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 26.h,
            child: GestureDetector(
              onTap: () => controller.closeBanner(),
              child: CustomImageView(
                imagePath: ImageConstant.imgVectorLightGreen400,
                height: 26.h,
                width: 26.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAppBarSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
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
                height: 16.h,
                width: 15.h,
              ),
              SizedBox(width: 6.h),
              Text(
                '₱${controller.balance.value}',
                style: TextStyleHelper.instance.title16BoldArial
                    .copyWith(color: appTheme.colorFFFFC6),
              ),
              SizedBox(width: 6.h),
              GestureDetector(
                onTap: () => controller.refreshBalance(),
                child: CustomImageView(
                  imagePath: ImageConstant.img1LightGreenA700,
                  height: 14.h,
                  width: 16.h,
                ),
              ),
            ],
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
              variant: CustomButtonVariant.gradient1,
              height: 36.h,
              onPressed: () => controller.navigateToWithdrawal(),
            ),
          ),
          SizedBox(width: 5.h),
          Expanded(
            child: CustomButton(
              text: 'Deposit',
              iconPath: ImageConstant.imgVectorWhiteA700,
              variant: CustomButtonVariant.gradient2,
              height: 36.h,
              onPressed: () => controller.navigateToDeposit(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainGameImage() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
      child: CustomImageView(
        imagePath: ImageConstant.img130x345,
        height: 130.h,
        width: 345.h,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildNotificationBanner() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
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
              '🔥 The recharge of the🔥',
              style: TextStyleHelper.instance.body14Arial
                  .copyWith(color: appTheme.colorFF85D4),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img1Red90001,
            height: 16.h,
            width: 16.h,
          ),
          SizedBox(width: 8.h),
          Text(
            'The recharge',
            style: TextStyleHelper.instance.body14BoldArial
                .copyWith(color: appTheme.colorFF85D4),
          ),
          SizedBox(width: 12.h),
        ],
      ),
    );
  }

  Widget _buildJackpotSection() {
    return Container(
      margin: EdgeInsets.only(left: 76.h, right: 17.h),
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
          CustomImageView(
            imagePath: ImageConstant.imgIntersect,
            height: 42.h,
            width: 280.h,
            margin: EdgeInsets.all(1.h),
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
            right: 7.h,
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
            child: Text(
              '14,091,688.88',
              style: TextStyleHelper.instance.headline24BlackArial,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCollectSection() {
    return Positioned(
      left: 0,
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
            top: 44.h,
            left: 13.h,
            child: Text(
              'Collect',
              style: TextStyleHelper.instance.body12BoldArial
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGameGrid() {
    return Container(
      margin: EdgeInsets.only(left: 77.h, right: 10.h),
      child: Obx(() {
        return Column(
          children: [
            for (int row = 0;
                row < (controller.gameItems.length / 3).ceil();
                row++)
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (int col = 0; col < 3; col++)
                        if (row * 3 + col < controller.gameItems.length)
                          GameItemWidget(
                            gameModel: controller.gameItems[row * 3 + col],
                            onTap: () => controller.selectGame(
                                controller.gameItems[row * 3 + col]),
                          )
                        else
                          SizedBox(width: 88.h),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (int col = 0; col < 3; col++)
                        if (row * 3 + col < controller.gameItems.length)
                          SizedBox(
                            width: 88.h,
                            child: Text(
                              controller
                                      .gameItems[row * 3 + col].title?.value ??
                                  '',
                              style:
                                  TextStyleHelper.instance.body13BoldNotoSans,
                              textAlign: TextAlign.center,
                            ),
                          )
                        else
                          SizedBox(width: 88.h),
                    ],
                  ),
                  SizedBox(height: 30.h),
                ],
              ),
          ],
        );
      }),
    );
  }

  Widget _buildSideNavigation() {
    return Positioned(
      left: 0,
      top: 418.h,
      child: Obx(() {
        return Column(
          children: controller.sideNavigationItems.map((item) {
            return Container(
              margin: EdgeInsets.only(bottom: 4.h),
              child: SideNavigationItemWidget(
                navigationModel: item,
                onTap: () => controller.selectSideNavigation(item),
              ),
            );
          }).toList(),
        );
      }),
    );
  }

  Widget _buildPromotionalImage() {
    return Positioned(
      top: 397.h,
      right: 10.h,
      child: CustomImageView(
        imagePath: ImageConstant.img410150x130,
        height: 150.h,
        width: 130.h,
      ),
    );
  }
}
