import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/gaming_hub_controller.dart';
import './widgets/game_card_widget.dart';
import './widgets/sidebar_menu_item_widget.dart';

class GamingHubScreen extends StatelessWidget {
  GamingHubScreen({Key? key}) : super(key: key);

  final GamingHubController controller = Get.put(GamingHubController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF2223,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildPromoAppBar(),
              _buildBalanceSection(),
              _buildActionButtons(),
              _buildDownloadBanner(),
              _buildPromoMessage(),
              _buildJackpotSection(),
              _buildMainContent(),
              SizedBox(height: 100.h),
            ],
          ),
        ),
      ),
      floatingActionButton: _buildFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _buildPromoAppBar() {
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
            child: Text(
              'MANY BENEFITS FOR NEWCOMERS',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
          Positioned(
            right: 0.h,
            top: 0.h,
            child: GestureDetector(
              onTap: () => controller.onCloseTap(),
              child: CustomImageView(
                imagePath: ImageConstant.imgVectorLightGreen400,
                height: 26.h,
                width: 26.h,
              ),
            ),
          ),
          Positioned(
            right: 18.h,
            top: 18.h,
            child: CustomButton(
              text: 'Download',
              width: 80.h,
              height: 30.h,
              backgroundColor: appTheme.whiteCustom,
              textColor: appTheme.colorFF478A,
              fontSize: 14.fSize,
              fontWeight: FontWeight.bold,
              onTap: () => controller.onDownloadTap(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBalanceSection() {
    return Container(
      margin: EdgeInsets.only(top: 12.h),
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
              SizedBox(width: 2.h),
              Obx(() => Text(
                    controller.gamingHubModel.value?.balanceAmount?.value ??
                        '₱1980.00',
                    style: TextStyleHelper.instance.title16Bold
                        .copyWith(color: appTheme.colorFFFFC6),
                  )),
              SizedBox(width: 2.h),
              CustomImageView(
                imagePath: ImageConstant.img1LightGreenA700,
                height: 16.h,
                width: 14.h,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons() {
    return Container(
      margin: EdgeInsets.only(top: 5.h),
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: 'Withdrawal',
              height: 36.h,
              backgroundColor: appTheme.colorFFFF9F,
              gradient: LinearGradient(
                colors: [Color(0xFFFFC61E), Color(0xFFFF9F00)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              onTap: () => controller.onWithdrawalTap(),
            ),
          ),
          SizedBox(width: 5.h),
          Expanded(
            child: CustomButton(
              text: 'Deposit',
              height: 36.h,
              backgroundColor: appTheme.colorFF478A,
              gradient: LinearGradient(
                colors: [Color(0xFF76CD00), Color(0xFF478A03)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              iconPath: ImageConstant.imgVectorWhiteA700,
              onTap: () => controller.onDepositTap(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDownloadBanner() {
    return Container(
      margin: EdgeInsets.only(top: 8.h),
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: CustomImageView(
        imagePath: ImageConstant.img130x345,
        height: 130.h,
        width: 345.h,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildPromoMessage() {
    return Container(
      margin: EdgeInsets.only(top: 17.h),
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Container(
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
            Text(
              '🔥The recharge of the🔥',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.colorFF85D4),
            ),
            SizedBox(width: 10.h),
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
      ),
    );
  }

  Widget _buildJackpotSection() {
    return Container(
      margin: EdgeInsets.only(top: 16.h),
      height: 108.h,
      child: Row(
        children: [
          Container(
            width: 72.h,
            height: 108.h,
            child: Stack(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFrame1084,
                  height: 108.h,
                  width: 72.h,
                ),
                Positioned(
                  left: 13.h,
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
          Expanded(
            child: Container(
              height: 44.h,
              margin: EdgeInsets.only(top: 14.h, right: 15.h),
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
                borderRadius: BorderRadius.circular(2.h),
              ),
              child: Stack(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgIntersect,
                    height: 42.h,
                    width: 280.h,
                    margin: EdgeInsets.all(1.h),
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
                    right: 17.h,
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
                  Center(
                    child: Text(
                      '14,091,688.88',
                      style: TextStyleHelper.instance.headline24Black
                          .copyWith(letterSpacing: 2.h),
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

  Widget _buildMainContent() {
    return Container(
      margin: EdgeInsets.only(top: 4.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSidebarMenu(),
          Expanded(
            child: _buildGamesGrid(),
          ),
        ],
      ),
    );
  }

  Widget _buildSidebarMenu() {
    return Container(
      width: 66.h,
      child: Obx(() => Column(
            children: controller.sidebarItems.value
                .map(
                  (item) => SidebarMenuItemWidget(
                    sidebarItem: item,
                    onTap: () => controller.onSidebarItemTap(item),
                  ),
                )
                .toList(),
          )),
    );
  }

  Widget _buildGamesGrid() {
    return Container(
      margin: EdgeInsets.only(left: 11.h, right: 15.h),
      child: Obx(() => GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 9.h,
              mainAxisSpacing: 20.h,
              childAspectRatio: 0.8,
            ),
            itemCount: controller.gameItems.value.length,
            itemBuilder: (context, index) {
              return GameCardWidget(
                gameItem: controller.gameItems.value[index],
                onTap: () =>
                    controller.onGameTap(controller.gameItems.value[index]),
              );
            },
          )),
    );
  }

  Widget _buildFloatingActionButton() {
    return Container(
      width: 57.h,
      height: 56.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF242A,
        borderRadius: BorderRadius.circular(28.h),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 3.h,
            top: 5.h,
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
                    offset: Offset(-1.h, -4.h),
                    blurRadius: 4.h,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Center(
                    child: CustomImageView(
                      imagePath: ImageConstant.imgVector,
                      height: 25.h,
                      width: 27.h,
                    ),
                  ),
                  Positioned(
                    left: 0.h,
                    top: 22.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSubtract,
                      height: 14.h,
                      width: 43.h,
                    ),
                  ),
                  Positioned(
                    right: 5.h,
                    top: 5.h,
                    child: Container(
                      width: 3.h,
                      height: 3.h,
                      decoration: BoxDecoration(
                        border: Border.all(color: appTheme.whiteCustom),
                        borderRadius: BorderRadius.circular(1.h),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 11.h,
            top: 23.h,
            child: CustomImageView(
              imagePath: ImageConstant.img5,
              height: 31.h,
              width: 45.h,
            ),
          ),
        ],
      ),
    );
  }
}
