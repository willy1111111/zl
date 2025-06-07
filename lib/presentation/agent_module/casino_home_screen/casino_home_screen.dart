import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/casino_home_controller.dart';
import './widgets/game_item_widget.dart';
import './widgets/sidebar_menu_item_widget.dart';

class CasinoHomeScreen extends StatelessWidget {
  CasinoHomeScreen({Key? key}) : super(key: key);

  final CasinoHomeController controller = Get.put(CasinoHomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildPromotionalBanner(),
              _buildLogoAndBalance(),
              _buildActionButtons(),
              _buildDownloadAppBanner(),
              _buildPromotionalAlert(),
              _buildJackpotSection(),
              _buildMainContent(),
              _buildActivityBanner(),
              _buildMainLogo(),
              _buildProviderLogos(),
              _buildDisclaimer(),
              _buildContactInformation(),
              _buildAgeVerificationAndSocial(),
              _buildCopyright(),
              SizedBox(height: 100.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPromotionalBanner() {
    return Container(
      height: 68.h,
      width: double.infinity,
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
            left: 12.h,
            top: 9.h,
            child: CustomImageView(
              imagePath: ImageConstant.img112,
              height: 50.h,
              width: 50.h,
            ),
          ),
          Positioned(
            left: 68.h,
            top: 41.h,
            child: Row(
              children: List.generate(
                5,
                (index) => Container(
                  width: 15.h,
                  height: 15.h,
                  margin: EdgeInsets.only(right: 17.h),
                  decoration: BoxDecoration(
                    color: appTheme.colorFFFFF4,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 68.h,
            top: 10.h,
            child: Text(
              'MANY BENEFITS FOR NEWCOMERS',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
          Positioned(
            right: 30.h,
            top: 18.h,
            child: CustomButton(
              text: 'Download',
              backgroundColor: appTheme.whiteCustom,
              textColor: appTheme.colorFF478A,
              width: 97.h,
              height: 32.h,
              fontSize: 14.fSize,
              fontWeight: FontWeight.bold,
              borderRadius: 16.h,
              onTap: () => controller.onDownloadTap(),
            ),
          ),
          Positioned(
            right: 17.h,
            top: 4.h,
            child: GestureDetector(
              onTap: () => controller.onCloseTap(),
              child: Stack(
                children: [
                  Container(
                    width: 14.h,
                    height: 14.h,
                    color: appTheme.colorFF478A,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorLightGreen400,
                    height: 26.h,
                    width: 26.h,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLogoAndBalance() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Column(
        children: [
          SizedBox(height: 8.h),
          Row(
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
                  SizedBox(width: 7.h),
                  Obx(() => Text(
                        controller.balanceAmount.value,
                        style: TextStyleHelper.instance.title16Bold
                            .copyWith(color: appTheme.colorFFFFC6),
                      )),
                  SizedBox(width: 20.h),
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
        ],
      ),
    );
  }

  Widget _buildActionButtons() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Column(
        children: [
          SizedBox(height: 4.h),
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  text: 'Withdrawal',
                  gradient: LinearGradient(
                    colors: [Color(0xFFFFC61E), Color(0xFFFF9F00)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  height: 36.h,
                  fontSize: 14.fSize,
                  fontWeight: FontWeight.bold,
                  borderRadius: 2.h,
                  onTap: () => controller.onWithdrawalTap(),
                ),
              ),
              SizedBox(width: 5.h),
              Expanded(
                child: CustomButton(
                  text: 'Deposit',
                  gradient: LinearGradient(
                    colors: [Color(0xFF76CD00), Color(0xFF478A03)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  height: 36.h,
                  fontSize: 14.fSize,
                  fontWeight: FontWeight.bold,
                  borderRadius: 2.h,
                  iconPath: ImageConstant.imgVectorWhiteA700,
                  iconSize: 16.h,
                  onTap: () => controller.onDepositTap(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDownloadAppBanner() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Column(
        children: [
          SizedBox(height: 8.h),
          CustomImageView(
            imagePath: ImageConstant.img130x345,
            height: 130.h,
            width: 345.h,
          ),
        ],
      ),
    );
  }

  Widget _buildPromotionalAlert() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Column(
        children: [
          SizedBox(height: 17.h),
          Container(
            height: 34.h,
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
                SizedBox(width: 12.h),
                Text(
                  'The recharge',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFF85D4),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildJackpotSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Column(
        children: [
          SizedBox(height: 17.h),
          Container(
            height: 72.h,
            child: Stack(
              children: [
                Positioned(
                  left: 61.h,
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
                      borderRadius: BorderRadius.circular(3.h),
                    ),
                    child: Stack(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgIntersect,
                          height: 42.h,
                          width: 280.h,
                          margin: EdgeInsets.all(1.h),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: -14.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFrame1084,
                    height: 108.h,
                    width: 72.h,
                  ),
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
                Positioned(
                  left: 77.h,
                  top: 2.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.img155x70,
                    height: 55.h,
                    width: 70.h,
                  ),
                ),
                Positioned(
                  left: 158.h,
                  top: 2.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.img119x31,
                    height: 19.h,
                    width: 31.h,
                  ),
                ),
                Positioned(
                  left: 265.h,
                  top: 2.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.img219x31,
                    height: 19.h,
                    width: 31.h,
                  ),
                ),
                Positioned(
                  left: 184.h,
                  top: 0,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgJackpot1,
                    height: 22.h,
                    width: 86.h,
                  ),
                ),
                Positioned(
                  left: 145.h,
                  top: 21.h,
                  child: Obx(() => Text(
                        controller.jackpotAmount.value,
                        style: TextStyleHelper.instance.headline24Black,
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainContent() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSidebarMenu(),
        Expanded(
          child: _buildGamesGrid(),
        ),
      ],
    );
  }

  Widget _buildSidebarMenu() {
    return Container(
      width: 66.h,
      child: Obx(() => Column(
            children: controller.sidebarMenuItems
                .map((item) => SidebarMenuItemWidget(menuItem: item))
                .toList(),
          )),
    );
  }

  Widget _buildGamesGrid() {
    return Padding(
      padding: EdgeInsets.only(left: 11.h, top: 4.h, right: 15.h),
      child: Obx(() => GridView.builder(
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
              return GameItemWidget(gameItem: controller.gameItems[index]);
            },
          )),
    );
  }

  Widget _buildActivityBanner() {
    return Padding(
      padding: EdgeInsets.only(left: 244.h, top: 16.h, right: 15.h),
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
            top: 81.h,
            child: Text(
              'Activity',
              style: TextStyleHelper.instance.title16Black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainLogo() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Column(
        children: [
          SizedBox(height: 42.h),
          Center(
            child: CustomImageView(
              imagePath: ImageConstant.imgLogowj93128x78,
              height: 28.h,
              width: 78.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProviderLogos() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      child: Column(
        children: [
          SizedBox(height: 14.h),
          Obx(() => GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 6,
                  crossAxisSpacing: 6.h,
                  mainAxisSpacing: 6.h,
                  childAspectRatio: 4.8,
                ),
                itemCount: controller.providerLogos.length,
                itemBuilder: (context, index) {
                  return CustomImageView(
                    imagePath: controller.providerLogos[index].value,
                    height: 13.h,
                    width: 62.h,
                    fit: BoxFit.contain,
                  );
                },
              )),
        ],
      ),
    );
  }

  Widget _buildDisclaimer() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        children: [
          SizedBox(height: 14.h),
          Text(
            'This site offers a complete experience of the game. To use our website, you must be at least 18 years of age. We are not responsible for providing you with local laws relating to the game. Play responsibly and have fun at wj.com',
            textAlign: TextAlign.center,
            style: TextStyleHelper.instance.body12Medium
                .copyWith(letterSpacing: 1.0, height: 1.0),
          ),
        ],
      ),
    );
  }

  Widget _buildContactInformation() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        children: [
          SizedBox(height: 5.h),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Email:',
                  style: TextStyleHelper.instance.body12
                      .copyWith(color: appTheme.colorFF8089),
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
          ),
        ],
      ),
    );
  }

  Widget _buildAgeVerificationAndSocial() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 31.h),
      child: Column(
        children: [
          SizedBox(height: 25.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildAgeVerificationIcon(30.h, 30.h, '18', -11.h, -1.h),
              SizedBox(width: 10.h),
              _buildAgeVerificationIcon(28.h, 27.h, '18', -10.h, 0.h),
              SizedBox(width: 10.h),
              CustomImageView(
                imagePath: ImageConstant.imgGroup12144,
                height: 27.h,
                width: 28.h,
              ),
              SizedBox(width: 10.h),
              CustomImageView(
                imagePath: ImageConstant.imgGroup12145,
                height: 27.h,
                width: 28.h,
              ),
              SizedBox(width: 10.h),
              CustomImageView(
                imagePath: ImageConstant.imgGroup12146,
                height: 27.h,
                width: 28.h,
              ),
              SizedBox(width: 10.h),
              CustomImageView(
                imagePath: ImageConstant.imgFrame12147,
                height: 27.h,
                width: 28.h,
              ),
              SizedBox(width: 10.h),
              CustomImageView(
                imagePath: ImageConstant.imgGroup12148,
                height: 27.h,
                width: 28.h,
              ),
              SizedBox(width: 10.h),
              CustomImageView(
                imagePath: ImageConstant.imgGroup12149,
                height: 27.h,
                width: 28.h,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAgeVerificationIcon(double width, double height, String age,
      double rightOffset, double topOffset) {
    return Stack(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse26,
          height: height,
          width: width,
        ),
        Positioned(
          left: width == 30.h ? 4.h : 3.h,
          top: width == 30.h ? 4.h : 5.h,
          child: Text(
            age,
            style: TextStyleHelper.instance.bodyTextBold
                .copyWith(color: appTheme.colorFFFD20),
          ),
        ),
        Positioned(
          right: rightOffset,
          top: topOffset,
          child: CustomImageView(
            imagePath: ImageConstant.imgFrame240,
            height: width == 30.h ? 11.h : 10.h,
            width: width == 30.h ? 11.h : 10.h,
          ),
        ),
      ],
    );
  }

  Widget _buildCopyright() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        children: [
          SizedBox(height: 25.h),
          Text(
            '© 2022 wj@gmail.com | All rights reserved.',
            textAlign: TextAlign.center,
            style: TextStyleHelper.instance.body12
                .copyWith(color: appTheme.colorFF8089),
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
