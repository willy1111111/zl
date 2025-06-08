import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_bottom_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/casino_home_controller.dart';
import './widgets/game_item_widget.dart';
import './widgets/sidebar_menu_item_widget.dart';

class CasinoHomeScreen extends GetWidget<CasinoHomeController> {
  const CasinoHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: SizedBox(
        width: 375.h,
        height: 958.h,
        child: Stack(
          children: [
            _buildTopPromotionalBanner(),
            _buildBalanceSection(),
            _buildActionButtons(),
            _buildMainGameBanner(),
            _buildPromotionalNotification(),
            _buildJackpotSection(),
            _buildSidebarNavigation(),
            _buildGameGrid(),
            _buildActivitySection(),
            _buildFloatingActionButton(),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomBar(
        bottomBarItemList: [
          CustomBottomBarItem(
            title: 'Home',
            icon: ImageConstant.imgGroup13007,
            iconHeight: 22.h,
            iconWidth: 24.h,
            routeName: '/home', // Modified: Added required routeName parameter
          ),
          CustomBottomBarItem(
            title: 'Deposit',
            icon: ImageConstant.imgGroup13004,
            iconHeight: 25.h,
            iconWidth: 26.h,
            routeName:
                '/deposit', // Modified: Added required routeName parameter
          ),
          CustomBottomBarItem(
            title: 'Invite',
            routeName:
                '/invite', // Modified: Added required routeName parameter
          ),
          CustomBottomBarItem(
            title: 'Promotion',
            icon: ImageConstant.imgGroup13067,
            iconHeight: 24.h,
            iconWidth: 24.h,
            routeName:
                '/promotion', // Modified: Added required routeName parameter
          ),
          CustomBottomBarItem(
            title: 'Teams',
            icon: ImageConstant.imgGroup13046,
            iconHeight: 42.h,
            iconWidth: 42.h,
            activeColor: appTheme.colorFF85D4,
            routeName: '/teams', // Modified: Added required routeName parameter
          ),
        ],
        selectedIndex: 4,
        onChanged: (index) {
          controller.onBottomNavChanged(index);
        },
      ),
    );
  }

  Widget _buildTopPromotionalBanner() {
    return Positioned(
      left: 0,
      top: 0,
      child: Container(
        width: 375.h,
        height: 68.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF76CD00), Color(0xFF478A03)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Stack(
          children: [
            CustomImageView(
              imagePath: ImageConstant
                  .img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi2,
              width: 375.h,
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
                radius: BorderRadius.circular(8.h),
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
                          margin: EdgeInsets.only(right: index < 4 ? 17.h : 0),
                          color: appTheme.colorFFFFF4,
                        )),
              ),
            ),
            Positioned(
              left: 68.h,
              top: 10.h,
              child: Text(
                'Many benefits for newcomers',
                style: TextStyleHelper.instance.body12BoldArial
                    .copyWith(color: appTheme.whiteCustom, height: 1.17),
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
                  style: TextStyleHelper.instance.body14BoldNotoSans
                      .copyWith(height: 1.43),
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
              right: 0,
              top: 0,
              child: CustomImageView(
                imagePath: ImageConstant.imgVectorLightGreen400,
                width: 26.h,
                height: 26.h,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBalanceSection() {
    return Positioned(
      left: 15.h,
      top: 76.h,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLogowj93128x78,
            width: 78.h,
            height: 28.h,
          ),
          SizedBox(width: 240.h),
          Obx(() => Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup736,
                    width: 15.h,
                    height: 16.h,
                  ),
                  SizedBox(width: 6.h),
                  Text(
                    controller.balanceAmount.value ?? 'R\$1980.00',
                    style: TextStyleHelper.instance.title16BoldArial
                        .copyWith(color: appTheme.colorFFFFB9, height: 1.19),
                  ),
                  SizedBox(width: 6.h),
                  CustomImageView(
                    imagePath: ImageConstant.img1LightGreenA700,
                    width: 16.h,
                    height: 14.h,
                  ),
                ],
              )),
        ],
      ),
    );
  }

  Widget _buildActionButtons() {
    return Positioned(
      left: 15.h,
      top: 109.h,
      child: Row(
        children: [
          CustomButton(
            width: 170.h,
            height: 36.h,
            text: 'Withdrawal',
            onPressed: () => controller.onWithdrawalPressed(),
            backgroundColor: appTheme.colorFFFF9F,
            borderRadius: 2.h,
          ),
          SizedBox(width: 5.h),
          Container(
            width: 170.h,
            height: 36.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF76CD00), Color(0xFF478A03)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(2.h),
            ),
            child: InkWell(
              onTap: () => controller.onDepositPressed(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorWhiteA70011x16,
                    width: 16.h,
                    height: 11.h,
                  ),
                  SizedBox(width: 6.h),
                  Text(
                    'Deposit',
                    style: TextStyleHelper.instance.body14BoldArial
                        .copyWith(color: appTheme.whiteCustom, height: 1.21),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainGameBanner() {
    return Positioned(
      left: 15.h,
      top: 153.h,
      child: CustomImageView(
        imagePath: ImageConstant.img130x345,
        width: 345.h,
        height: 130.h,
        radius: BorderRadius.circular(8.h),
      ),
    );
  }

  Widget _buildPromotionalNotification() {
    return Positioned(
      left: 15.h,
      top: 300.h,
      child: Container(
        width: 345.h,
        height: 34.h,
        padding: EdgeInsets.symmetric(horizontal: 6.h),
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
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '🔥',
                      style: TextStyleHelper.instance.body14Arial,
                    ),
                    TextSpan(
                      text: 'The recharge of th',
                      style: TextStyleHelper.instance.body14BoldArial
                          .copyWith(color: appTheme.colorFF85D4),
                    ),
                    TextSpan(
                      text: 'e🔥',
                      style: TextStyleHelper.instance.body14Arial,
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'The recharge',
              style: TextStyleHelper.instance.body14BoldArial
                  .copyWith(color: appTheme.colorFF85D4, height: 1.21),
            ),
            SizedBox(width: 21.h),
            CustomImageView(
              imagePath: ImageConstant.img1Red900,
              width: 16.h,
              height: 16.h,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildJackpotSection() {
    return Positioned(
      left: 0,
      top: 350.h,
      child: Stack(
        children: [
          Positioned(
            left: 76.h,
            top: 14.h,
            child: Container(
              width: 282.h,
              height: 44.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF072700),
                    appTheme.colorFF1546,
                    Color(0xFF082701)
                  ],
                  stops: [0.0, 0.5, 1.0],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(4.h),
                border: Border.all(color: appTheme.colorFF786A),
              ),
              child: Stack(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgIntersect,
                    width: 280.h,
                    height: 42.h,
                    radius: BorderRadius.circular(3.h),
                    margin: EdgeInsets.all(1.h),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup1084,
                    width: 72.h,
                    height: 108.h,
                  ),
                ],
              ),
              SizedBox(width: 5.h),
              Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img11,
                    width: 36.h,
                    height: 36.h,
                  ),
                  SizedBox(height: 1.h),
                  Text(
                    'Collect',
                    style: TextStyleHelper.instance.body12BoldArial
                        .copyWith(color: appTheme.colorFF8089, height: 1.17),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            left: 77.h,
            top: 2.h,
            child: CustomImageView(
              imagePath: ImageConstant.img155x70,
              width: 70.h,
              height: 55.h,
              radius: BorderRadius.circular(3.h),
            ),
          ),
          Positioned(
            left: 158.h,
            top: 2.h,
            child: CustomImageView(
              imagePath: ImageConstant.img119x31,
              width: 31.h,
              height: 19.h,
            ),
          ),
          Positioned(
            left: 265.h,
            top: 2.h,
            child: CustomImageView(
              imagePath: ImageConstant.img219x31,
              width: 31.h,
              height: 19.h,
            ),
          ),
          Positioned(
            left: 184.h,
            top: 0,
            child: CustomImageView(
              imagePath: ImageConstant.imgJackpot1,
              width: 86.h,
              height: 22.h,
            ),
          ),
          Positioned(
            left: 145.h,
            top: 21.h,
            child: Text(
              '14,091,688.88',
              style: TextStyleHelper.instance.headline24BlackArial
                  .copyWith(letterSpacing: 2.0, height: 1.42),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSidebarNavigation() {
    return Positioned(
      left: 0,
      top: 418.h,
      child: Obx(() => Column(
            children: List.generate(
              controller.sidebarItems.length,
              (index) => SidebarMenuItemWidget(
                sidebarItem: controller.sidebarItems[index],
                isSelected: controller.selectedSidebarIndex.value == index,
                onTap: () => controller.onSidebarItemTap(index),
              ),
            ),
          )),
    );
  }

  Widget _buildGameGrid() {
    return Positioned(
      left: 77.h,
      top: 422.h,
      child: Obx(() => Container(
            width: 282.h,
            child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 9.h,
                mainAxisSpacing: 20.h,
                childAspectRatio: 0.7,
              ),
              itemCount: controller.gameItems.length,
              itemBuilder: (context, index) {
                return GameItemWidget(
                  gameItem: controller.gameItems[index],
                  onTap: () => controller.onGameItemTap(index),
                );
              },
            ),
          )),
    );
  }

  Widget _buildActivitySection() {
    return Positioned(
      right: 8.h,
      top: 605.h,
      child: Column(
        children: [
          Stack(
            children: [
              CustomImageView(
                imagePath: ImageConstant
                    .img9850ea1719a3a4f48276f1a9b5bd953ffb29de1510c16alsgdt41,
                width: 116.h,
                height: 108.h,
              ),
              Positioned(
                top: 26.h,
                right: 20.h,
                child: Container(
                  width: 20.h,
                  height: 20.h,
                  decoration: BoxDecoration(
                    color: appTheme.colorFFF335,
                    borderRadius: BorderRadius.circular(10.h),
                  ),
                  child: Center(
                    child: Text(
                      '12',
                      style: TextStyleHelper.instance.body14BoldArial
                          .copyWith(color: appTheme.whiteCustom, height: 1.21),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 3.h),
          Text(
            'Activity',
            style: TextStyleHelper.instance.title16BlackArial
                .copyWith(height: 1.44),
          ),
        ],
      ),
    );
  }

  Widget _buildFloatingActionButton() {
    return Positioned(
      left: 160.h,
      top: 880.h,
      child: Container(
        width: 57.h,
        height: 56.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF242A,
          borderRadius: BorderRadius.circular(28.h),
        ),
        child: Center(
          child: Container(
            width: 48.h,
            height: 46.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFADF835),
                  appTheme.colorFF83CF,
                  Color(0xFF3C7A0B)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(23.h),
              boxShadow: [
                BoxShadow(
                  color: appTheme.colorFF6199,
                  offset: Offset(-1, -4),
                  blurRadius: 4,
                ),
              ],
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 12.h,
                  top: 5.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgVector25x27,
                    width: 27.h,
                    height: 25.h,
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 27.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgSubtract,
                    width: 43.h,
                    height: 14.h,
                  ),
                ),
                Positioned(
                  right: 8.h,
                  top: 32.h,
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
                  left: 0,
                  top: 27.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgSubtract14x43,
                    width: 43.h,
                    height: 14.h,
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 27.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.img14x43,
                    width: 43.h,
                    height: 14.h,
                  ),
                ),
                Positioned(
                  left: 3.h,
                  top: 31.h,
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
    );
  }
}
