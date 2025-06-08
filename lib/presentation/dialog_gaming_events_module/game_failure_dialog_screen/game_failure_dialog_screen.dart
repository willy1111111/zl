import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_banner_image_row.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_currency_display.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_promo_app_bar.dart';
import '../../../../widgets/custom_sidebar.dart';
import './controller/game_failure_dialog_screen_controller.dart';
import './widgets/game_grid_item_widget.dart';

// Modified: Removed non-existent import 'widgets/sidebar_menu_item_widget.dart'

class GameFailureDialogScreen extends StatelessWidget {
  GameFailureDialogScreen({Key? key}) : super(key: key);

  final GameFailureDialogScreenController controller =
      Get.put(GameFailureDialogScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: appTheme.colorFF1E20,
            child: Column(
              children: [
                CustomPromoAppBar(
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
                Expanded(
                  child: Stack(
                    children: [
                      _buildMainContent(),
                      _buildSidebarNavigation(),
                      _buildFloatingActionButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Obx(() => controller.showDialog.value
              ? _buildFailureDialog()
              : SizedBox.shrink()),
        ],
      ),
    );
  }

  Widget _buildMainContent() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeaderSection(),
          _buildActionButtons(),
          _buildBannerSection(),
          _buildNotificationBar(),
          SizedBox(height: 58.h),
          _buildVipBannersSection(),
          SizedBox(height: 10.h),
          _buildGameGrid(),
          SizedBox(height: 100.h),
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
          Padding(
            padding: EdgeInsets.only(top: 8.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgLogowj931,
              height: 28.h,
              width: 78.h,
            ),
          ),
          CustomCurrencyDisplay(
            amount: '₱1980.00',
            spacing: 4.0,
            currencyIcon: ImageConstant.imgGroup736,
            actionIcon: ImageConstant.img1LightGreenA70001,
            onActionTap: () => controller.onRefreshBalance(),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 5.h),
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
      padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 8.h),
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
        width: 345.h,
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
              width: 24.h,
              height: 19.h,
            ),
            SizedBox(width: 8.h),
            Expanded(
              child: Text(
                '🔥The recharge of th🔥',
                style: TextStyleHelper.instance.body14BoldArial,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.img1,
              width: 16.h,
              height: 16.h,
            ),
            SizedBox(width: 10.h),
            Text(
              'The recharge',
              style: TextStyleHelper.instance.body14BoldArial,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSidebarNavigation() {
    return Positioned(
      left: 0,
      top: 350.h,
      child: CustomSidebar(
        sidebarItems: controller.sidebarItems,
        selectedIndex: controller.selectedSidebarIndex.value,
        onItemTap: (index, item) => controller.onSidebarItemTap(index, item),
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
        imageSpacing: 2.0,
        imageWidth: 94.0.h,
        imageHeight: 56.0.h,
        borderRadius: 4.0.h,
      ),
    );
  }

  Widget _buildGameGrid() {
    return Padding(
      padding: EdgeInsets.only(left: 77.h, right: 10.h),
      child: Obx(() => GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 9.h,
              mainAxisSpacing: 9.h,
              childAspectRatio: 0.8,
            ),
            itemCount: controller.gameItems.length,
            itemBuilder: (context, index) {
              return GameGridItemWidget(
                gameItem: controller.gameItems[index],
                onTap: () =>
                    controller.onGameItemTap(controller.gameItems[index]),
              );
            },
          )),
    );
  }

  Widget _buildFloatingActionButton() {
    return Positioned(
      left: 160.h,
      top: 734.h,
      child: GestureDetector(
        onTap: () => controller.onFabPressed(),
        child: Container(
          width: 56.h,
          height: 56.h,
          decoration: BoxDecoration(
            color: appTheme.colorFF242A,
            borderRadius: BorderRadius.circular(28.h),
          ),
          child: Center(
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup13043,
              width: 49.h,
              height: 53.h,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFailureDialog() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: appTheme.blackCustom.withAlpha(64),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage403,
            width: 370.h,
            height: 292.h,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 4.h, top: 231.h),
          ),
          Center(
            child: Stack(
              children: [
                Positioned(
                  left: 48.h,
                  top: 304.h,
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
                  ),
                ),
                Positioned(
                  left: 53.h,
                  top: 294.h,
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
                        CustomImageView(
                          imagePath: ImageConstant.imgImage404,
                          width: 270.h,
                          height: 264.h,
                          alignment: Alignment.topCenter,
                          margin: EdgeInsets.only(top: 5.h),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle1760,
                          width: 260.h,
                          height: 164.h,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 5.h, top: 5.h),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgMaskGroup164x260,
                          width: 260.h,
                          height: 164.h,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 5.h, top: 7.h),
                        ),
                        Positioned(
                          left: 32.h,
                          top: 183.h,
                          child: Text(
                            'Better luck next time.',
                            style: TextStyleHelper.instance.title16BoldArial
                                .copyWith(letterSpacing: 2),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.img1253x253,
                  width: 253.h,
                  height: 253.h,
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 61.h, top: 79.h),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage23,
                  width: 306.h,
                  height: 70.h,
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 34.h, top: 256.h),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage419,
                  width: 138.h,
                  height: 138.h,
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 117.h, top: 308.h),
                ),
                Positioned(
                  left: 150.h,
                  top: 255.h,
                  child: Stack(
                    children: [
                      Text(
                        'Oops',
                        style: TextStyleHelper.instance.headline32LilitaOne,
                      ),
                      Text(
                        'Oops',
                        style: TextStyleHelper.instance.headline32LilitaOne,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 310.h,
                  top: 178.h,
                  child: GestureDetector(
                    onTap: () => controller.closeDialog(),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup,
                      width: 32.h,
                      height: 32.h,
                    ),
                  ),
                ),
                Positioned(
                  left: 73.h,
                  top: 548.h,
                  child: GestureDetector(
                    onTap: () => controller.onGotItPressed(),
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
                          'Got it',
                          style: TextStyleHelper.instance.title16BlackArial
                              .copyWith(
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
