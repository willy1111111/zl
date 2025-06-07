import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../widgets/custom_image_view.dart';
import './controller/registration_success_controller.dart';
import './widgets/bonus_card_widget.dart';

class RegistrationSuccessScreen extends StatelessWidget {
  RegistrationSuccessScreen({Key? key}) : super(key: key);

  final RegistrationSuccessController controller =
      Get.put(RegistrationSuccessController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1A1C,
      body: SizedBox(
        width: double.maxFinite,
        height: 812.h,
        child: Stack(
          children: [
            _buildBackgroundImage(),
            _buildSuccessIcon(),
            _buildCongratulationsText(),
            _buildSuccessMessage(),
            _buildFirstCard(),
            _buildSecondCard(),
            _buildThirdCard(),
            _buildBottomNavigation(),
            _buildFooter(),
          ],
        ),
      ),
    );
  }

  Widget _buildBackgroundImage() {
    return Positioned(
      top: 0,
      left: 0,
      child: CustomImageView(
        imagePath: ImageConstant.img1284x375,
        height: 284.h,
        width: 375.h,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildSuccessIcon() {
    return Positioned(
      top: 91.h,
      left: 160.h,
      child: Container(
        width: 56.h,
        height: 56.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF4A8D,
          border: Border.all(color: appTheme.colorFF5FB6, width: 1.h),
          borderRadius: BorderRadius.circular(28.h),
        ),
        child: Center(
          child: CustomImageView(
            imagePath: ImageConstant.img1WhiteA700,
            height: 28.h,
            width: 39.h,
          ),
        ),
      ),
    );
  }

  Widget _buildCongratulationsText() {
    return Positioned(
      top: 156.h,
      left: 115.h,
      child: Text(
        'Congratulations!',
        style: TextStyleHelper.instance.title18BoldArial
            .copyWith(color: appTheme.colorFF85D4),
      ),
    );
  }

  Widget _buildSuccessMessage() {
    return Positioned(
      top: 180.h,
      left: 70.h,
      child: Text(
        'You have successfully registered',
        style: TextStyleHelper.instance.title16Arial,
      ),
    );
  }

  Widget _buildFirstCard() {
    return Positioned(
      top: 234.h,
      left: 15.h,
      child: BonusCardWidget(
        bonusCard: controller.registrationSuccessModel.value?.bonusCards[0],
      ),
    );
  }

  Widget _buildSecondCard() {
    return Positioned(
      top: 397.h,
      left: 15.h,
      child: BonusCardWidget(
        bonusCard: controller.registrationSuccessModel.value?.bonusCards[1],
      ),
    );
  }

  Widget _buildThirdCard() {
    return Positioned(
      top: 491.h,
      left: 15.h,
      child: BonusCardWidget(
        bonusCard: controller.registrationSuccessModel.value?.bonusCards[2],
      ),
    );
  }

  Widget _buildBottomNavigation() {
    return Positioned(
      bottom: 50.h,
      left: 0,
      child: Container(
        width: 375.h,
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => controller.onHomePressed(),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgVector20x23,
                    height: 20.h,
                    width: 23.h,
                  ),
                  SizedBox(width: 8.h),
                  Text(
                    'Home',
                    style: TextStyleHelper.instance.body14Arial.copyWith(
                        color: appTheme.colorFF85D4,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => controller.onDepositPressed(),
              child: Row(
                children: [
                  Text(
                    'Deposit',
                    style: TextStyleHelper.instance.body14Arial.copyWith(
                        color: appTheme.colorFF85D4,
                        decoration: TextDecoration.underline),
                  ),
                  SizedBox(width: 8.h),
                  CustomImageView(
                    imagePath: ImageConstant.imgVector20x20,
                    height: 20.h,
                    width: 20.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFooter() {
    return Positioned(
      bottom: 0,
      left: 0,
      child: Container(
        width: 375.h,
        height: 50.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF232B32), Color(0xFF25282D)],
          ),
          boxShadow: [
            BoxShadow(
              color: appTheme.colorFF0000,
              offset: Offset(0, -4.h),
              blurRadius: 4.h,
            ),
          ],
        ),
        padding: EdgeInsets.symmetric(horizontal: 14.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '© Copyright Jbet88',
              style: TextStyleHelper.instance.title16BoldArial
                  .copyWith(color: appTheme.colorFF8089),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgVectorRedA40001,
              height: 22.h,
              width: 22.h,
            ),
          ],
        ),
      ),
    );
  }
}
