import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_gradient_button.dart';
import '../../widgets/custom_image_view.dart';
import './controller/lucky_bonus_withdrawal_controller.dart';

class LuckyBonusWithdrawalScreen
    extends GetWidget<LuckyBonusWithdrawalController> {
  const LuckyBonusWithdrawalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: appTheme.colorFF0000,
          image: DecorationImage(
            image: AssetImage(ImageConstant.imgImage1137),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 15.h,
              top: 125.h,
              child: Container(
                width: 345.h,
                height: 520.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.h),
                    topRight: Radius.circular(20.h),
                    bottomLeft: Radius.circular(12.h),
                    bottomRight: Radius.circular(12.h),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF30B824), Color(0xFF062730)],
                  ),
                ),
                child: Column(
                  children: [
                    _buildHeaderSection(),
                    _buildContentSection(),
                  ],
                ),
              ),
            ),
            _buildCloseButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderSection() {
    return Container(
      width: 345.h,
      height: 140.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.h),
          topRight: Radius.circular(20.h),
        ),
      ),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgF1,
            width: 345.h,
            height: 140.h,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 78.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF3F444B), Color(0xFF3F444B)],
                ),
              ),
            ),
          ),
          Positioned(
            left: 111.h,
            top: 55.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgTdr22,
              width: 84.h,
              height: 79.h,
            ),
          ),
          Positioned(
            left: 121.h,
            top: 22.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgImage1100,
              width: 121.h,
              height: 121.h,
            ),
          ),
          Positioned(
            left: 192.h,
            top: 86.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgImage1104,
              width: 41.h,
              height: 39.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContentSection() {
    return Container(
      width: 345.h,
      height: 380.h,
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF3F444B), Color(0xFF3F444B)],
        ),
      ),
      child: Column(
        children: [
          Text(
            'Get ₱500 for free',
            style: TextStyleHelper.instance.headline26Black
                .copyWith(color: appTheme.colorFFFFFF, height: 1.42),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16.h),
          ShaderMask(
            shaderCallback: (bounds) => LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFEEFF46), Color(0xFFFF9400)],
            ).createShader(bounds),
            child: Text(
              'LUCKY YOU',
              style: TextStyleHelper.instance.headline34Black
                  .copyWith(height: 1.41),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 8.h),
          Obx(() => Text(
                controller.luckyBonusWithdrawalModel.value?.idNumber?.value ??
                    '151361146',
                style: TextStyleHelper.instance.title16Bold2
                    .copyWith(height: 1.19),
                textAlign: TextAlign.center,
              )),
          SizedBox(height: 24.h),
          Text(
            'Invite friends to help with withdrawals',
            style: TextStyleHelper.instance.body14.copyWith(height: 1.21),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 24.h),
          _buildBalanceCard(),
          SizedBox(height: 24.h),
          _buildActionButtons(),
          SizedBox(height: 16.h),
          Text(
            'Give up the withdrawal of ₱100.00',
            style: TextStyleHelper.instance.body14
                .copyWith(height: 1.21, decoration: TextDecoration.underline),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildBalanceCard() {
    return Container(
      width: 313.h,
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF3032,
        borderRadius: BorderRadius.circular(12.h),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup12734,
                width: 35.h,
                height: 33.h,
              ),
              SizedBox(width: 16.h),
              Obx(() => Text(
                    controller
                            .luckyBonusWithdrawalModel.value?.balance?.value ??
                        '₱92.36',
                    style: TextStyleHelper.instance.display40Black
                        .copyWith(letterSpacing: 2, height: 1.43),
                  )),
            ],
          ),
          SizedBox(height: 16.h),
          _buildProgressBar(),
          SizedBox(height: 16.h),
          Obx(() => RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'You still need ',
                      style: TextStyleHelper.instance.body14
                          .copyWith(height: 1.21),
                    ),
                    TextSpan(
                      text: controller.luckyBonusWithdrawalModel.value
                              ?.amountNeeded?.value ??
                          '7.64',
                      style: TextStyleHelper.instance.body14Bold
                          .copyWith(color: appTheme.colorFFFFF4, height: 1.21),
                    ),
                    TextSpan(
                      text: ' to withdraw to Wallet',
                      style: TextStyleHelper.instance.body14
                          .copyWith(height: 1.21),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  Widget _buildProgressBar() {
    return Container(
      width: 281.h,
      height: 17.h,
      decoration: BoxDecoration(
        color: appTheme.color80A6AB,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 1.h,
            top: 1.h,
            child: Container(
              width: 183.h,
              height: 14.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xFFFF7F00), Color(0xFFFFE900)],
                ),
                borderRadius: BorderRadius.circular(7.h),
              ),
              child: Stack(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgSubtractWhiteA700,
                    width: 183.h,
                    height: 7.h,
                  ),
                  ..._buildProgressSegments(),
                ],
              ),
            ),
          ),
          Positioned(
            right: 81.h,
            top: 0,
            child: Obx(() => Text(
                  controller.luckyBonusWithdrawalModel.value?.progressPercentage
                          ?.value ??
                      '70%',
                  style: TextStyleHelper.instance.body12SemiBold
                      .copyWith(height: 1.25),
                )),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildProgressSegments() {
    List<double> positions = [
      6,
      20,
      34,
      48,
      62,
      76,
      90,
      104,
      118,
      132,
      146,
      160
    ];
    return positions.map((left) {
      return Positioned(
        left: left.h,
        top: 0,
        child: CustomImageView(
          imagePath: ImageConstant.imgRectangle1248,
          width: 12.h,
          height: 14.h,
        ),
      );
    }).toList();
  }

  Widget _buildActionButtons() {
    return Column(
      children: [
        _buildGetBonusButton(),
        SizedBox(height: 12.h),
        CustomGradientButton(
          text: 'Share with friends',
          onPressed: () => controller.onShareWithFriends(),
          width: 325.h,
          height: 40.h,
          borderRadius: 20.h,
          gradientColors: [Color(0xFF76CD00), Color(0xFF478A03)],
          textStyle: TextStyleHelper.instance.body14Bold
              .copyWith(color: appTheme.colorFFFFFF, height: 1.21),
        ),
      ],
    );
  }

  Widget _buildGetBonusButton() {
    return GestureDetector(
      onTap: () => controller.onGetBonus(),
      child: Container(
        width: 98.h,
        height: 29.h,
        child: Stack(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgUnion,
              width: 98.h,
              height: 29.h,
            ),
            Positioned(
              left: 6.h,
              top: 1.h,
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgMaskGroup,
                    width: 22.h,
                    height: 22.h,
                  ),
                  SizedBox(width: 2.h),
                  Text(
                    'Get Bonus',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.colorFFFFFF, height: 1.17),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCloseButton() {
    return Positioned(
      left: 172.h,
      top: 655.h,
      child: GestureDetector(
        onTap: () => controller.onClose(),
        child: CustomImageView(
          imagePath: ImageConstant.imgGroup848,
          width: 32.h,
          height: 32.h,
        ),
      ),
    );
  }
}
