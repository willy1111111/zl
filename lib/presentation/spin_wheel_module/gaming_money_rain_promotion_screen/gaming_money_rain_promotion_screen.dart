import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_bottom_navigation_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_floating_money_overlay.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_rich_text_widget.dart';
import './controller/gaming_money_rain_promotion_controller.dart';
import './widgets/category_nav_item_widget.dart';
import './widgets/game_card_item_widget.dart';
import './widgets/vip_section_widget.dart';

class GamingMoneyRainPromotionScreen
    extends GetWidget<GamingMoneyRainPromotionController> {
  const GamingMoneyRainPromotionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: CustomAppBar(
        showPromotionalContent: true,
        profileImagePath: ImageConstant.img112,
        promotionalText: 'MANY BENEFITS FOR NEWCOMERS',
        backgroundImagePath: ImageConstant
            .img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi2,
        overlayImagePath: ImageConstant
            .img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi1,
        onDownloadTap: () => controller.onDownloadTap(),
        onCloseTap: () => controller.onCloseTap(),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildUserBalanceSection(),
                SizedBox(height: 16.h),
                _buildActionButtonsSection(),
                SizedBox(height: 8.h),
                _buildGameBannerSection(),
                SizedBox(height: 17.h),
                _buildNotificationBanner(),
                SizedBox(height: 30.h),
                _buildJackpotSection(),
                SizedBox(height: 14.h),
                _buildMainContentArea(),
                SizedBox(height: 100.h),
              ],
            ),
          ),
          _buildFloatingMoneyOverlay(),
          Obx(() => controller.showMoneyRainDialog.value
              ? _buildMoneyRainDialog()
              : SizedBox.shrink()),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: 0,
        onItemTapped: (index, route) => controller.onBottomNavTap(index, route),
      ),
    );
  }

  Widget _buildUserBalanceSection() {
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
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup736,
                height: 16.h,
                width: 15.h,
              ),
              SizedBox(width: 8.h),
              Obx(() => Text(
                    controller.userBalance.value ?? 'R\$1980.00',
                    style: TextStyleHelper.instance.title16BoldArial,
                  )),
              SizedBox(width: 8.h),
              GestureDetector(
                onTap: () => controller.onRefreshBalance(),
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

  Widget _buildActionButtonsSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: 'Withdrawal',
              iconPath: ImageConstant.imgVectorWhiteA700,
              variant: CustomButtonVariant.withdrawal,
              onTap: () => controller.onWithdrawalTap(),
            ),
          ),
          SizedBox(width: 5.h),
          Expanded(
            child: CustomButton(
              text: 'Deposit',
              iconPath: ImageConstant.imgVectorWhiteA70011x16,
              backgroundColor: appTheme.colorFF76CD,
              onTap: () => controller.onDepositTap(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGameBannerSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: CustomImageView(
        imagePath: ImageConstant.img130x345,
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
        height: 34.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          borderRadius: BorderRadius.circular(17.h),
        ),
        child: Row(
          children: [
            SizedBox(width: 8.h),
            CustomImageView(
              imagePath: ImageConstant
                  .img3b4bde395738f0c8b07d1baa47c5d48f172c19aa158772swckar1,
              height: 19.h,
              width: 24.h,
            ),
            SizedBox(width: 8.h),
            Expanded(
              child: CustomRichTextWidget(
                isFlexible: true,
                textSpans: [
                  CustomTextSpanData(
                    text: '🔥The recharge of th',
                    color: appTheme.colorFF85D4,
                    fontSize: 14.fSize,
                    fontWeight: FontWeight.bold,
                  ),
                  CustomTextSpanData(
                    text: 'e🔥',
                    color: appTheme.colorFF85D4,
                    fontSize: 14.fSize,
                    fontWeight: FontWeight.normal,
                  ),
                ],
              ),
            ),
            Text(
              'The recharge',
              style: TextStyleHelper.instance.body14BoldArial
                  .copyWith(color: appTheme.colorFF85D4),
            ),
            SizedBox(width: 8.h),
            GestureDetector(
              onTap: () => controller.onCloseNotification(),
              child: CustomImageView(
                imagePath: ImageConstant.img1Red900,
                height: 16.h,
                width: 16.h,
              ),
            ),
            SizedBox(width: 8.h),
          ],
        ),
      ),
    );
  }

  Widget _buildJackpotSection() {
    return Stack(
      children: [
        Positioned(
          left: 76.h,
          child: Container(
            width: 282.h,
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
        ),
        Positioned(
          left: 77.h,
          top: -12.h,
          child: CustomImageView(
            imagePath: ImageConstant.img155x70,
            height: 55.h,
            width: 70.h,
          ),
        ),
        Positioned(
          left: 158.h,
          top: -12.h,
          child: CustomImageView(
            imagePath: ImageConstant.img119x31,
            height: 19.h,
            width: 31.h,
          ),
        ),
        Positioned(
          left: 265.h,
          top: -12.h,
          child: CustomImageView(
            imagePath: ImageConstant.img219x31,
            height: 19.h,
            width: 31.h,
          ),
        ),
        Positioned(
          left: 184.h,
          top: -14.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgJackpot1,
            height: 22.h,
            width: 86.h,
          ),
        ),
        Positioned(
          left: 145.h,
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
            child: Obx(() => Text(
                  controller.jackpotAmount.value ?? '14,091,688.88',
                  style: TextStyleHelper.instance.headline24BlackArial
                      .copyWith(letterSpacing: 2.h),
                )),
          ),
        ),
      ],
    );
  }

  Widget _buildMainContentArea() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCollectSection(),
        _buildCategoryNavigation(),
        Expanded(
          child: _buildGameGrid(),
        ),
        _buildVipSection(),
      ],
    );
  }

  Widget _buildCollectSection() {
    return GestureDetector(
      onTap: () => controller.onCollectTap(),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup1084,
            height: 72.h,
            width: 108.h,
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

  Widget _buildCategoryNavigation() {
    return Column(
      children: [
        Obx(() => ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: controller.categories.length,
              itemBuilder: (context, index) {
                return CategoryNavItemWidget(
                  categoryItem: controller.categories[index],
                  isSelected: controller.selectedCategoryIndex.value == index,
                  onTap: () => controller.onCategoryTap(index),
                );
              },
            )),
      ],
    );
  }

  Widget _buildGameGrid() {
    return Padding(
      padding: EdgeInsets.only(left: 11.h, right: 8.h),
      child: Obx(() => GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 9.h,
              crossAxisSpacing: 9.h,
              childAspectRatio: 0.85,
            ),
            itemCount: controller.gameItems.length,
            itemBuilder: (context, index) {
              return GameCardItemWidget(
                gameItem: controller.gameItems[index],
                onTap: () => controller.onGameTap(index),
              );
            },
          )),
    );
  }

  Widget _buildVipSection() {
    return VipSectionWidget(
      onVipTap: () => controller.onVipTap(),
    );
  }

  Widget _buildFloatingMoneyOverlay() {
    return CustomFloatingMoneyOverlay(
      floatingItems: [
        CustomFloatingItem(
          imagePath: ImageConstant.img6554,
          left: 177.h,
          top: 34.h,
          width: 53.h,
          height: 54.h,
        ),
        CustomFloatingItem(
          imagePath: ImageConstant.img6563,
          left: 75.h,
          top: 89.h,
          width: 69.h,
          height: 70.h,
          animationDelay: Duration(milliseconds: 500),
        ),
        CustomFloatingItem(
          imagePath: ImageConstant.img6564,
          left: 0.h,
          top: 0.h,
          width: 54.h,
          height: 61.h,
          animationDelay: Duration(milliseconds: 1000),
        ),
        CustomFloatingItem(
          imagePath: ImageConstant.img6563,
          left: 221.h,
          top: 100.h,
          width: 69.h,
          height: 70.h,
          animationDelay: Duration(milliseconds: 1500),
        ),
        CustomFloatingItem(
          imagePath: ImageConstant.img6563,
          left: 154.h,
          top: 680.h,
          width: 69.h,
          height: 70.h,
          animationDelay: Duration(milliseconds: 2000),
        ),
        CustomFloatingItem(
          imagePath: ImageConstant.img6563,
          left: 3.h,
          top: 585.h,
          width: 69.h,
          height: 70.h,
          animationDelay: Duration(milliseconds: 2500),
        ),
        CustomFloatingItem(
          imagePath: ImageConstant.img6567,
          left: 146.h,
          top: 614.h,
          width: 52.h,
          height: 52.h,
          animationDelay: Duration(milliseconds: 800),
        ),
        CustomFloatingItem(
          imagePath: ImageConstant.img6567,
          left: 244.h,
          top: 592.h,
          width: 52.h,
          height: 52.h,
          animationDelay: Duration(milliseconds: 1300),
        ),
        CustomFloatingItem(
          imagePath: ImageConstant.img6568,
          left: 310.h,
          top: 661.h,
          width: 50.h,
          height: 49.h,
          animationDelay: Duration(milliseconds: 1800),
        ),
        CustomFloatingItem(
          imagePath: ImageConstant.img6568,
          left: 71.h,
          top: 582.h,
          width: 50.h,
          height: 49.h,
          animationDelay: Duration(milliseconds: 300),
        ),
      ],
    );
  }

  Widget _buildMoneyRainDialog() {
    return Positioned(
      top: 153.h,
      left: 15.h,
      child: Container(
        width: 345.h,
        height: 454.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFFA6900), Color(0xFFBF1E1E)],
          ),
          borderRadius: BorderRadius.circular(12.h),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 5.h,
              right: 5.h,
              child: GestureDetector(
                onTap: () => controller.closeMoneyRainDialog(),
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup848,
                  height: 28.h,
                  width: 28.h,
                ),
              ),
            ),
            Positioned(
              top: -10.h,
              left: 83.h,
              child: Stack(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img2858,
                    height: 48.h,
                    width: 180.h,
                  ),
                  Positioned(
                    top: 9.h,
                    left: 11.h,
                    child: ShaderMask(
                      shaderCallback: (bounds) => LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFFFA6900), Color(0xFFBF1E1E)],
                      ).createShader(bounds),
                      child: Text(
                        'Money Rain',
                        style: TextStyleHelper.instance.title22BoldArial,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 50.h,
              left: 15.h,
              child: Container(
                width: 315.h,
                height: 135.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFFFFF0D6), Color(0xFFFFC48B)],
                  ),
                  borderRadius: BorderRadius.circular(8.h),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.blackCustom.withAlpha(77),
                      blurRadius: 6.h,
                      offset: Offset(0, 2.h),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '·',
                          style: TextStyleHelper.instance.headline24BoldArial,
                        ),
                        SizedBox(width: 8.h),
                        Expanded(
                          child: Text(
                            'Recharge users can get it for free',
                            style: TextStyleHelper.instance.title20BoldArial,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '·',
                          style: TextStyleHelper.instance.headline24BoldArial,
                        ),
                        SizedBox(width: 8.h),
                        Expanded(
                          child: Text(
                            'Maximum cash drop value ₱7,777',
                            style: TextStyleHelper.instance.title20BoldArial,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 195.h,
              left: 18.h,
              child: Container(
                width: 309.h,
                height: 65.h,
                decoration: BoxDecoration(
                  color: appTheme.blackCustom,
                  borderRadius: BorderRadius.circular(4.h),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Aegrettably！Free participation after',
                      style: TextStyleHelper.instance.title18BoldArial,
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'reaching VIP1. ',
                          style: TextStyleHelper.instance.title18BoldArial,
                        ),
                        GestureDetector(
                          onTap: () => controller.onGoToDepositTap(),
                          child: Text(
                            'Go to deposit →',
                            style: TextStyleHelper.instance.title20BoldArial
                                .copyWith(
                                    color: appTheme.colorFF85D4,
                                    decoration: TextDecoration.underline),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 270.h,
              left: 85.h,
              child: CustomButton(
                text: 'Turn To Luck',
                variant: CustomButtonVariant.gradient,
                width: 176.h,
                height: 44.h,
                onTap: () => controller.onTurnToLuckTap(),
              ),
            ),
            Positioned(
              bottom: 20.h,
              left: 89.h,
              child: Container(
                width: 168.h,
                height: 24.h,
                decoration: BoxDecoration(
                  color: appTheme.whiteCustom,
                  borderRadius: BorderRadius.circular(12.h),
                ),
                padding: EdgeInsets.symmetric(horizontal: 12.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgVectorGray90002,
                      height: 14.h,
                      width: 13.h,
                    ),
                    SizedBox(width: 8.h),
                    Obx(() => Text(
                          controller.nextRoundTimer.value ??
                              'next Round 18:00:01',
                          style: TextStyleHelper.instance.body14BoldArial
                              .copyWith(color: appTheme.colorFFFF00),
                        )),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 153.h,
              left: 15.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgStar9,
                height: 23.h,
                width: 23.h,
              ),
            ),
            Positioned(
              top: 136.h,
              right: 15.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgStar9,
                height: 23.h,
                width: 23.h,
              ),
            ),
            Positioned(
              bottom: 95.h,
              left: 5.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgStar11,
                height: 14.h,
                width: 14.h,
              ),
            ),
            Positioned(
              bottom: 122.h,
              right: 55.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgStar11,
                height: 14.h,
                width: 14.h,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: CustomImageView(
                imagePath: ImageConstant.img861719114,
                height: 93.h,
                width: 345.h,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
