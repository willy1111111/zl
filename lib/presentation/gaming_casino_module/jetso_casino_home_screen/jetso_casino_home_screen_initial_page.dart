import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/jetso_casino_home_controller.dart';
import './widgets/game_card_widget.dart';
import './widgets/sidebar_nav_item_widget.dart';

// Modified: Fixed import path

class JetsoCasinoHomeScreenInitialPage extends StatelessWidget {
  JetsoCasinoHomeScreenInitialPage({Key? key}) : super(key: key);

  JetsoCasinoHomeController controller = Get.put(JetsoCasinoHomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Container(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildBalanceSection(),
              SizedBox(height: 5.h),
              _buildActionButtons(),
              SizedBox(height: 8.h),
              _buildDownloadBanner(),
              SizedBox(height: 17.h),
              _buildPromotionalAlert(),
              SizedBox(height: 16.h),
              _buildMainContent(),
              SizedBox(height: 54.h),
              _buildActivityBanner(),
              SizedBox(height: 163.h),
              _buildFooterSection(),
            ],
          ),
        ),
      ),
    );
  }

  CustomAppBar _buildAppBar() {
    return CustomAppBar(
      backgroundGradient: LinearGradient(
        colors: [Color(0xFF76CD00), Color(0xFF478A03)],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      ),
      backgroundImage:
          ImageConstant.img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi2,
      overlayImage:
          ImageConstant.img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi1,
      gameIcon: ImageConstant.img112,
      showStarRating: true,
      promotionalText: 'Many benefits for newcomers',
      showDownloadButton: true,
      showCloseButton: true,
      height: 68.h,
      onDownloadTap: () => controller.onDownloadTap(),
      onCloseTap: () => controller.onCloseTap(),
    );
  }

  Widget _buildBalanceSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 18.h),
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
              SizedBox(width: 22.h),
              Obx(() => Text(
                    controller.balanceAmount.value ?? '₱1980.00',
                    style: TextStyleHelper.instance.title16Bold
                        .copyWith(color: appTheme.colorFFFFC6),
                  )),
              SizedBox(width: 22.h),
              GestureDetector(
                onTap: () => controller.onRefreshBalance(),
                child: CustomImageView(
                  imagePath: ImageConstant.img1LightGreenA700,
                  height: 16.h,
                  width: 14.h,
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
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: 'Withdrawal',
              buttonVariant: CustomButtonVariant.gradientOrange,
              height: 36.h,
              onPressed: () => controller.onWithdrawalTap(),
            ),
          ),
          SizedBox(width: 5.h),
          Expanded(
            child: CustomButton(
              text: 'Deposit',
              leftIcon: ImageConstant.imgVectorWhiteA700,
              buttonVariant: CustomButtonVariant.gradientGreen,
              height: 36.h,
              onPressed: () => controller.onDepositTap(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDownloadBanner() {
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

  Widget _buildPromotionalAlert() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
      height: 34.h,
      width: 345.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(17.h),
      ),
      padding: EdgeInsets.symmetric(horizontal: 6.h),
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
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '🔥The recharge of th',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.colorFF85D4),
                  ),
                  TextSpan(
                    text: 'e🔥',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFF85D4),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img1Red900,
            height: 16.h,
            width: 16.h,
          ),
          SizedBox(width: 10.h),
          Text(
            'The recharge',
            style: TextStyleHelper.instance.body14Bold
                .copyWith(color: appTheme.colorFF85D4),
          ),
        ],
      ),
    );
  }

  Widget _buildMainContent() {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSidebarNavigation(),
          Expanded(
            child: Column(
              children: [
                _buildJackpotSection(),
                SizedBox(height: 14.h),
                _buildGamesGrid(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSidebarNavigation() {
    return Container(
      width: 66.h,
      child: Column(
        children: [
          Container(
            height: 108.h,
            child: Stack(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFrame1084,
                  height: 108.h,
                  width: 72.h,
                ),
                Positioned(
                  left: 16.h,
                  top: 7.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.img136x36,
                    height: 36.h,
                    width: 36.h,
                  ),
                ),
                Positioned(
                  left: 13.h,
                  top: 44.h,
                  child: Text(
                    'Collect',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.colorFF8089),
                  ),
                ),
              ],
            ),
          ),
          Obx(() => Column(
                children: controller.sidebarItems.map((item) {
                  return SidebarNavItemWidget(
                    sidebarItem: item,
                    onTap: () => controller.onSidebarItemTap(item),
                  );
                }).toList(),
              )),
        ],
      ),
    );
  }

  Widget _buildJackpotSection() {
    return Container(
      margin: EdgeInsets.only(left: 10.h, right: 15.h),
      height: 44.h,
      width: 282.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF072700), appTheme.colorFF1546, Color(0xFF082701)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        border: Border.all(color: appTheme.colorFF786A),
        borderRadius: BorderRadius.circular(4.h),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 1.h,
            top: 1.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgIntersect,
              height: 42.h,
              width: 280.h,
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
            left: 108.h,
            top: -14.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgJackpot1,
              height: 22.h,
              width: 86.h,
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
            left: 189.h,
            top: -12.h,
            child: CustomImageView(
              imagePath: ImageConstant.img219x31,
              height: 19.h,
              width: 31.h,
            ),
          ),
          Positioned(
            left: 69.h,
            top: 7.h,
            child: Obx(() => Text(
                  controller.jackpotAmount.value ?? '14,091,688.88',
                  style: TextStyleHelper.instance.headline24Black
                      .copyWith(letterSpacing: 2.h),
                )),
          ),
        ],
      ),
    );
  }

  Widget _buildGamesGrid() {
    return Container(
      margin: EdgeInsets.only(left: 10.h, right: 15.h),
      width: 282.h,
      child: Obx(() => GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 9.h,
              mainAxisSpacing: 18.h,
              childAspectRatio: 0.65,
            ),
            itemCount: controller.gamesList.length,
            itemBuilder: (context, index) {
              return GameCardWidget(
                gameModel: controller.gamesList[index],
                onTap: () => controller.onGameTap(controller.gamesList[index]),
              );
            },
          )),
    );
  }

  Widget _buildActivityBanner() {
    return Container(
      margin: EdgeInsets.only(left: 244.h, right: 7.h),
      height: 108.h,
      width: 124.h,
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant
                .img9850ea1719a3a4f48276f1a9b5bd953ffb29de1510c16alsgdt41,
            height: 108.h,
            width: 124.h,
          ),
          Positioned(
            left: 33.h,
            top: 85.h,
            child: Text(
              'Activity',
              style: TextStyleHelper.instance.title16Black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooterSection() {
    return Container(
      width: double.maxFinite,
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLogowj93128x78,
            height: 28.h,
            width: 78.h,
          ),
          SizedBox(height: 14.h),
          _buildProviderLogos(),
          SizedBox(height: 14.h),
          _buildDisclaimerText(),
          SizedBox(height: 55.h),
          _buildContactEmail(),
          SizedBox(height: 26.h),
          _buildSocialMediaIcons(),
          SizedBox(height: 37.h),
          _buildCopyright(),
        ],
      ),
    );
  }

  Widget _buildProviderLogos() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 19.h),
      width: 337.h,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgLogo1, height: 13.h, width: 62.h),
              CustomImageView(
                  imagePath: ImageConstant.imgLogo2, height: 13.h, width: 62.h),
              CustomImageView(
                  imagePath: ImageConstant.imgLogo3, height: 13.h, width: 62.h),
              CustomImageView(
                  imagePath: ImageConstant.imgVectorWhiteA70013x62,
                  height: 13.h,
                  width: 62.h),
              CustomImageView(
                  imagePath: ImageConstant.imgLogo5, height: 13.h, width: 62.h),
            ],
          ),
          SizedBox(height: 27.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgYesbingo,
                  height: 13.h,
                  width: 62.h),
              CustomImageView(
                  imagePath: ImageConstant.imgJili, height: 13.h, width: 62.h),
              CustomImageView(
                  imagePath: ImageConstant.imgLogo6, height: 13.h, width: 62.h),
              CustomImageView(
                  imagePath: ImageConstant.imgLogo7, height: 13.h, width: 62.h),
              CustomImageView(
                  imagePath: ImageConstant.imgLogo8, height: 13.h, width: 62.h),
              CustomImageView(
                  imagePath: ImageConstant.imgJdb, height: 13.h, width: 62.h),
            ],
          ),
          SizedBox(height: 27.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgFc, height: 13.h, width: 62.h),
              CustomImageView(
                  imagePath: ImageConstant.imgLogo213x62,
                  height: 13.h,
                  width: 62.h),
              CustomImageView(
                  imagePath: ImageConstant.imgPg, height: 13.h, width: 62.h),
              CustomImageView(
                  imagePath: ImageConstant.imgPp2, height: 13.h, width: 62.h),
              CustomImageView(
                  imagePath: ImageConstant.imgSexybcrt,
                  height: 13.h,
                  width: 62.h),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDisclaimerText() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      width: 343.h,
      child: Text(
        'This site offers a complete experience of the game. To use our website, you must be at least 18 years of age. We are not responsible for providing you with local laws relating to the game. Play responsibly and have fun at wj.com',
        textAlign: TextAlign.center,
        style:
            TextStyleHelper.instance.body12Medium.copyWith(letterSpacing: 1.h),
      ),
    );
  }

  Widget _buildContactEmail() {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Email:',
            style: TextStyleHelper.instance.body12,
          ),
          TextSpan(
            text: ' ',
            style: TextStyleHelper.instance.body12
                .copyWith(color: appTheme.colorFFABB6),
          ),
          TextSpan(
            text: 'wj@gmail.com',
            style: TextStyleHelper.instance.body12
                .copyWith(color: appTheme.colorFF85D4),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialMediaIcons() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 31.h),
      child: Row(
        children: [
          Stack(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse26,
                height: 30.h,
                width: 30.h,
              ),
              Positioned(
                left: 4.h,
                top: 4.h,
                child: Text(
                  '18',
                  style: TextStyleHelper.instance.title16Bold
                      .copyWith(color: appTheme.colorFFFF20),
                ),
              ),
              Positioned(
                right: -11.h,
                top: -1.h,
                child: CustomImageView(
                  imagePath: ImageConstant.imgFrame240,
                  height: 11.h,
                  width: 11.h,
                ),
              ),
            ],
          ),
          SizedBox(width: 9.h),
          Stack(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse26,
                height: 27.h,
                width: 28.h,
              ),
              Positioned(
                left: 3.h,
                top: 5.h,
                child: Text(
                  '18',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFFFF20),
                ),
              ),
              Positioned(
                right: -10.h,
                top: 0.h,
                child: CustomImageView(
                  imagePath: ImageConstant.imgFrame240,
                  height: 10.h,
                  width: 10.h,
                ),
              ),
            ],
          ),
          SizedBox(width: 9.h),
          CustomImageView(
              imagePath: ImageConstant.imgGroup12144,
              height: 27.h,
              width: 28.h),
          SizedBox(width: 9.h),
          CustomImageView(
              imagePath: ImageConstant.imgGroup12145,
              height: 27.h,
              width: 28.h),
          SizedBox(width: 9.h),
          CustomImageView(
              imagePath: ImageConstant.imgGroup12146,
              height: 27.h,
              width: 28.h),
          SizedBox(width: 9.h),
          CustomImageView(
              imagePath: ImageConstant.imgFrame12147,
              height: 27.h,
              width: 28.h),
          SizedBox(width: 9.h),
          CustomImageView(
              imagePath: ImageConstant.imgGroup12148,
              height: 27.h,
              width: 28.h),
          SizedBox(width: 9.h),
          CustomImageView(
              imagePath: ImageConstant.imgGroup12149,
              height: 27.h,
              width: 28.h),
        ],
      ),
    );
  }

  Widget _buildCopyright() {
    return Text(
      '© 2022 wj@gmail.com | All rights reserved.',
      style: TextStyleHelper.instance.body12,
    );
  }
}
