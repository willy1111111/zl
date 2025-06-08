import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_bottom_navigation_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_rich_text_widget.dart';
import './controller/jet_bet_casino_home_controller.dart';
import './widgets/game_card_item_widget.dart';
import './widgets/provider_logo_item_widget.dart';

class JetBetCasinoHomeScreen extends GetWidget<JetBetCasinoHomeController> {
  JetBetCasinoHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF2223,
      appBar: CustomAppBar(
        showPromotionalContent: true,
        profileImagePath: ImageConstant.img112,
        promotionalText: 'MANY BENEFITS FOR NEWCOMERS',
        backgroundImagePath: ImageConstant
            .img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi268x375,
        overlayImagePath: ImageConstant
            .img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi1,
        onDownloadTap: () => controller.onDownloadTap(),
        onCloseTap: () => controller.onCloseTap(),
      ),
      body: Stack(
        children: [
          Container(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _buildLogoAndBalanceSection(),
                  _buildActionButtonsSection(),
                  _buildDownloadBannerSection(),
                  _buildJackpotSection(),
                  _buildPromotionalAlertSection(),
                  _buildGameGridSection(),
                  _buildProviderLogosSection(),
                  _buildActivityBannerSection(),
                  _buildPromotionalImagesSection(),
                  _buildFooterSection(),
                  _buildAgeVerificationSection(),
                  SizedBox(height: 100.h),
                ],
              ),
            ),
          ),
          _buildLeftSidebar(),
          _buildFloatingActionButton(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: 0,
        onItemTapped: (index, route) {
          controller.onBottomNavItemTapped(index, route);
        },
      ),
    );
  }

  Widget _buildLogoAndBalanceSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 8.h),
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
              Text(
                '₱1980.00',
                style: TextStyleHelper.instance.title16Bold,
              ),
              SizedBox(width: 22.h),
              CustomImageView(
                imagePath: ImageConstant.img1LightGreenA700,
                height: 14.h,
                width: 16.h,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtonsSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      margin: EdgeInsets.only(bottom: 8.h),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: 'Withdrawal',
              variant: CustomButtonVariant.withdrawal,
              height: 36.h,
              backgroundColor: appTheme.colorFFFFC6,
              onTap: () => controller.onWithdrawalTap(),
            ),
          ),
          SizedBox(width: 5.h),
          Expanded(
            child: CustomButton(
              text: 'Deposit',
              iconPath: ImageConstant.imgVectorWhiteA70011x16,
              variant: CustomButtonVariant.gradient,
              height: 36.h,
              backgroundColor: appTheme.colorFF76CD,
              onTap: () => controller.onDepositTap(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDownloadBannerSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      margin: EdgeInsets.only(bottom: 8.h),
      child: CustomImageView(
        imagePath: ImageConstant.img3,
        height: 130.h,
        width: double.maxFinite,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildJackpotSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h, vertical: 8.h),
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
            child: CustomImageView(
              imagePath: ImageConstant.imgIntersect,
              height: 42.h,
              width: 280.h,
              margin: EdgeInsets.all(1.h),
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
            right: 25.h,
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
            child: Container(
              width: 209.h,
              height: 38.h,
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
                  style: TextStyleHelper.instance.headline24Black
                      .copyWith(letterSpacing: 2.h),
                ),
              ),
            ),
          ),
          Positioned(
            left: -15.h,
            top: -14.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup1084,
              height: 108.h,
              width: 72.h,
            ),
          ),
          Positioned(
            left: -2.h,
            top: 30.h,
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img11,
                  height: 36.h,
                  width: 36.h,
                ),
                SizedBox(height: 1.h),
                Text(
                  'Collect',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFF8089),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPromotionalAlertSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h, vertical: 8.h),
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      height: 34.h,
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
            child: CustomRichTextWidget(
              textSpans: [
                CustomTextSpanData(
                  text: '🔥',
                  color: appTheme.colorFF85D4,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
                CustomTextSpanData(
                  text: 'The recharge of th',
                  color: appTheme.colorFF85D4,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                CustomTextSpanData(
                  text: 'e🔥',
                  color: appTheme.colorFF85D4,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img1Red900,
            height: 16.h,
            width: 16.h,
          ),
          SizedBox(width: 8.h),
          Text(
            'The recharge',
            style: TextStyleHelper.instance.body14Bold
                .copyWith(color: appTheme.colorFF85D4),
          ),
        ],
      ),
    );
  }

  Widget _buildGameGridSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      margin: EdgeInsets.only(bottom: 20.h),
      child: Obx(() => GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 16.h,
              crossAxisSpacing: 9.h,
              childAspectRatio: 0.8,
            ),
            itemCount: controller.gameItems.length,
            itemBuilder: (context, index) {
              return GameCardItemWidget(
                gameItem: controller.gameItems[index],
                onTap: () =>
                    controller.onGameCardTap(controller.gameItems[index]),
              );
            },
          )),
    );
  }

  Widget _buildProviderLogosSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      margin: EdgeInsets.only(bottom: 20.h),
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLogowj93128x78,
            height: 28.h,
            width: 78.h,
          ),
          SizedBox(height: 27.h),
          Obx(() => GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  mainAxisSpacing: 27.h,
                  crossAxisSpacing: 6.h,
                  childAspectRatio: 4.77,
                ),
                itemCount: controller.providerLogos.length,
                itemBuilder: (context, index) {
                  return ProviderLogoItemWidget(
                    providerLogo: controller.providerLogos[index],
                  );
                },
              )),
        ],
      ),
    );
  }

  Widget _buildActivityBannerSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      margin: EdgeInsets.only(bottom: 20.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant
                .img9850ea1719a3a4f48276f1a9b5bd953ffb29de1510c16alsgdt41,
            height: 108.h,
            width: 124.h,
          ),
          Positioned(
            bottom: 85.h,
            right: 95.h,
            child: ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFFFFFFF), Color(0xFFFFF400)],
              ).createShader(bounds),
              child: Text(
                'Activity',
                style: TextStyleHelper.instance.title16Black,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPromotionalImagesSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      margin: EdgeInsets.only(bottom: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img410,
            height: 150.h,
            width: 68.h,
            margin: EdgeInsets.only(right: 7.h),
          ),
          SizedBox(height: 4.h),
          CustomImageView(
            imagePath: ImageConstant.img1150x95,
            height: 50.h,
            width: 95.h,
          ),
        ],
      ),
    );
  }

  Widget _buildFooterSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      margin: EdgeInsets.only(bottom: 20.h),
      child: Column(
        children: [
          Text(
            'This site offers a complete experience of the game. To use our website, you must be at least 18 years of age. We are not responsible for providing you with local laws relating to the game. Play responsibly and have fun at wj.com',
            textAlign: TextAlign.center,
            style: TextStyleHelper.instance.body12Medium
                .copyWith(color: appTheme.colorFF8089, letterSpacing: 1.h),
          ),
          SizedBox(height: 9.h),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Emall: ',
                  style: TextStyleHelper.instance.body12,
                ),
                TextSpan(
                  text: 'wj@gmail.com',
                  style: TextStyleHelper.instance.body12
                      .copyWith(color: appTheme.colorFF85D4),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            '© 2022 wj@gmail.com | All rights reserved.',
            textAlign: TextAlign.center,
            style: TextStyleHelper.instance.body12,
          ),
        ],
      ),
    );
  }

  Widget _buildAgeVerificationSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 31.h),
      margin: EdgeInsets.only(bottom: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                top: 7.h,
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
                  imagePath: ImageConstant.imgGroup240,
                  height: 11.h,
                  width: 11.h,
                ),
              ),
            ],
          ),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgLogovideo2,
                height: 30.h,
                width: 30.h,
              ),
              SizedBox(width: 8.h),
              Container(
                height: 30.h,
                width: 30.h,
                decoration: BoxDecoration(
                  color: appTheme.colorFF1E20,
                  borderRadius: BorderRadius.circular(15.h),
                ),
              ),
              SizedBox(width: 8.h),
              Container(
                height: 30.h,
                width: 30.h,
                decoration: BoxDecoration(
                  color: appTheme.colorFF191E,
                  borderRadius: BorderRadius.circular(15.h),
                ),
              ),
              SizedBox(width: 8.h),
              CustomImageView(
                imagePath: ImageConstant.imgLogovideo5,
                height: 30.h,
                width: 30.h,
              ),
              SizedBox(width: 8.h),
              Container(
                height: 30.h,
                width: 30.h,
                decoration: BoxDecoration(
                  color: appTheme.colorFF191E,
                  borderRadius: BorderRadius.circular(15.h),
                ),
              ),
              SizedBox(width: 8.h),
              CustomImageView(
                imagePath: ImageConstant.imgLogovideo7,
                height: 30.h,
                width: 30.h,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLeftSidebar() {
    return Positioned(
      left: 0,
      top: 68.h,
      bottom: 64.h,
      child: Container(
        width: 66.h,
        child: Obx(() => ListView.builder(
              itemCount: controller.sidebarItems.length,
              itemBuilder: (context, index) {
                final item = controller.sidebarItems[index];
                final isSelected =
                    controller.selectedSidebarIndex.value == index;

                return Container(
                  width: 66.h,
                  height: 64.h,
                  margin: EdgeInsets.only(bottom: 4.h),
                  decoration: BoxDecoration(
                    gradient: isSelected
                        ? LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xFFFFC61E), Color(0xFFFFA001)],
                          )
                        : LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xFF363C41), Color(0xFF2B3035)],
                          ),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8.h),
                      bottomRight: Radius.circular(8.h),
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () => controller.onSidebarItemTap(index),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: item.iconPath?.value ?? '',
                          height: 36.h,
                          width: 36.h,
                        ),
                        SizedBox(height: 6.h),
                        Text(
                          item.title?.value ?? '',
                          style: TextStyleHelper.instance.body12Bold.copyWith(
                              color: isSelected
                                  ? appTheme.whiteCustom
                                  : appTheme.colorFF8089),
                        ),
                      ],
                    ),
                  ),
                );
              },
            )),
      ),
    );
  }

  Widget _buildFloatingActionButton() {
    return Positioned(
      right: 160.h,
      bottom: 78.h,
      child: GestureDetector(
        onTap: () => controller.onFloatingActionButtonTap(),
        child: Stack(
          children: [
            Container(
              width: 56.h,
              height: 56.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF242A,
                borderRadius: BorderRadius.circular(28.h),
              ),
              child: Center(
                child: Container(
                  width: 36.h,
                  height: 36.h,
                  decoration: BoxDecoration(
                    color: appTheme.colorFF85D4,
                    borderRadius: BorderRadius.circular(18.h),
                    boxShadow: [
                      BoxShadow(
                        color: appTheme.colorFF8888,
                        blurRadius: 8.h,
                        offset: Offset(0, 4.h),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: -2.h,
              top: 0,
              child: CustomImageView(
                imagePath: ImageConstant.imgImage1170,
                height: 43.h,
                width: 54.h,
              ),
            ),
            Positioned(
              left: -3.h,
              top: 0,
              child: CustomImageView(
                imagePath: ImageConstant.imgImage1169,
                height: 44.h,
                width: 64.h,
              ),
            ),
            Positioned(
              right: 27.h,
              top: 0,
              child: CustomImageView(
                imagePath: ImageConstant.img13x12,
                height: 13.h,
                width: 12.h,
              ),
            ),
            Positioned(
              left: 10.h,
              bottom: -44.h,
              child: Column(
                children: [
                  Text(
                    'Get',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.colorFF8089),
                  ),
                  Text(
                    '₱1000',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.colorFFFFF4),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
