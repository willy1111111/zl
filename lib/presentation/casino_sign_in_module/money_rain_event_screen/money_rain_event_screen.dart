import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import './controller/money_rain_event_controller.dart';
import './widgets/floating_money_widget.dart';
import './widgets/game_item_widget.dart';
import './widgets/money_rain_modal_widget.dart';
import './widgets/sidebar_menu_item_widget.dart';

class MoneyRainEventScreen extends StatelessWidget {
  MoneyRainEventScreen({Key? key}) : super(key: key);

  final MoneyRainEventController controller =
      Get.put(MoneyRainEventController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: Stack(
        children: [
          // Main Content
          Column(
            children: [
              // Top Banner using CustomAppBar
              CustomAppBar(
                profileImagePath: ImageConstant.img112,
                promotionalText: 'Many benefits for newcomers',
                showStars: true,
                showDownloadButton: true,
                showCloseButton: true,
                backgroundImagePath: ImageConstant
                    .img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi2,
                height: 68.h,
                showBackButton: false,
                onDownloadPressed: () => controller.onDownloadPressed(),
                onClosePressed: () => controller.onClosePressed(),
              ),

              // User Info Section
              Container(
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
                        SizedBox(width: 6.h),
                        Obx(() => Text(
                              controller.balanceAmount.value ?? 'R\$1980.00',
                              style: TextStyleHelper.instance.title16Bold
                                  .copyWith(
                                      color: appTheme.colorFFFFB9,
                                      height: 1.19),
                            )),
                        SizedBox(width: 6.h),
                        CustomImageView(
                          imagePath: ImageConstant.img1,
                          width: 16.h,
                          height: 14.h,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Action Buttons
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.h),
                margin: EdgeInsets.only(bottom: 8.h),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () => controller.onWithdrawalPressed(),
                        child: Container(
                          height: 36.h,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xFFFFC61E), Color(0xFFFF9F00)],
                            ),
                            borderRadius: BorderRadius.circular(2.h),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgVectorWhiteA700,
                                width: 16.h,
                                height: 11.h,
                              ),
                              SizedBox(width: 11.h),
                              Text(
                                'Withdrawal',
                                style: TextStyleHelper.instance.body14Bold
                                    .copyWith(
                                        color: appTheme.whiteCustom,
                                        height: 1.21),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5.h),
                    Expanded(
                      child: GestureDetector(
                        onTap: () => controller.onDepositPressed(),
                        child: Container(
                          height: 36.h,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color(0xFF76CD00), Color(0xFF478A03)],
                            ),
                            borderRadius: BorderRadius.circular(2.h),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgVectorWhiteA70011x16,
                                width: 16.h,
                                height: 11.h,
                              ),
                              SizedBox(width: 11.h),
                              Text(
                                'Deposit',
                                style: TextStyleHelper.instance.body14Bold
                                    .copyWith(
                                        color: appTheme.whiteCustom,
                                        height: 1.21),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Games Banner
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.h),
                margin: EdgeInsets.only(bottom: 8.h),
                child: CustomImageView(
                  imagePath: ImageConstant.img130x345,
                  width: double.infinity,
                  height: 130.h,
                  fit: BoxFit.cover,
                  radius: BorderRadius.circular(8.h),
                ),
              ),

              // Notification Banner
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15.h, vertical: 8.h),
                height: 34.h,
                decoration: BoxDecoration(
                  color: appTheme.colorFF2528,
                  borderRadius: BorderRadius.circular(17.h),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 6.h),
                    CustomImageView(
                      imagePath: ImageConstant
                          .img3b4bde395738f0c8b07d1baa47c5d48f172c19aa158772swckar1,
                      width: 24.h,
                      height: 19.h,
                    ),
                    SizedBox(width: 8.h),
                    Expanded(
                      child: Text(
                        '🔥The recharge of the🔥',
                        style: TextStyleHelper.instance.body14Bold.copyWith(
                            color: appTheme.colorFF85D4, height: 1.21),
                      ),
                    ),
                    Text(
                      'The recharge',
                      style: TextStyleHelper.instance.body14Bold
                          .copyWith(color: appTheme.colorFF85D4, height: 1.21),
                    ),
                    SizedBox(width: 21.h),
                    CustomImageView(
                      imagePath: ImageConstant.img1Red90001,
                      width: 16.h,
                      height: 16.h,
                    ),
                    SizedBox(width: 6.h),
                  ],
                ),
              ),

              // Games Grid
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.h),
                        child: Obx(() => GridView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 9.h,
                                mainAxisSpacing: 9.h,
                                childAspectRatio: 0.85,
                              ),
                              itemCount: controller.gameItems.length,
                              itemBuilder: (context, index) {
                                return GameItemWidget(
                                  gameItem: controller.gameItems[index],
                                  onTap: () => controller.onGamePressed(
                                      controller.gameItems[index]),
                                );
                              },
                            )),
                      ),
                      SizedBox(height: 20.h),

                      // Jackpot Section
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 15.h, vertical: 20.h),
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
                                borderRadius: BorderRadius.circular(3.h),
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgIntersect,
                                width: 280.h,
                                height: 42.h,
                                margin: EdgeInsets.all(1.h),
                                fit: BoxFit.cover,
                                radius: BorderRadius.circular(3.h),
                              ),
                            ),
                            Positioned(
                              top: -12.h,
                              left: 1.h,
                              child: CustomImageView(
                                imagePath: ImageConstant.img155x70,
                                width: 70.h,
                                height: 55.h,
                                radius: BorderRadius.circular(3.h),
                              ),
                            ),
                            Positioned(
                              top: -12.h,
                              left: 82.h,
                              child: CustomImageView(
                                imagePath: ImageConstant.img119x31,
                                width: 31.h,
                                height: 19.h,
                              ),
                            ),
                            Positioned(
                              top: -12.h,
                              right: 17.h,
                              child: CustomImageView(
                                imagePath: ImageConstant.img219x31,
                                width: 31.h,
                                height: 19.h,
                              ),
                            ),
                            Positioned(
                              top: -14.h,
                              left: 108.h,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgJackpot1,
                                width: 86.h,
                                height: 22.h,
                              ),
                            ),
                            Positioned(
                              top: 7.h,
                              left: 69.h,
                              child: Obx(() => ShaderMask(
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
                                      controller.jackpotAmount.value ??
                                          '14,091,688.88',
                                      style: TextStyleHelper
                                          .instance.headline24Black
                                          .copyWith(
                                              letterSpacing: 2, height: 1.42),
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 100.h), // Space for bottom navigation
                    ],
                  ),
                ),
              ),
            ],
          ),

          // Floating Money Animation
          Obx(() => Stack(
                children: controller.floatingMoneyItems.map((item) {
                  return FloatingMoneyWidget(
                    floatingMoney: item,
                  );
                }).toList(),
              )),

          // Collect Section
          Positioned(
            bottom: 350.h,
            left: 0,
            child: GestureDetector(
              onTap: () => controller.onCollectPressed(),
              child: Stack(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup1084,
                    width: 72.h,
                    height: 108.h,
                  ),
                  Positioned(
                    top: 7.h,
                    left: 16.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.img11,
                      width: 36.h,
                      height: 36.h,
                    ),
                  ),
                  Positioned(
                    bottom: 44.h,
                    left: 13.h,
                    child: Text(
                      'Collect',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.colorFF8089, height: 1.17),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // VIP Section
          Positioned(
            bottom: 279.h,
            right: 8.h,
            child: Container(
              width: 67.h,
              height: 369.h,
              decoration: BoxDecoration(
                color: appTheme.color0E1900,
                border: Border.all(color: appTheme.colorFF5DA4),
                borderRadius: BorderRadius.circular(33.h),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8.h,
                    offset: Offset(0, 4.h),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 11.h,
                    left: 11.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgVip7,
                      width: 45.h,
                      height: 50.h,
                    ),
                  ),
                  Positioned(
                    top: 82.h,
                    left: 9.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup11853,
                      width: 50.h,
                      height: 50.h,
                    ),
                  ),
                  Positioned(
                    top: 157.h,
                    left: 9.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup566,
                      width: 50.h,
                      height: 50.h,
                    ),
                  ),
                  Positioned(
                    top: 230.h,
                    left: 9.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup827,
                      width: 50.h,
                      height: 52.h,
                    ),
                  ),
                  Positioned(
                    bottom: 9.h,
                    left: 6.h,
                    child: Container(
                      width: 56.h,
                      height: 56.h,
                      decoration: BoxDecoration(
                        color: appTheme.colorFF2542,
                        borderRadius: BorderRadius.circular(28.h),
                      ),
                      child: Center(
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGroup11868,
                          width: 50.h,
                          height: 50.h,
                        ),
                      ),
                    ),
                  ),
                  // VIP Separators
                  ...List.generate(4, (index) {
                    final topPositions = [70.h, 144.h, 219.h, 294.h];
                    return Positioned(
                      top: topPositions[index],
                      left: 9.h,
                      child: Container(
                        width: 50.h,
                        height: 1.h,
                        decoration: BoxDecoration(
                          color: appTheme.colorFF2548,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 2.h,
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),

          // VIP Badge
          Positioned(
            bottom: -25.h,
            right: 87.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup11862,
              width: 56.h,
              height: 56.h,
            ),
          ),

          // Side Navigation
          Positioned(
            left: 0,
            top: 418.h,
            child: Obx(() => Column(
                  children: controller.sidebarItems.map((item) {
                    return SidebarMenuItemWidget(
                      sidebarItem: item,
                      onTap: () => controller.onSidebarItemPressed(item),
                    );
                  }).toList(),
                )),
          ),

          // Money Rain Modal
          Obx(() {
            if (controller.isMoneyRainModalVisible.value) {
              return MoneyRainModalWidget(
                onClosePressed: () => controller.closeMoneyRainModal(),
              );
            }
            return SizedBox.shrink();
          }),
        ],
      ),
    );
  }
}
