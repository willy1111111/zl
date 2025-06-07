import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_text_field.dart';
import './controller/j_bet88_registration_screen_two_controller.dart';

class JBet88RegistrationScreenTwo
    extends GetWidget<JBet88RegistrationScreenTwoController> {
  JBet88RegistrationScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1A1C,
      appBar: CustomAppBar(
        title: 'Register',
        showBackButton: true,
        backButtonIcon: ImageConstant.imgStrokeWhiteA700,
        onBackPressed: () => Get.back(),
        height: 60.h,
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(
          children: [
            SizedBox(height: 28.h),
            _buildLogoSection(),
            SizedBox(height: 32.h),
            _buildPhoneNumberInput(),
            SizedBox(height: 16.h),
            _buildPasswordInput(),
            SizedBox(height: 16.h),
            _buildReferralCodeSection(),
            SizedBox(height: 24.h),
            _buildAgreementCheckboxes(),
            SizedBox(height: 24.h),
            _buildRegisterButton(),
            SizedBox(height: 24.h),
            _buildLoginLinks(),
            SizedBox(height: 32.h),
            _buildOrDivider(),
            SizedBox(height: 24.h),
            _buildSocialLoginButtons(),
            SizedBox(height: 80.h),
          ],
        ),
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
        border: Border.all(color: appTheme.colorFF478A),
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
          ),
          SizedBox(width: 8.h),
          Text(
            '+55',
            style: TextStyleHelper.instance.body12BoldArial
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
            child: Obx(() => TextFormField(
                  controller: controller.phoneController,
                  style: TextStyleHelper.instance.body14BoldArial
                      .copyWith(color: appTheme.whiteCustom),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    isDense: true,
                    contentPadding: EdgeInsets.zero,
                  ),
                  keyboardType: TextInputType.phone,
                  onChanged: (value) => controller.phoneNumber.value = value,
                )),
          ),
          Text(
            '|',
            style: TextStyleHelper.instance.body14BoldArial
                .copyWith(color: appTheme.colorFF85D4),
          ),
          SizedBox(width: 12.h),
          GestureDetector(
            onTap: () => controller.onEditPhonePressed(),
            child: CustomImageView(
              imagePath: ImageConstant.img7,
              height: 18.h,
              width: 15.h,
            ),
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
      onChanged: (value) => controller.password.value = value,
      onTrailingIconTap: () => controller.togglePasswordVisibility(),
    );
  }

  Widget _buildReferralCodeSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Enter Referral / Promo Code',
          style: TextStyleHelper.instance.body14MediumArial
              .copyWith(color: appTheme.whiteCustom),
        ),
        GestureDetector(
          onTap: () => controller.onReferralDropdownPressed(),
          child: CustomImageView(
            imagePath: ImageConstant.imgIcon,
            height: 20.h,
            width: 20.h,
          ),
        ),
      ],
    );
  }

  Widget _buildAgreementCheckboxes() {
    return Column(
      children: [
        _buildCheckboxRow(
          isChecked: controller.agreeToTerms,
          onTap: () => controller.toggleTermsAgreement(),
          text: 'I agree to the',
          highlightedText:
              ' User Agreement & confirm I am at least 18 years old',
        ),
        SizedBox(height: 16.h),
        _buildCheckboxRow(
          isChecked: controller.agreeToMarketing,
          onTap: () => controller.toggleMarketingAgreement(),
          text: 'I agree to receive marketing promotions from Jbet88',
          highlightedText: '',
        ),
      ],
    );
  }

  Widget _buildCheckboxRow({
    required RxBool isChecked,
    required VoidCallback onTap,
    required String text,
    required String highlightedText,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 16.h,
            height: 16.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF2528,
              border: Border.all(color: appTheme.colorFF4B55),
              borderRadius: BorderRadius.circular(2.h),
            ),
            child: Obx(() => (isChecked.value ?? false)
                ? Center(
                    child: CustomImageView(
                      imagePath: ImageConstant.imgVectorLightGreenA700,
                      height: 16.h,
                      width: 11.h,
                    ),
                  )
                : SizedBox()),
          ),
          SizedBox(width: 22.h),
          Expanded(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: text,
                    style: TextStyleHelper.instance.body14BoldArial
                        .copyWith(color: appTheme.colorFF8089),
                  ),
                  if (highlightedText.isNotEmpty)
                    TextSpan(
                      text: highlightedText,
                      style: TextStyleHelper.instance.body14BoldArial
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRegisterButton() {
    return Container(
      width: double.maxFinite,
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
      child: ElevatedButton(
        onPressed: () => controller.onRegisterPressed(),
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.transparentCustom,
          shadowColor: appTheme.transparentCustom,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.h),
          ),
        ),
        child: Text(
          'Register',
          style: TextStyleHelper.instance.title16BoldArial
              .copyWith(color: appTheme.colorFF8089),
        ),
      ),
    );
  }

  Widget _buildLoginLinks() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => controller.onForgotPasswordPressed(),
          child: Text(
            'Forgot password',
            style: TextStyleHelper.instance.body12BlackArial
                .copyWith(color: appTheme.colorFF85D4),
          ),
        ),
        GestureDetector(
          onTap: () => controller.onLoginPressed(),
          child: Text(
            'Login',
            style: TextStyleHelper.instance.body14BoldArial
                .copyWith(color: appTheme.colorFFC0C8),
          ),
        ),
      ],
    );
  }

  Widget _buildOrDivider() {
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
            style: TextStyleHelper.instance.body12BoldArial
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

  Widget _buildSocialLoginButtons() {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 42.h,
            decoration: BoxDecoration(
              color: appTheme.whiteCustom,
              borderRadius: BorderRadius.circular(8.h),
            ),
            child: ElevatedButton(
              onPressed: () => controller.onGoogleLoginPressed(),
              style: ElevatedButton.styleFrom(
                backgroundColor: appTheme.whiteCustom,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.h),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16.h),
              ),
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
                    'Google',
                    style: TextStyleHelper.instance.body12BoldArial
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 16.h),
        Expanded(
          child: Container(
            height: 42.h,
            decoration: BoxDecoration(
              color: appTheme.whiteCustom,
              borderRadius: BorderRadius.circular(8.h),
            ),
            child: ElevatedButton(
              onPressed: () => controller.onTelegramLoginPressed(),
              style: ElevatedButton.styleFrom(
                backgroundColor: appTheme.whiteCustom,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.h),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16.h),
              ),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup12024,
                    height: 28.h,
                    width: 28.h,
                  ),
                  SizedBox(width: 12.h),
                  Text(
                    'Telegram',
                    style: TextStyleHelper.instance.body12BoldArial
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
