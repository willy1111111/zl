import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_text_field.dart';
import './controller/j_bet88_login_controller.dart';
import './widgets/keyboard_key_widget.dart';

class JBet88LoginScreen extends GetWidget<JBet88LoginController> {
  JBet88LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1A1C,
      appBar: CustomAppBar(
        title: 'Login',
        showBackButton: true,
        backButtonIcon: ImageConstant.imgStrokeWhiteA700,
        onBackPressed: () => Get.back(),
        height: 60.h,
        centerTitle: false,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(20.h, 28.h, 20.h, 16.h),
            child: Column(
              children: [
                _buildLogoSection(),
                SizedBox(height: 32.h),
                _buildPhoneNumberInput(),
                SizedBox(height: 16.h),
                _buildPasswordInput(),
                SizedBox(height: 16.h),
                _buildVerificationCodeInput(),
                SizedBox(height: 24.h),
                _buildLoginButton(),
                SizedBox(height: 16.h),
                _buildForgotPasswordLink(),
                SizedBox(height: 24.h),
                _buildDividerSection(),
                SizedBox(height: 24.h),
                _buildGoogleLoginButton(),
                SizedBox(height: 16.h),
                _buildRegisterLink(),
                SizedBox(height: 200.h),
              ],
            ),
          ),
          Obx(() => controller.isKeyboardVisible.value
              ? _buildOnScreenKeyboard()
              : SizedBox.shrink()),
        ],
      ),
    );
  }

  Widget _buildLogoSection() {
    return Center(
      child: CustomImageView(
        imagePath: ImageConstant.imgLogowj931,
        height: 47.h,
        width: 129.h,
      ),
    );
  }

  Widget _buildPhoneNumberInput() {
    return Container(
      height: 48.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF1B1C,
        border: Border.all(color: appTheme.colorFF478A, width: 1.h),
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Row(
        children: [
          SizedBox(width: 12.h),
          CustomImageView(
            imagePath: ImageConstant.imgVectorBlueGray400,
            height: 13.h,
            width: 17.h,
          ),
          SizedBox(width: 12.h),
          CustomImageView(
            imagePath:
                ImageConstant.imgD62a6059252dd42a1fed252c093b5bb5c8eab8541,
            height: 18.h,
            width: 26.h,
            radius: BorderRadius.circular(2.h),
          ),
          SizedBox(width: 8.h),
          Text(
            '+55',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFF8089),
          ),
          SizedBox(width: 8.h),
          Container(
            width: 1.h,
            height: 24.h,
            color: appTheme.colorFF4453,
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: Row(
              children: [
                Text(
                  '1234567890',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.whiteCustom),
                ),
                Text(
                  '|',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFF85D4),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img7,
            height: 18.h,
            width: 15.h,
            onTap: () => controller.editPhoneNumber(),
          ),
          SizedBox(width: 12.h),
        ],
      ),
    );
  }

  Widget _buildPasswordInput() {
    return CustomTextField(
      hintText: 'Password',
      leadingIcon: ImageConstant.img1BlueGray400,
      trailingIcon: ImageConstant.img3,
      isPassword: true,
      controller: controller.passwordController,
      onTrailingIconTap: () => controller.togglePasswordVisibility(),
    );
  }

  Widget _buildVerificationCodeInput() {
    return CustomTextField(
      hintText: 'verification code',
      leadingIcon: ImageConstant.imgGroup12110,
      trailingIcon: ImageConstant.imgGroup12106,
      controller: controller.verificationCodeController,
    );
  }

  Widget _buildLoginButton() {
    return Container(
      width: double.infinity,
      height: 50.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF363C41), Color(0xFF2B3035)],
        ),
        borderRadius: BorderRadius.circular(25.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.blackCustom,
            offset: Offset(0, 4.h),
            blurRadius: 4.h,
          ),
        ],
      ),
      child: Material(
        color: appTheme.transparentCustom,
        child: InkWell(
          borderRadius: BorderRadius.circular(25.h),
          onTap: () => controller.handleLogin(),
          child: Center(
            child: Obx(() => Text(
                  controller.isLoading.value ? 'Logging in...' : 'Login',
                  style: TextStyleHelper.instance.title16Bold
                      .copyWith(color: appTheme.colorFF8089),
                )),
          ),
        ),
      ),
    );
  }

  Widget _buildForgotPasswordLink() {
    return Align(
      alignment: Alignment.centerLeft,
      child: GestureDetector(
        onTap: () => controller.navigateToForgotPassword(),
        child: Text(
          'Forgot password',
          style: TextStyleHelper.instance.body12Black.copyWith(height: 1.42),
        ),
      ),
    );
  }

  Widget _buildDividerSection() {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 1.h,
            color: appTheme.colorFF4453,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Text(
            'OR',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFFABB6),
          ),
        ),
        Expanded(
          child: Container(
            height: 1.h,
            color: appTheme.colorFF4453,
          ),
        ),
      ],
    );
  }

  Widget _buildGoogleLoginButton() {
    return Container(
      width: 223.h,
      height: 42.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF3F6B,
        borderRadius: BorderRadius.circular(4.h),
      ),
      child: Material(
        color: appTheme.transparentCustom,
        child: InkWell(
          borderRadius: BorderRadius.circular(4.h),
          onTap: () => controller.handleGoogleLogin(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(
              children: [
                Container(
                  width: 28.h,
                  height: 28.h,
                  decoration: BoxDecoration(
                    color: appTheme.whiteCustom,
                    borderRadius: BorderRadius.circular(14.h),
                  ),
                  child: Center(
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGooglelogo98082,
                      height: 21.h,
                      width: 21.h,
                    ),
                  ),
                ),
                SizedBox(width: 12.h),
                Text(
                  'Login with Google+',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.whiteCustom),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRegisterLink() {
    return GestureDetector(
      onTap: () => controller.navigateToRegister(),
      child: Text(
        'Register',
        style: TextStyleHelper.instance.body14Bold
            .copyWith(color: appTheme.colorFFC0C8),
      ),
    );
  }

  Widget _buildOnScreenKeyboard() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        decoration: BoxDecoration(
          color: appTheme.colorFF2D37,
        ),
        child: Stack(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage51,
              height: 200.h,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(8.h),
              child: Column(
                children: [
                  _buildKeyboardRow(
                      ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0']),
                  SizedBox(height: 4.h),
                  _buildKeyboardRow(
                      ['-', '/', ':', ';', '(', ')', '\$', '&', '@', '"']),
                  SizedBox(height: 4.h),
                  _buildKeyboardSpecialRow(),
                  SizedBox(height: 4.h),
                  _buildKeyboardBottomRow(),
                  SizedBox(height: 8.h),
                  _buildKeyboardControls(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildKeyboardRow(List<String> keys) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: keys
          .map((key) => KeyboardKeyWidget(
                keyText: key,
                onTap: () => controller.handleKeyPress(key),
              ))
          .toList(),
    );
  }

  Widget _buildKeyboardSpecialRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        KeyboardKeyWidget(
          keyText: '#+=',
          width: 48.h,
          onTap: () => controller.handleKeyPress('#+='),
        ),
        KeyboardKeyWidget(
          keyText: '.',
          onTap: () => controller.handleKeyPress('.'),
        ),
        KeyboardKeyWidget(
          keyText: ',',
          onTap: () => controller.handleKeyPress(','),
        ),
        KeyboardKeyWidget(
          keyText: '?',
          onTap: () => controller.handleKeyPress('?'),
        ),
        KeyboardKeyWidget(
          keyText: '!',
          onTap: () => controller.handleKeyPress('!'),
        ),
        KeyboardKeyWidget(
          keyText: "'",
          onTap: () => controller.handleKeyPress("'"),
        ),
        KeyboardKeyWidget(
          keyText: '⌫',
          width: 48.h,
          onTap: () => controller.handleBackspace(),
        ),
      ],
    );
  }

  Widget _buildKeyboardBottomRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        KeyboardKeyWidget(
          keyText: 'ABC',
          width: 48.h,
          onTap: () => controller.toggleKeyboardMode(),
        ),
        KeyboardKeyWidget(
          keyText: '😊',
          onTap: () => controller.handleKeyPress('😊'),
        ),
        KeyboardKeyWidget(
          keyText: 'space',
          width: 128.h,
          onTap: () => controller.handleKeyPress(' '),
        ),
        KeyboardKeyWidget(
          keyText: 'return',
          width: 64.h,
          backgroundColor: appTheme.colorFF4299,
          onTap: () => controller.handleReturn(),
        ),
      ],
    );
  }

  Widget _buildKeyboardControls() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 32.h,
            height: 32.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF4A55,
              borderRadius: BorderRadius.circular(16.h),
            ),
            child: Center(
              child: Text(
                '🌐',
                style: TextStyleHelper.instance.body14,
              ),
            ),
          ),
          Container(
            width: 128.h,
            height: 4.h,
            decoration: BoxDecoration(
              color: appTheme.whiteCustom,
              borderRadius: BorderRadius.circular(2.h),
            ),
          ),
          Container(
            width: 32.h,
            height: 32.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF4A55,
              borderRadius: BorderRadius.circular(16.h),
            ),
            child: Center(
              child: Text(
                '🎤',
                style: TextStyleHelper.instance.body14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
