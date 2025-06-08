import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_action_button.dart';
import '../../widgets/custom_image_view.dart';
import './controller/j_bet88_deposit_bonus_controller.dart';
import './widgets/deposit_bonus_card_widget.dart';

class JBet88DepositBonusScreen extends StatelessWidget {
  JBet88DepositBonusScreen({Key? key}) : super(key: key);

  final JBet88DepositBonusController controller =
      Get.put(JBet88DepositBonusController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: Stack(
        children: [
          // Background content (slightly visible)
          _buildBackgroundContent(),

          // Main overlay content
          Container(
            color: appTheme.blackCustom.withAlpha(204),
            child: Center(
              child: Container(
                width: double.infinity,
                height: 812.h,
                margin: EdgeInsets.symmetric(horizontal: 20.h),
                decoration: BoxDecoration(
                  color: appTheme.blackCustom,
                  borderRadius: BorderRadius.circular(8.h),
                ),
                child: Stack(
                  children: [
                    // Header section with gradient background
                    _buildHeaderSection(),

                    // Logo
                    CustomImageView(
                      imagePath: ImageConstant.imgLogowj93128x78,
                      height: 28.h,
                      width: 78.h,
                      margin: EdgeInsets.only(left: 16.h, top: 76.h),
                    ),

                    // Withdrawal and Deposit buttons
                    _buildActionButtons(),

                    // Main banner
                    CustomImageView(
                      imagePath: ImageConstant.img,
                      height: 130.h,
                      width: 345.h,
                      margin: EdgeInsets.only(left: 16.h, top: 153.h),
                      fit: BoxFit.cover,
                    ),

                    // Crown decoration
                    CustomImageView(
                      imagePath: ImageConstant.imgImage360,
                      height: 78.h,
                      width: 136.h,
                      margin: EdgeInsets.only(left: 120.h, top: 143.h),
                    ),

                    // Ribbon banner
                    CustomImageView(
                      imagePath: ImageConstant.imgImage23,
                      height: 70.h,
                      width: 306.h,
                      margin: EdgeInsets.only(left: 35.h, top: 191.h),
                    ),

                    // Deposit Bonus text
                    _buildDepositBonusText(),

                    // First time deposit text
                    Positioned(
                      left: 32.h,
                      top: 267.h,
                      child: Text(
                        'First 3 time Deposit free bonus!',
                        style: TextStyleHelper.instance.body14Bold,
                      ),
                    ),

                    // Amount display
                    _buildAmountDisplay(),

                    // Close button
                    Positioned(
                      right: 26.h,
                      top: 143.h,
                      child: GestureDetector(
                        onTap: () => controller.onClosePressed(),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGroup,
                          height: 32.h,
                          width: 32.h,
                        ),
                      ),
                    ),

                    // Deposit bonus header
                    _buildDepositBonusHeader(),

                    // Deposit cards
                    _buildDepositCards(),

                    // Deposit Now button
                    Positioned(
                      left: 16.h,
                      top: 519.h,
                      child: CustomActionButton(
                        text: 'Deposit Now',
                        width: 343.h,
                        height: 40.h,
                        borderRadius: 20.h,
                        gradient: LinearGradient(
                          colors: [Color(0xFF76CD00), Color(0xFF478A03)],
                        ),
                        iconPath: ImageConstant.imgFrame,
                        onPressed: () => controller.onDepositNowPressed(),
                      ),
                    ),

                    // Note text
                    Positioned(
                      left: 26.h,
                      top: 568.h,
                      child: Text(
                        'Note: Select your desired bonus at deposit page',
                        style: TextStyleHelper.instance.body14Bold
                            .copyWith(color: appTheme.whiteCustom),
                      ),
                    ),

                    // View more button
                    Positioned(
                      left: 273.h,
                      top: 602.h,
                      child: CustomActionButton(
                        text: 'View more',
                        width: 86.h,
                        height: 26.h,
                        borderRadius: 13.h,
                        backgroundColor: appTheme.transparentCustom,
                        textStyle: TextStyleHelper.instance.body12
                            .copyWith(decoration: TextDecoration.underline),
                        iconPath: ImageConstant.imgStrokeLightGreenA700,
                        onPressed: () => controller.onViewMorePressed(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBackgroundContent() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: appTheme.colorFF1E20,
      child: Stack(
        children: [
          // Side navigation icons
          Positioned(
            left: 0,
            top: 486.h,
            child: Container(
              width: 66.h,
              height: 64.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF363C41), Color(0xFF2B3035)],
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
                    imagePath: ImageConstant.img10733643587,
                    height: 36.h,
                    width: 36.h,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    'Slot',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.colorFF8089),
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            left: 0,
            top: 554.h,
            child: Container(
              width: 66.h,
              height: 64.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF363C41), Color(0xFF2B3035)],
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
                    imagePath: ImageConstant.img136x36,
                    height: 36.h,
                    width: 36.h,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    'Live',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.colorFF8089),
                  ),
                ],
              ),
            ),
          ),

          // Game grid
          Positioned(
            left: 77.h,
            top: 414.h,
            child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 16.h,
                mainAxisSpacing: 16.h,
                childAspectRatio: 0.8,
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Stack(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.img231000,
                          height: 88.h,
                          width: 88.h,
                          fit: BoxFit.cover,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup1019,
                          height: 18.h,
                          width: 34.h,
                        ),
                      ],
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      'Fortune Ox fortune',
                      style: TextStyleHelper.instance.body13Bold,
                      textAlign: TextAlign.center,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderSection() {
    return Container(
      height: 68.h,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF76CD00), Color(0xFF478A03)],
        ),
      ),
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

          // Profile image
          Positioned(
            left: 12.h,
            top: 8.h,
            child: CustomImageView(
              imagePath: ImageConstant.img112,
              height: 50.h,
              width: 50.h,
            ),
          ),

          // Stars
          Positioned(
            left: 68.h,
            top: 41.h,
            child: Row(
              children: List.generate(
                5,
                (index) => Container(
                  width: 15.h,
                  height: 15.h,
                  margin: EdgeInsets.only(right: 4.h),
                  decoration: BoxDecoration(
                    color: appTheme.colorFFFFF4,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ),

          // Text
          Positioned(
            left: 68.h,
            top: 8.h,
            child: Text(
              'MANY BENEFITS FOR NEWCOMERS',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),

          // Download button
          Positioned(
            right: 30.h,
            top: 18.h,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 4.h),
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

          // Close button
          Positioned(
            right: 0,
            top: 0,
            child: GestureDetector(
              onTap: () => controller.onHeaderClosePressed(),
              child: CustomImageView(
                imagePath: ImageConstant.imgVectorLightGreen400,
                height: 26.h,
                width: 26.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons() {
    return Positioned(
      left: 16.h,
      top: 109.h,
      child: Row(
        children: [
          CustomActionButton(
            text: 'Withdrawal',
            width: 170.h,
            height: 36.h,
            backgroundColor: appTheme.colorFFFF9F,
            gradient: LinearGradient(
              colors: [Color(0xFFFFC61E), Color(0xFFFF9F00)],
            ),
            onPressed: () => controller.onWithdrawalPressed(),
          ),
          SizedBox(width: 4.h),
          CustomActionButton(
            text: 'Deposit',
            width: 170.h,
            height: 36.h,
            iconPath: ImageConstant.imgVectorWhiteA700,
            gradient: LinearGradient(
              colors: [Color(0xFF76CD00), Color(0xFF478A03)],
            ),
            onPressed: () => controller.onDepositPressed(),
          ),
        ],
      ),
    );
  }

  Widget _buildDepositBonusText() {
    return Positioned(
      left: 107.h,
      top: 198.h,
      child: Stack(
        children: [
          Text(
            'Deposit Bonus',
            style: TextStyleHelper.instance.headline26Lilita_One,
          ),
          Text(
            'Deposit Bonus',
            style: TextStyleHelper.instance.headline26Lilita_One,
          ),
        ],
      ),
    );
  }

  Widget _buildAmountDisplay() {
    return Positioned(
      right: 32.h,
      top: 259.h,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.img0web1,
            height: 22.h,
            width: 22.h,
          ),
          SizedBox(width: 4.h),
          Text(
            '8,888',
            style: TextStyleHelper.instance.headline24Bold,
          ),
        ],
      ),
    );
  }

  Widget _buildDepositBonusHeader() {
    return Positioned(
      left: 16.h,
      top: 295.h,
      child: Container(
        width: 343.h,
        height: 34.h,
        decoration: BoxDecoration(
          color: appTheme.colorFFE03C,
          borderRadius: BorderRadius.circular(4.h),
        ),
        child: Stack(
          children: [
            // Vertical dividers
            Positioned(
              left: 92.h,
              child: Container(
                width: 1.h,
                height: 34.h,
                color: appTheme.whiteCustom,
              ),
            ),
            Positioned(
              left: 277.h,
              child: Container(
                width: 1.h,
                height: 34.h,
                color: appTheme.whiteCustom,
              ),
            ),

            // Text labels
            Positioned(
              left: 21.h,
              top: 8.h,
              child: Text(
                'Deposit',
                style: TextStyleHelper.instance.body12Black,
              ),
            ),
            Positioned(
              left: 100.h,
              top: 8.h,
              child: Text(
                'Extra',
                style: TextStyleHelper.instance.body12Black,
              ),
            ),
            Positioned(
              left: 137.h,
              top: 4.h,
              child: Text(
                '+',
                style: TextStyleHelper.instance.title18Bold,
              ),
            ),
            Positioned(
              left: 149.h,
              top: 8.h,
              child: Text(
                'PayMaya Payment',
                style: TextStyleHelper.instance.body12Black
                    .copyWith(color: appTheme.colorFFFFF4),
              ),
            ),
            Positioned(
              left: 287.h,
              top: 8.h,
              child: Text(
                'Up To',
                style: TextStyleHelper.instance.body12Black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDepositCards() {
    return Column(
      children: [
        Positioned(
          left: 16.h,
          top: 337.h,
          child: DepositBonusCardWidget(
            depositModel: controller
                    .depositBonusModel.value?.firstDeposit?.value ??
                (controller.depositBonusModel.value?.depositCards?.isNotEmpty ==
                        true
                    ? controller.depositBonusModel.value!.depositCards!.first
                    : null), // Modified: Added proper null check and type casting
          ),
        ),
        Positioned(
          left: 16.h,
          top: 393.h,
          child: DepositBonusCardWidget(
            depositModel: controller
                    .depositBonusModel.value?.secondDeposit?.value ??
                (controller.depositBonusModel.value?.depositCards?.length !=
                            null &&
                        controller
                                .depositBonusModel.value!.depositCards!.length >
                            1
                    ? controller.depositBonusModel.value!.depositCards![1]
                    : null), // Modified: Added proper bounds check and type casting
          ),
        ),
        Positioned(
          left: 16.h,
          top: 449.h,
          child: DepositBonusCardWidget(
            depositModel: controller
                    .depositBonusModel.value?.thirdDeposit?.value ??
                (controller.depositBonusModel.value?.depositCards?.length !=
                            null &&
                        controller
                                .depositBonusModel.value!.depositCards!.length >
                            2
                    ? controller.depositBonusModel.value!.depositCards![2]
                    : null), // Modified: Added proper bounds check and type casting
          ),
        ),
      ],
    );
  }
}
