import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_bottom_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_rich_text.dart';
import '../../../../widgets/custom_vip_floating_menu.dart';
import './controller/j_bet88_gaming_hub_controller.dart';
import './widgets/game_card_widget.dart';
import './widgets/sidebar_menu_item_widget.dart';
import './widgets/star_widget.dart';
import './widgets/vip_rewards_dialog_widget.dart';

class JBet88GamingHubScreen extends GetWidget<JBet88GamingHubController> {
  const JBet88GamingHubScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.colorFF1E20,
        body: SizedBox(
          width: double.maxFinite,
          child: Stack(
            children: [
              Column(
                children: [
                  _buildTopBannerSection(),
                  _buildLogoAndBalanceSection(),
                  _buildWithdrawalDepositSection(),
                  _buildMainGameAreaSection(),
                  _buildNotificationBannerSection(),
                  _buildJackpotSection(),
                  Expanded(
                    child: _buildGameGridSection(),
                  ),
                ],
              ),
              _buildLeftSidebarSection(),
              CustomVipFloatingMenu(
                selectedIndex: controller.selectedVipIndex.value,
                onItemTap: (index) => controller.onVipItemTap(index),
              ),
              Obx(() => controller.showVipDialog.value
                  ? VipRewardsDialogWidget(
                      onClose: () => controller.hideVipDialog(),
                      onClaimReward: () => controller.claimVipReward(),
                    )
                  : SizedBox.shrink()),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomNavSection(),
      ),
    );
  }

  Widget _buildTopBannerSection() {
    return Container(
      width: double.maxFinite,
      height: 68.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.0, 0.0),
          end: Alignment(1.0, 0.0),
          colors: [Color(0xFF76CD00), Color(0xFF478A03)],
        ),
      ),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant
                .img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi2,
            width: double.maxFinite,
            height: 68.h,
            fit: BoxFit.cover,
          ),
          CustomImageView(
            imagePath: ImageConstant
                .img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi1,
            width: 279.h,
            height: 68.h,
            fit: BoxFit.cover,
          ),
          _buildStarsSection(),
          Positioned(
            top: 10.h,
            left: 68.h,
            child: SizedBox(
              width: 127.h,
              height: 28.h,
              child: Text(
                'Many benefits for newcomers',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.whiteCustom),
              ),
            ),
          ),
          Positioned(
            top: 9.h,
            left: 12.h,
            child: CustomImageView(
              imagePath: ImageConstant.img112,
              width: 50.h,
              height: 50.h,
              radius: BorderRadius.circular(8.h),
            ),
          ),
          Positioned(
            top: 4.h,
            right: 3.h,
            child: Container(
              width: 14.h,
              height: 14.h,
              color: appTheme.colorFF478A,
            ),
          ),
          Positioned(
            top: 0,
            right: 26.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgVectorLightGreen400,
              width: 26.h,
              height: 26.h,
            ),
          ),
          Positioned(
            top: 18.h,
            right: 30.h,
            child: CustomButton(
              text: 'Download',
              onPressed: () => controller.onDownloadTap(),
              buttonVariant: CustomButtonVariant.text,
              width: 97.h,
              height: 32.h,
              backgroundColor: appTheme.whiteCustom,
              textStyle: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.colorFF478A),
              borderRadius: 16.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStarsSection() {
    return Row(
      children: List.generate(
        5,
        (index) => Positioned(
          top: 41.h,
          left: (68 + (index * 17)).h,
          child: StarWidget(),
        ),
      ),
    );
  }

  Widget _buildLogoAndBalanceSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLogowj93128x78,
            width: 78.h,
            height: 28.h,
          ),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup736,
                width: 15.h,
                height: 16.h,
              ),
              SizedBox(width: 8.h),
              Obx(() => Text(
                    controller.balanceAmount.value,
                    style: TextStyleHelper.instance.title16Bold
                        .copyWith(color: appTheme.colorFFFFB9),
                  )),
              SizedBox(width: 8.h),
              GestureDetector(
                onTap: () => controller.onRefreshBalance(),
                child: CustomImageView(
                  imagePath: ImageConstant.img1LightGreenA700,
                  width: 16.h,
                  height: 14.h,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildWithdrawalDepositSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: 'Withdrawal',
              iconPath: ImageConstant.imgVectorWhiteA700,
              onPressed: () => controller.onWithdrawalTap(),
              buttonVariant: CustomButtonVariant.textWithIcon,
              gradientType: CustomButtonGradient.orange,
              height: 36.h,
              borderRadius: 2.h,
            ),
          ),
          SizedBox(width: 5.h),
          Expanded(
            child: CustomButton(
              text: 'Deposit',
              iconPath: ImageConstant.imgVectorWhiteA70011x16,
              onPressed: () => controller.onDepositTap(),
              buttonVariant: CustomButtonVariant.textWithIcon,
              gradientType: CustomButtonGradient
                  .orange, // Modified: Replaced unavailable 'green' gradient with 'orange'
              height: 36.h,
              borderRadius: 2.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainGameAreaSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 15.h, vertical: 8.h),
      child: CustomImageView(
        imagePath: ImageConstant.img130x345,
        width: 345.h,
        height: 130.h,
        radius: BorderRadius.circular(8.h),
      ),
    );
  }

  Widget _buildNotificationBannerSection() {
    return Container(
      width: double.maxFinite,
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
            width: 24.h,
            height: 19.h,
          ),
          SizedBox(width: 8.h),
          Expanded(
            child: CustomRichText(
              textSegments: [
                CustomTextSegment(text: '🔥', fontSize: 14.fSize),
                CustomTextSegment(
                  text: 'The recharge of th',
                  fontSize: 14.fSize,
                  fontWeight: FontWeight.bold,
                  color: appTheme.colorFF85D4,
                ),
                CustomTextSegment(
                  text: 'e🔥',
                  fontSize: 14.fSize,
                  color: appTheme.colorFF85D4,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img1Red900,
            width: 16.h,
            height: 16.h,
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

  Widget _buildJackpotSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 76.h, vertical: 16.h),
      child: Stack(
        children: [
          Container(
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
              imagePath: ImageConstant.imgIntersect42x280,
              width: 280.h,
              height: 42.h,
              radius: BorderRadius.circular(3.h),
            ),
          ),
          Positioned(
            left: 1.h,
            top: -12.h,
            child: CustomImageView(
              imagePath: ImageConstant.img155x70,
              width: 70.h,
              height: 55.h,
              radius: BorderRadius.circular(3.h),
            ),
          ),
          Positioned(
            left: 82.h,
            top: -12.h,
            child: CustomImageView(
              imagePath: ImageConstant.img119x31,
              width: 31.h,
              height: 19.h,
            ),
          ),
          Positioned(
            right: 17.h,
            top: -12.h,
            child: CustomImageView(
              imagePath: ImageConstant.img219x31,
              width: 31.h,
              height: 19.h,
            ),
          ),
          Positioned(
            left: 108.h,
            top: -14.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgJackpot1,
              width: 86.h,
              height: 22.h,
            ),
          ),
          Positioned(
            left: 69.h,
            top: 7.h,
            child: Obx(() => Text(
                  controller.jackpotAmount.value,
                  style: TextStyleHelper.instance.headline24Black
                      .copyWith(letterSpacing: 2.0),
                )),
          ),
        ],
      ),
    );
  }

  Widget _buildGameGridSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 77.h, right: 16.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            _buildCollectSection(),
            SizedBox(height: 16.h),
            Obx(() => GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 40.h,
                    crossAxisSpacing: 6.h,
                    childAspectRatio: 1.0,
                  ),
                  itemCount: controller.gameItems.length,
                  itemBuilder: (context, index) {
                    return GameCardWidget(
                      gameModel: controller.gameItems[index],
                      onTap: () => controller.onGameTap(index),
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }

  Widget _buildCollectSection() {
    return Container(
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 8.h),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup1084,
                    width: 72.h,
                    height: 108.h,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    'Collect',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.colorFF8089),
                  ),
                  SizedBox(height: 4.h),
                  GestureDetector(
                    onTap: () => controller.onCollectTap(),
                    child: CustomImageView(
                      imagePath: ImageConstant.img11,
                      width: 36.h,
                      height: 36.h,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLeftSidebarSection() {
    return Positioned(
      left: 0,
      top: 418.h,
      child: Column(
        children: [
          Container(
            width: 66.h,
            height: 68.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFFFC61E), Color(0xFFFFA001)],
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.h),
                bottomLeft: Radius.circular(8.h),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgVectorDeepOrangeA400,
                  width: 30.h,
                  height: 36.h,
                ),
                SizedBox(height: 4.h),
                Text(
                  'Hot',
                  style: TextStyleHelper.instance.body12Bold,
                ),
              ],
            ),
          ),
          Obx(() => Column(
                children: List.generate(
                  controller.sidebarItems.length,
                  (index) => SidebarMenuItemWidget(
                    sidebarModel: controller.sidebarItems[index],
                    onTap: () => controller.onSidebarItemTap(index),
                  ),
                ),
              )),
        ],
      ),
    );
  }

  Widget _buildBottomNavSection() {
    return CustomBottomBar(
      bottomBarItemList: controller.bottomBarItems,
      selectedIndex: controller.selectedBottomIndex.value,
      hasFloatingButton: true,
      floatingButtonImage: ImageConstant.imgInvite154x54,
      onChanged: (index) => controller.onBottomNavTap(index),
    );
  }
}
