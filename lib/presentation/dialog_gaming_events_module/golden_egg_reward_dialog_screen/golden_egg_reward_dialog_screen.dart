import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_banner_image_row.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_currency_display.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_promo_app_bar.dart';
import '../../../../widgets/custom_sidebar.dart';
import './controller/golden_egg_reward_dialog_controller.dart';
import './models/game_card_item_model.dart';
import './widgets/game_card_item_widget.dart';

class GoldenEggRewardDialogScreen extends StatelessWidget {
  GoldenEggRewardDialogScreen({Key? key}) : super(key: key);

  final GoldenEggRewardDialogController controller =
      Get.put(GoldenEggRewardDialogController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: CustomPromoAppBar(
        onDownloadPressed: () => controller.onDownloadPressed(),
        onClosePressed: () => controller.onClosePressed(),
      ),
      body: Stack(
        children: [
          _buildMainContent(),
          Obx(() => controller.showRewardDialog.value
              ? _buildRewardDialog()
              : SizedBox.shrink()),
        ],
      ),
    );
  }

  Widget _buildMainContent() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 8.h),
          _buildLogoAndBalanceSection(),
          SizedBox(height: 5.h),
          _buildActionButtons(),
          SizedBox(height: 8.h),
          _buildBannerSection(),
          SizedBox(height: 17.h),
          _buildNotificationBar(),
          SizedBox(height: 16.h),
          _buildVipBannersSection(),
          SizedBox(height: 10.h),
          _buildGameContentSection(),
          SizedBox(height: 100.h),
        ],
      ),
    );
  }

  Widget _buildLogoAndBalanceSection() {
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
          CustomCurrencyDisplay(
            amount: '₱1980.00',
            onActionTap: () => controller.onBalanceRefresh(),
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
            child: CustomButton(
              text: 'Withdrawal',
              variant: CustomButtonVariant.orange,
              leftIcon: ImageConstant.imgVectorWhiteA700,
              height: 36.h,
              borderRadius: 2.h,
              onPressed: () => controller.onWithdrawalPressed(),
            ),
          ),
          SizedBox(width: 5.h),
          Expanded(
            child: CustomButton(
              text: 'Deposit',
              variant: CustomButtonVariant.gold,
              leftIcon: ImageConstant.imgVectorWhiteA70011x16,
              height: 36.h,
              borderRadius: 2.h,
              onPressed: () => controller.onDepositPressed(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBannerSection() {
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

  Widget _buildNotificationBar() {
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
              child: Text(
                '🔥The recharge of the🔥',
                style: TextStyleHelper.instance.body14BoldArial,
              ),
            ),
            Text(
              'The recharge',
              style: TextStyleHelper.instance.body14BoldArial,
            ),
            SizedBox(width: 8.h),
            CustomImageView(
              imagePath: ImageConstant.img1,
              height: 16.h,
              width: 16.h,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVipBannersSection() {
    return Padding(
      padding: EdgeInsets.only(left: 72.h),
      child: CustomBannerImageRow(
        imagePaths: [
          ImageConstant.img,
          ImageConstant.img56x94,
          ImageConstant.imgVip,
        ],
        imageSpacing: 26.h,
        imageWidth: 94.h,
        imageHeight: 56.h,
        borderRadius: 4.h,
      ),
    );
  }

  Widget _buildGameContentSection() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSidebarSection(),
        SizedBox(width: 11.h),
        Expanded(child: _buildGameGrid()),
      ],
    );
  }

  Widget _buildSidebarSection() {
    return Obx(() => CustomSidebar(
          sidebarItems: controller.sidebarItems.value,
          selectedIndex: controller.selectedSidebarIndex.value,
          onItemTap: (index, item) => controller.onSidebarItemTap(index, item),
          top: 0,
          left: 0,
        ));
  }

  Widget _buildGameGrid() {
    return Obx(() => GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.only(right: 15.h),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 9.h,
            mainAxisSpacing: 15.h,
            childAspectRatio: 0.8,
          ),
          itemCount: controller.gameCards.length,
          itemBuilder: (context, index) {
            GameCardItemModel gameCard = controller.gameCards[index];
            return GameCardItemWidget(
              gameCard: gameCard,
              onTap: () => controller.onGameCardTap(gameCard, index),
            );
          },
        ));
  }

  Widget _buildRewardDialog() {
    return Container(
      color: appTheme.blackCustom.withAlpha(153),
      child: Center(
        child: Stack(
          children: [
            _buildConfettiAnimation(),
            _buildBackgroundEffects(),
            _buildMainRewardContainer(),
          ],
        ),
      ),
    );
  }

  Widget _buildConfettiAnimation() {
    return Stack(
      children: [
        Positioned(
          left: 100.h,
          top: 200.h,
          child: _buildConfettiParticle(appTheme.colorFFFFC7),
        ),
        Positioned(
          left: 150.h,
          top: 180.h,
          child: _buildConfettiParticle(appTheme.colorFFFF6B),
        ),
        Positioned(
          left: 200.h,
          top: 220.h,
          child: _buildConfettiParticle(appTheme.colorFF4ECD),
        ),
        Positioned(
          left: 250.h,
          top: 190.h,
          child: _buildConfettiParticle(appTheme.colorFF45B7),
        ),
        Positioned(
          left: 300.h,
          top: 210.h,
          child: _buildConfettiParticle(appTheme.colorFF96CE),
        ),
      ],
    );
  }

  Widget _buildConfettiParticle(Color color) {
    return TweenAnimationBuilder(
      duration: Duration(seconds: 3),
      tween: Tween<double>(begin: 0, end: 1),
      builder: (context, double value, child) {
        return Transform.translate(
          offset: Offset(0, value * 400),
          child: Transform.rotate(
            angle: value * 6.28,
            child: Opacity(
              opacity: 1 - value,
              child: Container(
                width: 6.h,
                height: 6.h,
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildBackgroundEffects() {
    return Stack(
      children: [
        Positioned(
          top: 137.h,
          left: 0,
          child: CustomImageView(
            imagePath: ImageConstant.imgF1,
            height: 381.h,
            width: 371.h,
          ),
        ),
        Positioned(
          top: 111.h,
          left: 0,
          child: CustomImageView(
            imagePath: ImageConstant.imgF2,
            height: 434.h,
            width: 375.h,
          ),
        ),
      ],
    );
  }

  Widget _buildMainRewardContainer() {
    return Center(
      child: Stack(
        children: [
          _buildRewardBackground(),
          _buildAdditionalEffects(),
          _buildTitleText(),
          _buildCloseButton(),
          _buildConfirmButton(),
        ],
      ),
    );
  }

  Widget _buildRewardBackground() {
    return Container(
      width: 280.h,
      height: 270.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFFFC895), Color(0xFFFB7E6C)],
        ),
        borderRadius: BorderRadius.circular(20.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.colorFF7C36,
            offset: Offset(0, -2),
            blurRadius: 0,
          ),
        ],
      ),
      child: Container(
        margin: EdgeInsets.only(top: 10.h, left: 5.h),
        width: 270.h,
        height: 270.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFFFF4E4), Color(0xFFFFCD9F)],
          ),
          borderRadius: BorderRadius.circular(18.h),
          boxShadow: [
            BoxShadow(
              color: appTheme.colorFFE1BB,
              offset: Offset(0, -1),
              blurRadius: 0,
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              top: 5.h,
              left: 0,
              child: CustomImageView(
                imagePath: ImageConstant.imgImage404,
                height: 264.h,
                width: 270.h,
              ),
            ),
            Positioned(
              top: 5.h,
              left: 5.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgRectangle1760,
                height: 164.h,
                width: 260.h,
              ),
            ),
            Positioned(
              top: 7.h,
              left: 5.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgMaskGroup164x260,
                height: 164.h,
                width: 260.h,
              ),
            ),
            _buildGoldenEgg(),
            _buildPrizeAmount(),
          ],
        ),
      ),
    );
  }

  Widget _buildGoldenEgg() {
    return Positioned(
      top: 4.h,
      left: 51.h,
      child: TweenAnimationBuilder(
        duration: Duration(seconds: 3),
        tween: Tween<double>(begin: 0, end: 1),
        builder: (context, double value, child) {
          return Transform.translate(
            offset: Offset(0, -10 * (0.5 - (value - 0.5).abs()) * 2),
            child: Stack(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgF1175x175,
                  height: 175.h,
                  width: 175.h,
                ),
                Positioned(
                  top: 27.h,
                  left: 42.h,
                  child: CustomImageView(
                    imagePath: ImageConstant
                        .imgB928f94165e9728829ff07d0c5d4434611caf4103b62867w8is,
                    height: 99.h,
                    width: 99.h,
                  ),
                ),
                Positioned(
                  top: 41.h,
                  left: 26.h,
                  child: CustomImageView(
                    imagePath: ImageConstant
                        .imgB928f94165e9728829ff07d0c5d4434611caf4103b62867w8is,
                    height: 99.h,
                    width: 99.h,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildPrizeAmount() {
    return Positioned(
      bottom: 52.h,
      left: 78.h,
      child: Obx(() => Text(
            controller.prizeAmount.value ?? '₱19.20',
            style: TextStyleHelper.instance.headline32BoldArial
                .copyWith(letterSpacing: 2),
          )),
    );
  }

  Widget _buildAdditionalEffects() {
    return Stack(
      children: [
        Positioned(
          top: 79.h,
          left: 61.h,
          child: CustomImageView(
            imagePath: ImageConstant.img1253x253,
            height: 253.h,
            width: 253.h,
          ),
        ),
        Positioned(
          top: 178.h,
          left: 127.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgImage378,
            height: 109.h,
            width: 120.h,
          ),
        ),
        Positioned(
          top: 256.h,
          left: 34.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgImage23,
            height: 70.h,
            width: 306.h,
          ),
        ),
      ],
    );
  }

  Widget _buildTitleText() {
    return Positioned(
      top: 260.h,
      left: 114.h,
      child: Stack(
        children: [
          Text(
            'GOLDEN EGG',
            style: TextStyleHelper.instance.headline26LilitaOne,
          ),
          ShaderMask(
            shaderCallback: (bounds) => LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFFFFBDB), Color(0xFFFFC82F)],
            ).createShader(bounds),
            child: Text(
              'GOLDEN EGG',
              style: TextStyleHelper.instance.headline26LilitaOne
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCloseButton() {
    return Positioned(
      top: 178.h,
      right: 10.h,
      child: GestureDetector(
        onTap: () => controller.onCloseRewardDialog(),
        child: Container(
          width: 32.h,
          height: 32.h,
          decoration: BoxDecoration(
            color: appTheme.blackCustom.withAlpha(128),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup,
              height: 32.h,
              width: 32.h,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildConfirmButton() {
    return Positioned(
      bottom: -40.h,
      left: 25.h,
      child: GestureDetector(
        onTap: () => controller.onConfirmReward(),
        child: Container(
          width: 230.h,
          height: 40.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFFFCC18), Color(0xFFF55800)],
            ),
            borderRadius: BorderRadius.circular(20.h),
            border: Border.all(color: appTheme.colorFFFF99),
            boxShadow: [
              BoxShadow(
                color: appTheme.colorFF8A18,
                offset: Offset(0, 2),
                blurRadius: 0,
              ),
            ],
          ),
          child: Center(
            child: Text(
              'Confirm',
              style: TextStyleHelper.instance.title16BlackArial.copyWith(
                  color: appTheme.blackCustom.withAlpha(64),
                  shadows: [
                    Shadow(
                      color: appTheme.blackCustom.withAlpha(64),
                      offset: Offset(0, 2),
                      blurRadius: 2,
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
