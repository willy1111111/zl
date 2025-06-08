import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_banner_image_row.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_currency_display.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_promo_app_bar.dart';
import '../../../../widgets/custom_sidebar.dart';
import './controller/red_package_purchase_dialog_controller.dart';
import './widgets/game_card_item.dart';

// Modified: Fixed import path

class RedPackagePurchaseDialogInitialPage extends StatelessWidget {
  RedPackagePurchaseDialogInitialPage({Key? key}) : super(key: key);

  RedPackagePurchaseDialogController controller = Get.put(
      RedPackagePurchaseDialogController()); // Modified: Fixed controller instantiation

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomPromoAppBar(
        profileImagePath: ImageConstant.img112,
        headerText: 'MANY BENEFITS FOR NEWCOMERS',
        downloadButtonText: 'Download',
        onDownloadPressed: () => controller.onDownloadPressed(),
        onClosePressed: () => controller.onClosePressed(),
        showCloseButton: true,
        downloadButtonAlignment: false,
        backgroundImagePath: ImageConstant
            .img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi2,
        overlayImagePath: ImageConstant
            .img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi1,
      ),
      body: Stack(
        children: [
          Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: appTheme.colorFF1E20,
            ),
            child: Column(
              children: [
                SizedBox(height: 8.h),
                _buildHeaderSection(),
                SizedBox(height: 5.h),
                _buildActionButtons(),
                SizedBox(height: 8.h),
                _buildBannerSection(),
                SizedBox(height: 17.h),
                _buildNotificationBar(),
                SizedBox(height: 16.h),
                _buildMainContent(),
              ],
            ),
          ),
          Obx(() => controller.showDialog.value
              ? _buildRedPackageDialog()
              : SizedBox.shrink()),
        ],
      ),
    );
  }

  Widget _buildHeaderSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLogowj931,
            height: 28.h,
            width: 78.h,
            fit: BoxFit.contain,
          ),
          CustomCurrencyDisplay(
            amount: '₱1980.00',
            spacing: 6.0,
            currencyIcon: ImageConstant.imgGroup736,
            actionIcon: ImageConstant.img1LightGreenA70001,
            onActionTap: () => controller.onAddBalancePressed(),
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
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
      padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 8.h),
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
            fit: BoxFit.contain,
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
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }

  Widget _buildMainContent() {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSidebar(),
          SizedBox(width: 6.h),
          Expanded(
            child: Column(
              children: [
                _buildVipBanners(),
                SizedBox(height: 10.h),
                _buildGameGrid(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSidebar() {
    return CustomSidebar(
      sidebarItems: [
        CustomSidebarItem(
          iconPath: ImageConstant.imgVectorDeepOrangeA400,
          label: 'Hot',
          routeName: '/hot',
          iconHeight: 27.h,
        ),
        CustomSidebarItem(
          iconPath: ImageConstant.img132x32,
          label: 'Collect',
          routeName: '/collect',
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
      onItemTap: (index, item) {
        controller.onSidebarItemTap(index, item);
      },
      top: 0,
      left: 0,
    );
  }

  Widget _buildVipBanners() {
    return CustomBannerImageRow(
      imagePaths: [
        ImageConstant.img,
        ImageConstant.img56x94,
        ImageConstant.imgVip,
      ],
      imageSpacing: 26.h,
      imageWidth: 94.h,
      imageHeight: 56.h,
      borderRadius: 4.h,
    );
  }

  Widget _buildGameGrid() {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(right: 15.h),
          child: Column(
            children: [
              Obx(() => GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 0.85,
                      crossAxisSpacing: 9.h,
                      mainAxisSpacing: 15.h,
                    ),
                    itemCount: controller.gameCards.length,
                    itemBuilder: (context, index) {
                      return GameCardItem(
                        gameCardModel: controller.gameCards[index],
                        onTap: () => controller.onGameCardTap(index),
                      );
                    },
                  )),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRedPackageDialog() {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.color3F0000,
      ),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgF1,
            height: 381.h,
            width: 371.h,
            fit: BoxFit.contain,
          ),
          Positioned(
            top: 111.h,
            left: 0,
            child: CustomImageView(
              imagePath: ImageConstant.imgF2,
              height: 434.h,
              width: 375.h,
              fit: BoxFit.contain,
            ),
          ),
          Center(
            child: Container(
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
              child: Stack(
                children: [
                  Positioned(
                    top: 10.h,
                    left: 5.h,
                    child: Container(
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
                          _buildDialogBackground(),
                          _buildDialogContent(),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 178.h,
                    right: 30.h,
                    child: GestureDetector(
                      onTap: () => controller.closeDialog(),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroup,
                        height: 32.h,
                        width: 32.h,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          _buildDialogEffects(),
          _buildDialogTitle(),
          _buildConfirmButton(),
        ],
      ),
    );
  }

  Widget _buildDialogBackground() {
    return Stack(
      children: [
        Positioned(
          top: 5.h,
          left: 0,
          child: CustomImageView(
            imagePath: ImageConstant.imgImage404,
            height: 264.h,
            width: 270.h,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 5.h,
          left: 5.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgRectangle1760,
            height: 164.h,
            width: 260.h,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 7.h,
          left: 5.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgMaskGroup164x260,
            height: 164.h,
            width: 260.h,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

  Widget _buildDialogContent() {
    return Stack(
      children: [
        Positioned(
          top: 4.h,
          left: 51.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgF1175x175,
            height: 175.h,
            width: 175.h,
            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          top: 31.h,
          left: 93.h,
          child: CustomImageView(
            imagePath: ImageConstant
                .imgB928f94165e9728829ff07d0c5d4434611caf4103b62867w8is,
            height: 99.h,
            width: 99.h,
            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          top: 45.h,
          left: 74.h,
          child: CustomImageView(
            imagePath: ImageConstant
                .imgB928f94165e9728829ff07d0c5d4434611caf4103b62867w8is,
            height: 99.h,
            width: 99.h,
            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          top: 173.h,
          left: 78.h,
          child: Text(
            '₱19.20',
            style: TextStyleHelper.instance.headline32BoldArial
                .copyWith(letterSpacing: 2),
          ),
        ),
      ],
    );
  }

  Widget _buildDialogEffects() {
    return Stack(
      children: [
        Positioned(
          top: 79.h,
          left: 61.h,
          child: CustomImageView(
            imagePath: ImageConstant.img1253x253,
            height: 253.h,
            width: 253.h,
            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          top: 228.h,
          left: 202.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgImage415,
            height: 47.h,
            width: 40.h,
            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          top: 187.h,
          left: 148.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgImage413,
            height: 93.h,
            width: 71.h,
            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          top: 224.h,
          left: 128.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgImage414,
            height: 58.h,
            width: 46.h,
            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          top: 256.h,
          left: 34.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgImage23,
            height: 70.h,
            width: 306.h,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }

  Widget _buildDialogTitle() {
    return Positioned(
      top: 260.h,
      left: 108.h,
      child: Stack(
        children: [
          Text(
            'RED PACKAGE',
            style: TextStyleHelper.instance.headline26LilitaOne,
          ),
          Text(
            'RED PACKAGE',
            style: TextStyleHelper.instance.headline26LilitaOne,
          ),
        ],
      ),
    );
  }

  Widget _buildConfirmButton() {
    return Positioned(
      top: 548.h,
      left: 73.h,
      child: CustomButton(
        text: 'Confirm',
        variant: CustomButtonVariant.orange,
        width: 230.h,
        height: 40.h,
        borderRadius: 20.h,
        textStyle: TextStyleHelper.instance.title16BlackArial
            .copyWith(color: appTheme.whiteCustom, shadows: [
          Shadow(
            color: appTheme.color3F0000,
            offset: Offset(0, 2),
            blurRadius: 2,
          ),
        ]),
        onPressed: () => controller.onConfirmPressed(),
      ),
    );
  }
}
