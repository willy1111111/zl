import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_action_button.dart';
import '../../widgets/custom_game_card.dart';
import '../../widgets/custom_image_view.dart';
import './controller/j_bet88_deposit_promotion_controller.dart';
import './widgets/deposit_tier_item_widget.dart';

class JBet88DepositPromotionScreen extends StatelessWidget {
  JBet88DepositPromotionScreen({Key? key}) : super(key: key);

  final JBet88DepositPromotionController controller =
      Get.put(JBet88DepositPromotionController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF0000,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: appTheme.colorFF0000,
            boxShadow: [
              BoxShadow(
                color: appTheme.color888888,
                offset: Offset(0, 4.h),
                blurRadius: 8.h,
              ),
            ],
          ),
          child: Column(
            children: [
              _buildTopPromotionalBanner(),
              _buildLogoAndBalanceSection(),
              _buildActionButtons(),
              _buildGameBanner(),
              _buildPromotionalMessage(),
              _buildPromotionBanner(),
              _buildCollectSection(),
              _buildHotGamesSection(),
              _buildGameGrid(),
              _buildDepositBonusSection(),
              _buildBonusHeader(),
              _buildBonusTiers(),
              _buildDepositNowButton(),
              _buildNote(),
              _buildViewMore(),
              _buildCloseButton(),
              _buildActivityBanner(),
              _buildFloatingActionButton(),
              _buildLeftSidebar(),
              SizedBox(height: 80.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTopPromotionalBanner() {
    return Container(
      height: 68.h,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF76cd00), Color(0xFF478a03)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant
                .img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi2,
            width: double.infinity,
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
          Positioned(
            left: 12.h,
            top: 9.h,
            child: CustomImageView(
              imagePath: ImageConstant.img112,
              width: 50.h,
              height: 50.h,
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
                  margin: EdgeInsets.only(right: 2.h),
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
            child: SizedBox(
              width: 127.h,
              child: Text(
                'Many benefits for newcomers',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.whiteCustom, height: 1.17),
              ),
            ),
          ),
          Positioned(
            right: 30.h,
            top: 18.h,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 4.h),
              decoration: BoxDecoration(
                color: appTheme.whiteCustom,
                borderRadius: BorderRadius.circular(16.h),
              ),
              child: Text(
                'Download',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.colorFF478A),
              ),
            ),
          ),
          Positioned(
            right: 7.h,
            top: 4.h,
            child: Container(
              width: 14.h,
              height: 14.h,
              color: appTheme.colorFF478A,
            ),
          ),
          Positioned(
            right: 0.h,
            top: 0.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgVectorLightGreen400,
              width: 26.h,
              height: 26.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLogoAndBalanceSection() {
    return Padding(
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
              SizedBox(width: 7.h),
              Obx(() => Text(
                    controller.balanceAmount.value ?? '₱1980.00',
                    style: TextStyleHelper.instance.title16Bold
                        .copyWith(color: appTheme.colorFFFFC6),
                  )),
              SizedBox(width: 7.h),
              CustomImageView(
                imagePath: ImageConstant.img1LightGreenA700,
                width: 16.h,
                height: 14.h,
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
      child: Row(
        children: [
          Expanded(
            child: CustomActionButton(
              text: 'Withdrawal',
              backgroundColor: appTheme.colorFFFFC6,
              gradient: LinearGradient(
                colors: [Color(0xFFffc61e), Color(0xFFff9f00)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              height: 34.h,
              borderRadius: 2.h,
              onPressed: () => controller.onWithdrawalPressed(),
            ),
          ),
          SizedBox(width: 5.h),
          Expanded(
            child: CustomActionButton(
              text: 'Deposit',
              iconPath: ImageConstant.imgVectorWhiteA700,
              backgroundColor: appTheme.colorFF76CD,
              gradient: LinearGradient(
                colors: [Color(0xFF76cd00), Color(0xFF478a03)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              height: 35.h,
              borderRadius: 2.h,
              iconSize: 16.h,
              iconSpacing: 6.h,
              onPressed: () => controller.onDepositPressed(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGameBanner() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 8.h),
      child: CustomImageView(
        imagePath: ImageConstant.img,
        width: double.infinity,
        height: 130.h,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildPromotionalMessage() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h, vertical: 8.h),
      padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 7.h),
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
            child: Text(
              '🔥The recharge of th🔥',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.colorFF85D4),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img1Red900,
            width: 16.h,
            height: 16.h,
          ),
          SizedBox(width: 21.h),
          Text(
            'The recharge',
            style: TextStyleHelper.instance.body14Bold
                .copyWith(color: appTheme.colorFF85D4),
          ),
        ],
      ),
    );
  }

  Widget _buildPromotionBanner() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 77.h, vertical: 10.h),
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF21c559), appTheme.colorFF4CD5, Color(0xFFdaf62e)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(4.h),
        border: Border.all(color: appTheme.whiteCustom, width: 2.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.colorFF65E4,
            offset: Offset(0, -10.h),
            blurRadius: 25.h,
          ),
        ],
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Jbet88 Promotion',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.colorFF043D),
              ),
              SizedBox(height: 1.h),
              Text(
                'Generous bonuses are ready!',
                style: TextStyleHelper.instance.body13Bold
                    .copyWith(color: appTheme.colorFF2453),
              ),
            ],
          ),
          Positioned(
            right: 0.h,
            top: 0.h,
            child: CustomImageView(
              imagePath: ImageConstant
                  .img63ae502f31c03cad704af738e3a94dc18734f2f427a27bpzrck21,
              width: 89.h,
              height: 57.h,
            ),
          ),
          Positioned(
            left: 164.h,
            top: 30.h,
            child: CustomImageView(
              imagePath: ImageConstant.img117x17,
              width: 17.h,
              height: 17.h,
            ),
          ),
          Positioned(
            right: 17.h,
            top: 3.h,
            child: CustomImageView(
              imagePath: ImageConstant.img214x13,
              width: 13.h,
              height: 14.h,
            ),
          ),
          Positioned(
            right: 4.h,
            top: 41.h,
            child: CustomImageView(
              imagePath: ImageConstant.img3,
              width: 16.h,
              height: 16.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCollectSection() {
    return Container(
      margin: EdgeInsets.only(bottom: 10.h),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup1084,
            width: 72.h,
            height: 108.h,
          ),
          Positioned(
            left: 16.h,
            top: 7.h,
            child: CustomImageView(
              imagePath: ImageConstant.img11,
              width: 36.h,
              height: 36.h,
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
    );
  }

  Widget _buildHotGamesSection() {
    return Positioned(
      left: 0.h,
      top: 418.h,
      child: Container(
        width: 66.h,
        height: 64.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFffc61e), Color(0xFFffa001)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8.h),
            bottomRight: Radius.circular(8.h),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgVectorDeepOrangeA400,
              width: 36.h,
              height: 30.h,
            ),
            SizedBox(height: 6.h),
            Text(
              'Hot',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF232B),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGameGrid() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 77.h),
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
              final game = controller.gameItems[index];
              return CustomGameCard(
                gameImagePath: game.gameImage?.value ?? '',
                overlayIconPath: game.overlayIcon?.value ?? '',
                gameTitle: game.title?.value ?? '',
                onTap: () => controller.onGameSelected(index),
              );
            },
          )),
    );
  }

  Widget _buildDepositBonusSection() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.h),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage360,
            width: 136.h,
            height: 78.h,
          ),
          Positioned(
            left: 35.h,
            top: 48.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgImage23,
              width: 306.h,
              height: 70.h,
            ),
          ),
          Positioned(
            top: 57.h,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text(
                  'Deposit Bonus',
                  style: TextStyleHelper.instance.headline26,
                ),
                Text(
                  'Deposit Bonus',
                  style: TextStyleHelper.instance.headline26,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text(
                  'First 5 time Deposit free bonus!',
                  style: TextStyleHelper.instance.body14Bold,
                ),
                SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.img0web1,
                      width: 22.h,
                      height: 22.h,
                    ),
                    SizedBox(width: 2.h),
                    Text(
                      '8,888',
                      style: TextStyleHelper.instance.headline24Bold,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBonusHeader() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
      decoration: BoxDecoration(
        color: appTheme.colorFFFFCB,
        borderRadius: BorderRadius.circular(6.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.whiteCustom,
            offset: Offset(0, 1.h),
            blurRadius: 1.h,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(9.h),
            decoration: BoxDecoration(
              color: appTheme.colorFFE03C,
              borderRadius: BorderRadius.circular(6.h),
              boxShadow: [
                BoxShadow(
                  color: appTheme.whiteCustom,
                  offset: Offset(0, 1.h),
                  blurRadius: 1.h,
                ),
              ],
            ),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Deposit',
                      style: TextStyleHelper.instance.body12Black,
                    ),
                    Text(
                      '+',
                      style: TextStyleHelper.instance.title18Bold,
                    ),
                    Text(
                      'Extra',
                      style: TextStyleHelper.instance.body12Black,
                    ),
                    Text(
                      'PayMaya Payment',
                      style: TextStyleHelper.instance.body12Black
                          .copyWith(color: appTheme.colorFFFFF4),
                    ),
                    Text(
                      'Up To',
                      style: TextStyleHelper.instance.body12Black,
                    ),
                  ],
                ),
                Positioned(
                  left: 92.h,
                  top: 0,
                  child: Container(
                    width: 1.h,
                    height: 34.h,
                    color: appTheme.whiteCustom,
                  ),
                ),
                Positioned(
                  right: 66.h,
                  top: 0,
                  child: Container(
                    width: 1.h,
                    height: 34.h,
                    color: appTheme.whiteCustom,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(9.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Deposit',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFF6C0A),
                ),
                Opacity(
                  opacity: 0.6,
                  child: Text(
                    '+',
                    style: TextStyleHelper.instance.title18Bold
                        .copyWith(color: appTheme.colorFF6D0B),
                  ),
                ),
                Text(
                  'Extra',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFF6C0A),
                ),
                Text(
                  'PayMaya Payment',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFFFF2D),
                ),
                Text(
                  'Up To',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFF6C0A),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBonusTiers() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Obx(() => Column(
            children: controller.depositTiers
                .map(
                  (tier) => Container(
                    margin: EdgeInsets.only(bottom: 8.h),
                    child: DepositTierItemWidget(
                      tier: tier,
                      onTap: () => controller.onDepositTierSelected(tier),
                    ),
                  ),
                )
                .toList(),
          )),
    );
  }

  Widget _buildDepositNowButton() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 20.h),
      child: CustomActionButton(
        text: 'Deposit Now',
        iconPath: ImageConstant.imgFrame,
        backgroundColor: appTheme.colorFF76CD,
        gradient: LinearGradient(
          colors: [Color(0xFF76cd00), Color(0xFF478a03)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        height: 52.h,
        borderRadius: 20.h,
        iconSize: 20.h,
        iconSpacing: 15.h,
        textStyle: TextStyleHelper.instance.title16Bold.copyWith(shadows: [
          Shadow(
            color: appTheme.blackCustom,
            offset: Offset(0, 1.h),
          ),
        ]),
        onPressed: () => controller.onDepositNowPressed(),
      ),
    );
  }

  Widget _buildNote() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 20.h),
      child: Text(
        'Note: Select your desired bonus at deposit page',
        style: TextStyleHelper.instance.body14Bold
            .copyWith(color: appTheme.whiteCustom),
      ),
    );
  }

  Widget _buildViewMore() {
    return Positioned(
      right: 16.h,
      bottom: 106.h,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 6.h),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF363c41), Color(0xFF2b3035)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(13.h),
        ),
        child: Row(
          children: [
            Text(
              'View more',
              style: TextStyleHelper.instance.body12
                  .copyWith(decoration: TextDecoration.underline),
            ),
            SizedBox(width: 14.h),
            CustomImageView(
              imagePath: ImageConstant.imgStrokeLightGreenA700,
              width: 6.h,
              height: 12.h,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCloseButton() {
    return Positioned(
      top: 79.h,
      right: 26.h,
      child: GestureDetector(
        onTap: () => controller.onClosePressed(),
        child: CustomImageView(
          imagePath: ImageConstant.imgGroup,
          width: 32.h,
          height: 32.h,
        ),
      ),
    );
  }

  Widget _buildActivityBanner() {
    return Positioned(
      right: 7.h,
      bottom: 170.h,
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant
                .img9850ea1719a3a4f48276f1a9b5bd953ffb29de1510c16alsgdt41,
            width: 124.h,
            height: 108.h,
          ),
          Positioned(
            bottom: 26.h,
            left: 33.h,
            child: Text(
              'Activity',
              style: TextStyleHelper.instance.title16Black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFloatingActionButton() {
    return Positioned(
      bottom: 78.h,
      left: 0,
      right: 0,
      child: Center(
        child: GestureDetector(
          onTap: () => controller.onFloatingActionPressed(),
          child: Container(
            width: 57.h,
            height: 56.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF242A,
              borderRadius: BorderRadius.circular(28.h),
            ),
            child: Center(
              child: Stack(
                children: [
                  Container(
                    width: 48.h,
                    height: 46.h,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFadf835),
                          appTheme.colorFF83CF,
                          Color(0xFF3c7a0b)
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(23.h),
                      boxShadow: [
                        BoxShadow(
                          color: appTheme.colorFF6199,
                          offset: Offset(-1.h, -4.h),
                          blurRadius: 4.h,
                        ),
                      ],
                    ),
                    child: Center(
                      child: CustomImageView(
                        imagePath: ImageConstant.imgVector25x27,
                        width: 27.h,
                        height: 25.h,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 16.h,
                    left: 0.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSubtract,
                      width: 43.h,
                      height: 14.h,
                    ),
                  ),
                  Positioned(
                    bottom: 15.h,
                    right: 5.h,
                    child: Container(
                      width: 3.h,
                      height: 3.h,
                      decoration: BoxDecoration(
                        border: Border.all(color: appTheme.whiteCustom),
                        borderRadius: BorderRadius.circular(1.h),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 16.h,
                    left: 0.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSubtract14x43,
                      width: 43.h,
                      height: 14.h,
                    ),
                  ),
                  Positioned(
                    bottom: 16.h,
                    left: 0.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.img14x43,
                      width: 43.h,
                      height: 14.h,
                    ),
                  ),
                  Positioned(
                    bottom: 12.h,
                    left: 3.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgUnion,
                      width: 33.h,
                      height: 8.h,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLeftSidebar() {
    return Positioned(
      left: 0,
      top: 486.h,
      child: Column(
        children: [
          _buildSidebarItem('Live', ImageConstant.img136x36),
          SizedBox(height: 4.h),
          _buildSidebarItem('Slot', ImageConstant.img10733643587),
          SizedBox(height: 4.h),
          _buildSidebarItem('Bingo', ImageConstant.img5),
          SizedBox(height: 4.h),
          _buildSidebarItem('Table', ImageConstant.img2),
          SizedBox(height: 4.h),
          _buildSidebarItem('Fish', ImageConstant.img736x36),
          SizedBox(height: 4.h),
          _buildSidebarItem('Egame', ImageConstant.img336x36),
          SizedBox(height: 4.h),
          _buildSidebarItem('Sport', ImageConstant.img6),
        ],
      ),
    );
  }

  Widget _buildSidebarItem(String label, String iconPath) {
    return Container(
      width: 66.h,
      height: 64.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF363c41), Color(0xFF2b3035)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
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
            imagePath: iconPath,
            width: 36.h,
            height: 36.h,
          ),
          SizedBox(height: 1.h),
          Text(
            label,
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFF8089),
          ),
        ],
      ),
    );
  }
}
